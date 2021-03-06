// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.github.msl521.met.domain;

import com.github.msl521.met.domain.OfficeVisitDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OfficeVisitIntegrationTest_Roo_IntegrationTest {
    
    declare @type: OfficeVisitIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: OfficeVisitIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: OfficeVisitIntegrationTest: @Transactional;
    
    @Autowired
    private OfficeVisitDataOnDemand OfficeVisitIntegrationTest.dod;
    
    @Test
    public void OfficeVisitIntegrationTest.testCountOfficeVisits() {
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to initialize correctly", dod.getRandomOfficeVisit());
        long count = com.github.msl521.met.domain.OfficeVisit.countOfficeVisits();
        org.junit.Assert.assertTrue("Counter for 'OfficeVisit' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void OfficeVisitIntegrationTest.testFindOfficeVisit() {
        com.github.msl521.met.domain.OfficeVisit obj = dod.getRandomOfficeVisit();
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to provide an identifier", id);
        obj = com.github.msl521.met.domain.OfficeVisit.findOfficeVisit(id);
        org.junit.Assert.assertNotNull("Find method for 'OfficeVisit' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'OfficeVisit' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void OfficeVisitIntegrationTest.testFindAllOfficeVisits() {
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to initialize correctly", dod.getRandomOfficeVisit());
        long count = com.github.msl521.met.domain.OfficeVisit.countOfficeVisits();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'OfficeVisit', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<com.github.msl521.met.domain.OfficeVisit> result = com.github.msl521.met.domain.OfficeVisit.findAllOfficeVisits();
        org.junit.Assert.assertNotNull("Find all method for 'OfficeVisit' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'OfficeVisit' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void OfficeVisitIntegrationTest.testFindOfficeVisitEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to initialize correctly", dod.getRandomOfficeVisit());
        long count = com.github.msl521.met.domain.OfficeVisit.countOfficeVisits();
        if (count > 20) count = 20;
        java.util.List<com.github.msl521.met.domain.OfficeVisit> result = com.github.msl521.met.domain.OfficeVisit.findOfficeVisitEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'OfficeVisit' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'OfficeVisit' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void OfficeVisitIntegrationTest.testFlush() {
        com.github.msl521.met.domain.OfficeVisit obj = dod.getRandomOfficeVisit();
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to provide an identifier", id);
        obj = com.github.msl521.met.domain.OfficeVisit.findOfficeVisit(id);
        org.junit.Assert.assertNotNull("Find method for 'OfficeVisit' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyOfficeVisit(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'OfficeVisit' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void OfficeVisitIntegrationTest.testMerge() {
        com.github.msl521.met.domain.OfficeVisit obj = dod.getRandomOfficeVisit();
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to provide an identifier", id);
        obj = com.github.msl521.met.domain.OfficeVisit.findOfficeVisit(id);
        boolean modified =  dod.modifyOfficeVisit(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        com.github.msl521.met.domain.OfficeVisit merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'OfficeVisit' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void OfficeVisitIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to initialize correctly", dod.getRandomOfficeVisit());
        com.github.msl521.met.domain.OfficeVisit obj = dod.getNewTransientOfficeVisit(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'OfficeVisit' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'OfficeVisit' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void OfficeVisitIntegrationTest.testRemove() {
        com.github.msl521.met.domain.OfficeVisit obj = dod.getRandomOfficeVisit();
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'OfficeVisit' failed to provide an identifier", id);
        obj = com.github.msl521.met.domain.OfficeVisit.findOfficeVisit(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'OfficeVisit' with identifier '" + id + "'", com.github.msl521.met.domain.OfficeVisit.findOfficeVisit(id));
    }
    
}
