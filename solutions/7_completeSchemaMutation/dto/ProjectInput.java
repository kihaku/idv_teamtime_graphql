package de.idv.teamtime.graphql.dto;

import java.math.BigDecimal;
import java.util.List;

public class ProjectInput {

    private String name;
    private Long personHours;
    private BigDecimal hourlyRate;
    private Long customerId;
    private List<Long> employeeIds;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPersonHours() {
        return personHours;
    }

    public void setPersonHours(Long personHours) {
        this.personHours = personHours;
    }

    public BigDecimal getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(BigDecimal hourlyRate) {
        this.hourlyRate = hourlyRate;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public List<Long> getEmployeeIds() {
        return employeeIds;
    }

    public void setEmployeeIds(List<Long> employeeIds) {
        this.employeeIds = employeeIds;
    }
}
