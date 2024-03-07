package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.Login;

@Repository
public interface IdEmployeeRepository extends JpaRepository <Login, Integer> {

}
