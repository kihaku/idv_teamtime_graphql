package de.idv.teamtime.graphql.repository;

import de.idv.teamtime.graphql.entity.Department;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartmentRepository extends JpaRepository<Department, Long> {

}
