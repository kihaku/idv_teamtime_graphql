package de.idv.teamtime.graphql.repository;

import de.idv.teamtime.graphql.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {

    @Query("SELECT e FROM Employee e, Department d WHERE d.id = :depId AND e MEMBER OF d.employees")
    List<Employee> findAllByDepartmentId(@Param("depId") Long departmentId);

}
