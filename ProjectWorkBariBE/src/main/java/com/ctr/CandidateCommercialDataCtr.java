package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateCommercialDataRepository;
import com.model.CandidateCommercialData;

@Controller
@RequestMapping("CandidateCommercialDataCtr")
public class CandidateCommercialDataCtr {
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;
	
	@GetMapping("/homePage")
	public String homePage() {
		return"homePage";
	}
	
	@GetMapping("/preAddCandidateCommercialData")
	public String preAdd() {
		return"";//creare e collegare una jsp di preaggiunta
	}
	
	@PostMapping("/addCandidateCommercialData")
	public String add(@ModelAttribute CandidateCommercialData candidateCommercialData) {
		
		candidateCommercialDataRep.save(candidateCommercialData);
		
		return"";//creare e collegare jsp di aggiunta candidateCommercialData
	}
	
	@GetMapping("/preFindByIdCandidateCommercialData")
	public String prefindById() {
		return"";//creare e collegare jsp di ricerca per idCandidateCommercialData
	}
	
	@GetMapping("/findByIdCandidateCommercialData")
	public String findById(Model model, Integer idCandidateCommercialData) {
		
		CandidateCommercialData candidateCommercialData=new CandidateCommercialData();
		candidateCommercialData=candidateCommercialDataRep.findById(idCandidateCommercialData).get();
		model.addAttribute("CandidateComemercialData", candidateCommercialData);
		
		return"";//creare e collegare jsp di successo ricerca
	}
	
	@PostMapping("/putCandidateCommercialData")
	public String put(CandidateCommercialData candidateCommercialData, Model model) {
		
		candidateCommercialDataRep.save(candidateCommercialData);
		
		return"";//creare e collegare jsp di successo aggiorna
	}
	
	@GetMapping("/deleteCandidateCommercialData")
	public String delete(Integer idCandidateCommercialData, Model model) {
		
		candidateCommercialDataRep.deleteById(idCandidateCommercialData);
		
		return"";//creare e collegare una jsp di successo elimina
	}

}
