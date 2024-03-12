package com.dao;

import java.math.BigInteger;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.Candidate;

@Repository
public interface CanditateRepository extends JpaRepository<Candidate, Integer> {
	
	List<Candidate> findBySurname(String surname);
	List<Candidate> findByCity(String city);
	List<Candidate> findByPhone(BigInteger phone);
	List<Candidate> findByCandidateSkills_Skill_Description(String description);
	List<Candidate> findByEducations_EducationDegreeType_IdEducationDegreeType(Integer idEducationType);
	List<Candidate> findByJobInterviews_StateJobInterview_IdStateJobInterview(Integer idStateJobInterview);
	List<Candidate> findByJobInterviews_Outcome(Integer outcome);
	List<Candidate> findByWorkExperiences_Company(String company);
}
