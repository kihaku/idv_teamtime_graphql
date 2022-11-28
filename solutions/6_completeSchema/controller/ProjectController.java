package de.idv.teamtime.graphql.controller;

import de.idv.teamtime.graphql.entity.Project;
import de.idv.teamtime.graphql.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class ProjectController {

    private final ProjectRepository projectRepository;

    @Autowired
    public ProjectController(ProjectRepository projectRepository) {
        this.projectRepository = projectRepository;
    }

    @QueryMapping
    List<Project> allProjects() {
        return projectRepository.findAll();
    }

    @QueryMapping
    public Project project(@Argument Long projectId) {
        return projectRepository.findById(projectId).orElse(null);
    }
}
