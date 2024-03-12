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
		return"";//creare una jsp di ricerca per idCandidate
	}
	
	@GetMapping("/findByIdCandidate")
	public String findById(Model model, Integer idCandidate) {
		
		Candidate candidate=new Candidate();
		candidate=candidateRep.findById(idCandidate).get();
		model.addAttribute("Candidate", candidate);
		
		return "";//creare e collegare una jsp di successo ricerca
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
		return"findByPhone";//creare una jsp di ricerca per idCandidate
	}
	
	@GetMapping("/findByPhone")
	public String findByPhone(Model model, BigInteger phone) {
		
		List <Candidate> phoneList = (List <Candidate>) candidateRep.findByPhone(phone);
		model.addAttribute("Candidate", phoneList);
		
		return "resCandidate";
	}
}
