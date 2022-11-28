package de.idv.teamtime.graphql.controller;

import de.idv.teamtime.graphql.entity.Customer;
import de.idv.teamtime.graphql.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class CustomerController {

    private final CustomerRepository customerRepository;

    @Autowired
    public CustomerController(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @QueryMapping
    List<Customer> allCustomers() {
        return customerRepository.findAll();
    }

    @QueryMapping
    public Customer customer(@Argument Long customerId) {
        return customerRepository.findById(customerId).orElse(null);
    }
}
