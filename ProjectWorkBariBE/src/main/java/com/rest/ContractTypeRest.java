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
import com.dao.ContractTypeRepository;
import com.model.ContractType;

@RestController
@RequestMapping("ContractType")
public class ContractTypeRest {

	@Autowired
    private ContractTypeRepository contractTypeRep; 


	 @GetMapping("findById/{idContractType}")
	    public ContractType findById(@PathVariable ("idContractType") int id) {

		 ContractType resContractType = contractTypeRep.findById(id).get();
	    return resContractType;
	    }
		
		@PostMapping
		public String post (@RequestBody ContractType c) {
		    System.out.println(c.toString());
		    contractTypeRep.save(c);
		    return "success";
		}
		
		@PutMapping
	    public String put (@RequestBody ContractType c) {
	    contractTypeRep.save(c);
	       System.out.println(c.toString() + "uploaded");
	       return "success";
	   } 

		@DeleteMapping ("{idContractType}")
		   public String delete (@RequestBody ContractType c) {
		    contractTypeRep.delete(c);
		       return c + "deleted";
		   }


}
