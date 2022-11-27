package de.idv.teamtime.graphql.dto;

import de.idv.teamtime.graphql.entity.Employee;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

public class DepartmentDTO {

    private final Long id;
    private final String name;
    private final Employee head;

    public DepartmentDTO(Long id, String name, Employee head) {
        this.id = id;
        this.name = name;
        this.head = head;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Employee getHead() {
        return head;
    }
}
