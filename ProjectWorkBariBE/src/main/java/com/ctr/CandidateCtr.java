package com.ctr;

import java.math.BigInteger;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CanditateRepository;
import com.model.Candidate;

@Controller
@RequestMapping("CandidateCtr")
public class CandidateCtr {
	@Autowired
	private CanditateRepository candidateRep;

	@GetMapping("/homePage")
	public String homePage() {
		return "homePage";
	}

// --------------------------------------------------------------------------------------- CHOOSE KEYWORD

	@GetMapping("/chooseFindKeyword")
	public String chooseFindKeyword(String find) {
		String resultPage = "";

		switch (find) {
		case "surname":
			resultPage = this.prefindBySurname();
			break;

		case "city":
			resultPage = this.prefindByCity();
			break;

		case "phone":
			resultPage = this.prefindByPhone();
			break;

		case "skill":
			resultPage = this.prefindBySkill();
			break;

		case "educationDegreeType":
			resultPage = this.prefindByIdEducationDegreeType();
			break;

		case "jobInterview":
			resultPage = this.prefindByJobInterviews_StateJobInterview_IdStateJobInterview();
			break;

		case "outcome":
			resultPage = this.prefindByJobInterviews_Outcome();
			break;

		case "workExperiences":
			resultPage = this.prefindByWorkExperiences_Company();
			break;
		}
		return resultPage;
	}

// --------------------------------------------------------------------------------------- ADD

	@GetMapping("/preAddCandidate")
	public String preAdd() {
		return "addCandidate";
	}

	@PostMapping("/addCandidate")
	public String add(@ModelAttribute Candidate candidate, Model model) {
		
	
		candidate = candidateRep.save(candidate);
		System.out.println(candidate.getIdCandidate());
		model.addAttribute("candidate", candidate);

		return "successAddCandidate";
	}

// --------------------------------------------------------------------------------------- FIND by ID

	@GetMapping("/prefindByIdCandidate")
	public String prefindById() {
		return "findByIdCandidate";
	}

	@GetMapping("/findByIdCandidate")
	public String findById(Model model, Integer idCandidate) {

		Candidate candidate = new Candidate();
		candidate = candidateRep.findById(idCandidate).get();
		model.addAttribute("CandidateList", candidate);

		return "resCandidate";
	}

// --------------------------------------------------------------------------------------- UPDATE

	@GetMapping("/prePutCandidate")
	public String prePutCandidate(Integer idCandidate, Model model) {
		Candidate candidate = candidateRep.findById(idCandidate).get();
		model.addAttribute("CandidateList", candidate);

		return "putCandidate";
	}

	@PostMapping("/putCandidate")
	public String put(Candidate candidate, Model model) {

		candidateRep.save(candidate);

		return "success";
	}

// --------------------------------------------------------------------------------------- DELETE
	@GetMapping("/deleteCandidate")
	public String delete(Integer idCandidate, Model model) {

		candidateRep.deleteById(idCandidate);
		return "success";
	}

// --------------------------------------------------------------------------------------- FIND BY PHONE

	@GetMapping("/prefindByPhone")
	public String prefindByPhone() {
		return "findByPhone";
	}

	@GetMapping("/findByPhone")
	public String findByPhone(Model model, BigInteger phone) {

		List<Candidate> phoneList = (List<Candidate>) candidateRep.findByPhone(phone);
		model.addAttribute("CandidateList", phoneList);

		return "resCandidate";
	}

// --------------------------------------------------------------------------------------- FIND BY SURNAME	

	@GetMapping("/prefindBySurname")
	public String prefindBySurname() {
		return "findBySurname";
	}

	@PostMapping("/findBySurname")
	public String findBySurname(Model model, String surname) {

		List<Candidate> surnameList = (List<Candidate>) candidateRep.findBySurname(surname);
		model.addAttribute("CandidateList", surnameList);

		return "resCandidate";
	}

// --------------------------------------------------------------------------------------- FIND BY CITY

	@GetMapping("/prefindByCity")
	public String prefindByCity() {
		return "findByCity";
	}

	@PostMapping("/findByCity")
	public String findByCity(Model model, String city) {

		List<Candidate> citiesList = (List<Candidate>) candidateRep.findByCity(city);
		model.addAttribute("CandidateList", citiesList);

		return "resCandidate";
	}

// --------------------------------------------------------------------------------------- FIND BY SKILL

	@GetMapping("/prefindBySkill")
	public String prefindBySkill() {
		return "findBySkill";
	}

	@PostMapping("/findBySkill")
	public String findBySkill(Model model, String title) {

		List<Candidate> skillList = (List<Candidate>) candidateRep.findByCandidateSkills_Skill_Title(title);
		model.addAttribute("CandidateList", skillList);

		return "resCandidate";
	}

// ----------------------------------------------------------------------------- FIND BY ID EDUCATION TYPE

	@GetMapping("/prefindByIdEducationDegreeType")
	public String prefindByIdEducationDegreeType() {
		return "findByIdEducationDegreeType";
	}

	@PostMapping("/findByIdEducationDegreeType")
	public String findByIdEducationDegreeType(Model model, Integer idEducationDegreeType) {

		List<Candidate> degreeTypeList = (List<Candidate>) candidateRep
				.findByEducations_EducationDegreeType_IdEducationDegreeType(idEducationDegreeType);
		model.addAttribute("CandidateList", degreeTypeList);

		return "resCandidate";
	}

// ----------------------------------------------------------------------- FIND BY COMPANY

	@GetMapping("/prefindByWorkExperiences_Company")
	public String prefindByWorkExperiences_Company() {
		return "findByCompany";
	}

	@PostMapping("/findByCompany")
	public String findByWorkExperiences_Company(Model model, String company) {

		List<Candidate> listCompanies = (List<Candidate>) candidateRep.findByWorkExperiences_Company(company);
		model.addAttribute("CandidateList", listCompanies);

		return "resCandidate";
	}

// ---------------------------------------- FIND BY ID STATE JOB INTERVIEW

	@GetMapping("/prefindByJobInterviews_StateJobInterview_IdStateJobInterview")
	public String prefindByJobInterviews_StateJobInterview_IdStateJobInterview() {
		return "findByIdStateJobInterview";

	}

	@PostMapping("/findByIdStateJobInterview")
	public String findByJobInterviews_StateJobInterview_IdStateJobInterview(Model model, Integer idStateJobInterview) {

		List<Candidate> listIdStateJobInterviews = (List<Candidate>) candidateRep
				.findByJobInterviews_StateJobInterview_IdStateJobInterview(idStateJobInterview);
		model.addAttribute("CandidateList", listIdStateJobInterviews);

		return "resCandidate";
	}
// --------------------------------------------------------------------------------- FIND BY OUTCOMES

	@GetMapping("/prefindByJobInterviews_Outcome")
	public String prefindByJobInterviews_Outcome() {
		return "findByOutcome";
	}

	@PostMapping("/findByOutcome")
	public String findByJobInterviews_Outcome(Model model, Integer outcome) {

		List<Candidate> listOutcomes = (List<Candidate>) candidateRep.findByJobInterviews_Outcome(outcome);
		model.addAttribute("CandidateList", listOutcomes);

		return "resCandidate";
	}
	
// --------------------------------------------------------------------------------- VIEW SKILL

	@GetMapping("/resCandidateSkill")
	public String resCandidateSkill(Model model, Integer idCandidate) {

		Candidate candidate = new Candidate();
		candidate = candidateRep.findById(idCandidate).get();
		model.addAttribute("Candidate", candidate);
		model.addAttribute("CandidateSkillList", candidate.getCandidateSkills());

		return "resCandidateSkill";
	}
	
// --------------------------------------------------------------------------------- VIEW WORK EXPERIENCE

	@GetMapping("/resWorkExperience")
	public String resWorkExperience (Model model, Integer idCandidate) {

		Candidate candidate = new Candidate();
		candidate = candidateRep.findById(idCandidate).get();
		model.addAttribute("Candidate", candidate);
		model.addAttribute("WorkExperienceList", candidate.getWorkExperiences());

		return "resWorkExperience";
	}
		
// --------------------------------------------------------------------------------- VIEW JOB INTERVIEWS

	@GetMapping("/resJobInterviews")
	public String resJobInterviews(Model model, Integer idCandidate) {

		Candidate candidate = new Candidate();
		candidate = candidateRep.findById(idCandidate).get();
		model.addAttribute("Candidate", candidate);
		model.addAttribute("JobInterviewsList", candidate.getJobInterviews());

		return "resJobInterviews";
	}
	
// --------------------------------------------------------------------------------- VIEW EDUCATION

	@GetMapping("/resEducation")
	public String resEducation(Model model, Integer idCandidate) {

		Candidate candidate = new Candidate();
		candidate = candidateRep.findById(idCandidate).get();
		model.addAttribute("Candidate", candidate);
		model.addAttribute("EducationList", candidate.getEducations());

		return "resEducation";
	}
}
