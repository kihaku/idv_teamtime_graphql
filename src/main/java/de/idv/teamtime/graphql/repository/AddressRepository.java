package de.idv.teamtime.graphql.repository;

import de.idv.teamtime.graphql.entity.Address;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AddressRepository extends JpaRepository<Address, Long> {

}
