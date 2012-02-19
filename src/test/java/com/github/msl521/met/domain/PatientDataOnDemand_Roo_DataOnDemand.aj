// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.github.msl521.met.domain;

import com.github.msl521.met.domain.Gender;
import com.github.msl521.met.domain.Patient;
import java.lang.String;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect PatientDataOnDemand_Roo_DataOnDemand {
    
    declare @type: PatientDataOnDemand: @Component;
    
    private Random PatientDataOnDemand.rnd = new SecureRandom();
    
    private List<Patient> PatientDataOnDemand.data;
    
    public Patient PatientDataOnDemand.getNewTransientPatient(int index) {
        Patient obj = new Patient();
        setComment(obj, index);
        setFirstName(obj, index);
        setGender(obj, index);
        setLastName(obj, index);
        setMiddleName(obj, index);
        setNickname(obj, index);
        setPersonalTitle(obj, index);
        setSuffix(obj, index);
        return obj;
    }
    
    public void PatientDataOnDemand.setComment(Patient obj, int index) {
        String comment = "comment_" + index;
        obj.setComment(comment);
    }
    
    public void PatientDataOnDemand.setFirstName(Patient obj, int index) {
        String firstName = "firstName_" + index;
        obj.setFirstName(firstName);
    }
    
    public void PatientDataOnDemand.setGender(Patient obj, int index) {
        Gender gender = Gender.class.getEnumConstants()[0];
        obj.setGender(gender);
    }
    
    public void PatientDataOnDemand.setLastName(Patient obj, int index) {
        String lastName = "lastName_" + index;
        obj.setLastName(lastName);
    }
    
    public void PatientDataOnDemand.setMiddleName(Patient obj, int index) {
        String middleName = "middleName_" + index;
        obj.setMiddleName(middleName);
    }
    
    public void PatientDataOnDemand.setNickname(Patient obj, int index) {
        String nickname = "nickname_" + index;
        obj.setNickname(nickname);
    }
    
    public void PatientDataOnDemand.setPersonalTitle(Patient obj, int index) {
        String personalTitle = "personalTitle_" + index;
        obj.setPersonalTitle(personalTitle);
    }
    
    public void PatientDataOnDemand.setSuffix(Patient obj, int index) {
        String suffix = "suffix_" + index;
        obj.setSuffix(suffix);
    }
    
    public Patient PatientDataOnDemand.getSpecificPatient(int index) {
        init();
        if (index < 0) index = 0;
        if (index > (data.size() - 1)) index = data.size() - 1;
        Patient obj = data.get(index);
        return Patient.findPatient(obj.getId());
    }
    
    public Patient PatientDataOnDemand.getRandomPatient() {
        init();
        Patient obj = data.get(rnd.nextInt(data.size()));
        return Patient.findPatient(obj.getId());
    }
    
    public boolean PatientDataOnDemand.modifyPatient(Patient obj) {
        return false;
    }
    
    public void PatientDataOnDemand.init() {
        data = Patient.findPatientEntries(0, 10);
        if (data == null) throw new IllegalStateException("Find entries implementation for 'Patient' illegally returned null");
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<com.github.msl521.met.domain.Patient>();
        for (int i = 0; i < 10; i++) {
            Patient obj = getNewTransientPatient(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> it = e.getConstraintViolations().iterator(); it.hasNext();) {
                    ConstraintViolation<?> cv = it.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}