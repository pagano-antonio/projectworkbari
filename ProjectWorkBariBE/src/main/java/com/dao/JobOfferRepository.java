package com.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.JobOffer;
import com.model.Skill;

@Repository
public interface JobOfferRepository extends JpaRepository<JobOffer, Integer> {
	
	List<JobOffer> findByTitleContaining(String title);
	List<JobOffer> findByStartDateAfterAndEndDateBefore(Date startDate, Date endDate);
	List<JobOffer> findByCompanyClient_idCompanyClient(Integer idCompanyClient);
	List<JobOffer> findByMinRalAfterAndMaxRalBefore(Integer minRal, Integer maxRal);
	List<JobOffer> findByContractType_idContractType(Integer idContractType);
	List<JobOffer> findByJobOfferSkills_Skill_TitleContaining(String title);
	List<JobOffer> findByJobOfferSkills_Skill(Skill skill);
}
