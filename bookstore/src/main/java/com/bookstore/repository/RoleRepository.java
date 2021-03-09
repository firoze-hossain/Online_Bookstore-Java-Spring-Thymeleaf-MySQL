package com.bookstore.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;

import com.bookstore.domain.security.Role;

@Transactional
public interface RoleRepository extends CrudRepository<Role, Long>{
Role findByName(String name);
}
