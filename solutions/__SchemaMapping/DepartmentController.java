package de.idv.teamtime.graphql.controller;

import de.idv.teamtime.graphql.dto.DepartmentDTO;
import de.idv.teamtime.graphql.entity.Department;
import de.idv.teamtime.graphql.entity.Employee;
import de.idv.teamtime.graphql.repository.DepartmentRepository;
import de.idv.teamtime.graphql.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.graphql.data.method.annotation.SchemaMapping;
import org.springframework.stereotype.Controller;

import java.util.List;
import java.util.stream.Collectors;

@Controller
public class DepartmentController {

    private final DepartmentRepository departmentRepository;
    private final EmployeeRepository employeeRepository;

    @Autowired
    public DepartmentController(DepartmentRepository departmentRepository, EmployeeRepository employeeRepository) {
        this.departmentRepository = departmentRepository;
        this.employeeRepository = employeeRepository;
    }

    @QueryMapping
    List<DepartmentDTO> allDepartments() {
        final List<Department> departments = departmentRepository.findAll();
        return departments.stream().map(d -> new DepartmentDTO(d.getId(), d.getName(), d.getHead())).collect(Collectors.toList());
    }

    @SchemaMapping(typeName = "Department", field = "employees")
    List<Employee> employees(DepartmentDTO departmentDTO) {
        System.out.println("find employees for department...");
        return employeeRepository.findAllByDepartmentId(departmentDTO.getId());
    }
}
