package de.idv.teamtime.graphql.controller;

import de.idv.teamtime.graphql.dto.ProjectInput;
import de.idv.teamtime.graphql.entity.Customer;
import de.idv.teamtime.graphql.entity.Employee;
import de.idv.teamtime.graphql.entity.Project;
import de.idv.teamtime.graphql.repository.CustomerRepository;
import de.idv.teamtime.graphql.repository.EmployeeRepository;
import de.idv.teamtime.graphql.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class ProjectController {

    private final ProjectRepository projectRepository;
    private final CustomerRepository customerRepository;
    private final EmployeeRepository employeeRepository;

    @Autowired
    public ProjectController(ProjectRepository projectRepository, CustomerRepository customerRepository, EmployeeRepository employeeRepository) {
        this.projectRepository = projectRepository;
        this.customerRepository = customerRepository;
        this.employeeRepository = employeeRepository;
    }

    @QueryMapping
    List<Project> allProjects() {
        return projectRepository.findAll();
    }

    @QueryMapping
    public Project project(@Argument Long projectId) {
        return projectRepository.findById(projectId).orElse(null);
    }

    @MutationMapping
    public Project createProject(@Argument ProjectInput input) {
        final Customer customer = this.customerRepository.findById(input.getCustomerId()).orElse(null);
        final List<Employee> employees = this.employeeRepository.findAllById(input.getEmployeeIds());
        final Project project = new Project();
        project.setName(input.getName());
        project.setPersonHours(input.getPersonHours());
        project.setHourlyRate(input.getHourlyRate());
        project.setCustomer(customer);
        project.setEmployees(employees);
        return projectRepository.save(project);
    }
}
