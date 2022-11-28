package de.idv.teamtime.graphql.repository;

import de.idv.teamtime.graphql.entity.Project;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectRepository extends JpaRepository<Project, Long> {

}
