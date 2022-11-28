package de.idv.teamtime.graphql.controller;

import de.idv.teamtime.graphql.entity.Department;
import de.idv.teamtime.graphql.repository.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class DepartmentController {

    private final DepartmentRepository departmentRepository;

    @Autowired
    public DepartmentController(DepartmentRepository departmentRepository) {
        this.departmentRepository = departmentRepository;
    }

    @QueryMapping
    List<Department> allDepartments() {
        return departmentRepository.findAll();
    }

    @QueryMapping
    public Department department(@Argument Long departmentId) {
        return departmentRepository.findById(departmentId).orElse(null);
    }
}
