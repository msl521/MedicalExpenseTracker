// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.github.msl521.met.domain;

import com.github.msl521.met.domain.Patient;
import com.github.msl521.met.domain.Provider;

privileged aspect OfficeVisit_Roo_JavaBean {
    
    public Patient OfficeVisit.getPatient() {
        return this.patient;
    }
    
    public void OfficeVisit.setPatient(Patient patient) {
        this.patient = patient;
    }
    
    public Provider OfficeVisit.getProvider() {
        return this.provider;
    }
    
    public void OfficeVisit.setProvider(Provider provider) {
        this.provider = provider;
    }
    
}