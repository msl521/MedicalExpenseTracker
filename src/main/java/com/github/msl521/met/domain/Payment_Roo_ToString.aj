// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.github.msl521.met.domain;

import java.lang.String;

privileged aspect Payment_Roo_ToString {
    
    public String Payment.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Amount: ").append(getAmount()).append(", ");
        sb.append("CheckNumber: ").append(getCheckNumber()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("OfficeVisit: ").append(getOfficeVisit()).append(", ");
        sb.append("Payee: ").append(getPayee()).append(", ");
        sb.append("PaymentDate: ").append(getPaymentDate()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
