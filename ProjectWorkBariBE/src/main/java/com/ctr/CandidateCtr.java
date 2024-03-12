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
		return"homePage";
	}
	
// --------------------------------------------------------------------------------------- ADD
	
	@GetMapping("/preAddCandidate")
	public String preAdd() {
		return"addCandidate";//creare una jsp di preaggiunta
	}
	
	@PostMapping("/addCandidate")
	public String add(@ModelAttribute Candidate candidate) {
		
		candidateRep.save(candidate);
		
		return"success";//creare una jsp di aggiunta candidate
	}

// --------------------------------------------------------------------------------------- FIND by ID
	
	@GetMapping("/prefindByIdCandidate")
	public String prefindById() {
		return"findByIdCandidate";
	}
	
	@GetMapping("/findByIdCandidate")
	public String findById(Model model, Integer idCandidate) {
		
		Candidate candidate=new Candidate();
		candidate=candidateRep.findById(idCandidate).get();
		model.addAttribute("Candidate", candidate);
		
		return "resCandidate";//creare e collegare una jsp di successo ricerca
	}
	
// --------------------------------------------------------------------------------------- UPDATE
	
	@PostMapping("/putCandidate")
	public String put(Candidate candidate, Model model) {
		
		candidateRep.save(candidate);
		
		return "";//creare e collegare una jsp di successo aggiorna
	}
	
// --------------------------------------------------------------------------------------- DELETE
	@GetMapping("/deleteCandidate")
	public String delete(Integer idCandidate, Model model) {
		
		candidateRep.deleteById(idCandidate);
		
		return "";//creare e collegare una jsp di successo elimina
	}
	
// --------------------------------------------------------------------------------------- FIND BY PHONE
	
	@GetMapping("/prefindByPhone")
	public String prefindByPhone() {
		return"findByPhone";
	}
	
	@GetMapping("/findByPhone")
	public String findByPhone(Model model, BigInteger phone) {
		
		List <Candidate> phoneList = (List <Candidate>) candidateRep.findByPhone(phone);
		model.addAttribute("Candidate", phoneList);
		
		return "resCandidate";
	}
	
<<<<<<< HEAD
// --------------------------------------------------------------------------------------- FIND BY SURNAME	
=======
// --------------------------------------------------------------------------------------- FIND BY SURNAME
>>>>>>> 493777cd7c47431e303be480f45930eb52c25ecd
	
	@GetMapping("/prefindBySurname")
	public String prefindBySurname() {
		return"findBySurname";
	}
	
	@PostMapping("/findBySurname")
	public String findBySurname(Model model, String surname) {
		
		List<Candidate> listSurname=(List<Candidate>)candidateRep.findBySurname(surname);
		model.addAttribute("surnameFound", listSurname);
		
		return"resCandidate";
	}
	
<<<<<<< HEAD
// --------------------------------------------------------------------------------------- FIND BY CITY
=======
// ---------------------------------------------------------------------------------------- FIND BY CITY
>>>>>>> 493777cd7c47431e303be480f45930eb52c25ecd
	
	@GetMapping("/prefindByCity")
	public String prefindByCity() {
		return"findByCity";
	}
	
	@PostMapping("/findByCity")
	public String findByCity(Model model, String city) {
		
		List<Candidate> listCities=(List<Candidate>)candidateRep.findByCity(city);
		model.addAttribute("citiesFound", listCities);
		
		return"resCandidate";
	}

// --------------------------------------------------------------------------------------- FIND BY SKILL
	
	@GetMapping("/prefindBySkill")
	public String prefindBySkill() {
		return"findBySkill";
	}
	
	@PostMapping("/findBySkill")
	public String findBySkill(Model model, String title) {
		
		List<Candidate> skillList = (List<Candidate>) candidateRep.findByCandidateSkills_Skill_Title(title);
		model.addAttribute("skill", skillList);
		
		return"resCandidate";
	}

// ----------------------------------------------------------------------------- FIND BY ID EDUCATION TYPE
	
	@GetMapping("/prefindByIdEducationDegreeType")
	public String prefindByIdEducationDegreeType() {
		return"findByIdEducationDegreeType";
	}
	
	@PostMapping("/findByIdEducationDegreeType")
	public String findByIdEducationDegreeType(Model model, Integer idEducationType) {
		
		List<Candidate> degreeTypeList = (List<Candidate>) candidateRep.findByEducations_EducationDegreeType_IdEducationDegreeType(idEducationType);
		model.addAttribute("degreeType", degreeTypeList);
		
		return"resCandidate";
	}
}
