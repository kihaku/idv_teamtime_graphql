package de.idv.teamtime.graphql.repository;

import de.idv.teamtime.graphql.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
