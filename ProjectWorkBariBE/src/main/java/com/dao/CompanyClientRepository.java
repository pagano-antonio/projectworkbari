package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.CompanyClient;

@Repository
public interface CompanyClientRepository extends JpaRepository<CompanyClient , Integer> {
	
	List<CompanyClient> findByCityContaining(String city);
	List<CompanyClient> findByNameContaining(String name);

}
