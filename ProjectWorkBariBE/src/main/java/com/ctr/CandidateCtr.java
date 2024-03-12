package com.ctr;

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
	
	@GetMapping("/preAddCandidate")
	public String preAdd() {
		return"addCandidate";//creare una jsp di preaggiunta
	}
	
	@PostMapping("/addCandidate")
	public String add(@ModelAttribute Candidate candidate) {
		
		candidateRep.save(candidate);
		
		return"success";//creare una jsp di aggiunta candidate
	}
	
	@GetMapping("/prefindByIdCandidate")
	public String prefindById() {
		return"";//creare una jsp di ricerca per idCandidate
	}
	
	@GetMapping("/findByIdCandidate")
	public String findById(Model model, Integer idCandidate) {
		
		Candidate candidate=new Candidate();
		candidate=candidateRep.findById(idCandidate).get();
		model.addAttribute("Candidate", candidate);
		
		return "";//creare e collegare una jsp di successo ricerca
	}
	
	@PostMapping("/putCandidate")
	public String put(Candidate candidate, Model model) {
		
		candidateRep.save(candidate);
		
		return "";//creare e collegare una jsp di successo aggiorna
	}
	
	@GetMapping("/deleteCandidate")
	public String delete(Integer idCandidate, Model model) {
		
		candidateRep.deleteById(idCandidate);
		
		return "";//creare e collegare una jsp di successo elimina
	}
	
	@GetMapping("/prefindBySurname")
	public String prefindBySurname() {
		return"findBySurname";//creare e collegare jsp di ricerca per surname
	}
	
	@PostMapping("/findBySurname")
	public String findBySurname(Model model, String surname) {
		
		List<Candidate> listSurname=(List<Candidate>)candidateRep.findBySurname(surname);
		model.addAttribute("surnameFound", listSurname);
		
		return"resCandidate";//creare e collegare jsp
	}
	
	@GetMapping("/prefindByCity")
	public String prefindByCity() {
		return"findByCity";//creare e collegare jsp di ricerca per city
	}
	
	@PostMapping("/findByCity")
	public String findByCity(Model model, String city) {
		
		List<Candidate> listCities=(List<Candidate>)candidateRep.findByCity(city);
		model.addAttribute("citiesFound", listCities);
		
		return"resCandidate";//creare e collegare jsp
	}

}
