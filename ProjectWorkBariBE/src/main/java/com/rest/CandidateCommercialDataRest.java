package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateCommercialDataRepository;
import com.model.CandidateCommercialData;

@RestController
@RequestMapping("CandidateCommercialData")
public class CandidateCommercialDataRest {

	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;

	@GetMapping("findById/{idCandidateCommercial}")
	public CandidateCommercialData findById(@PathVariable("idCandidateCommercial") int idCandidateCommercial) {

		CandidateCommercialData resCandidateCommercialData = candidateCommercialDataRep.findById(idCandidateCommercial)
				.get();
		return resCandidateCommercialData;
	}

	@PostMapping
	public String post(@RequestBody CandidateCommercialData cc) {

		System.out.println(cc.toString());
		candidateCommercialDataRep.save(cc);
		return "success";
	}

	@PutMapping
	public String put(@RequestBody CandidateCommercialData cc) {

		candidateCommercialDataRep.save(cc);
		System.out.println(cc.toString() + "uploaded");
		return "success";
	}

	@DeleteMapping("{idCandidateCommercial}")
	public String delete(@RequestBody CandidateCommercialData cc) {

		candidateCommercialDataRep.delete(cc);
		return cc + "deleted";

	}
}
