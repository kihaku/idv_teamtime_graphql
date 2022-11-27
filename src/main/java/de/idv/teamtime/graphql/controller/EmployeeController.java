package de.idv.teamtime.graphql.controller;

import de.idv.teamtime.graphql.entity.Employee;
import de.idv.teamtime.graphql.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class EmployeeController {

    private final EmployeeRepository employeeRepository;

    @Autowired
    public EmployeeController(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    @QueryMapping
    public List<Employee> allEmployees() {
        return employeeRepository.findAll();
    }

    @QueryMapping
    public Employee employee(@Argument Long employeeId) {
        return employeeRepository.findById(employeeId).orElse(null);
    }
}
