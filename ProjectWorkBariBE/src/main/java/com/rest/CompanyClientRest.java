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
import com.dao.CompanyClientRepository;
import com.model.CompanyClient;


@RestController
@RequestMapping("CompanyClient")
public class CompanyClientRest {

	 @Autowired
	    private CompanyClientRepository companyClientRep; 

	 @GetMapping("findById/{idCompanyClient}")
	    public CompanyClient findById(@PathVariable ("idCompanyClient") int id) {

		 CompanyClient resCompanyClient = companyClientRep.findById(id).get();
	    return resCompanyClient;
	    }
		
		@PostMapping
		public String post (@RequestBody CompanyClient c) {
		    System.out.println(c.toString());
		    companyClientRep.save(c);
		    return "success";
		}
		
		@PutMapping
	    public String put (@RequestBody CompanyClient c) {
	    companyClientRep.save(c);
	       System.out.println(c.toString() + "uploaded");
	       return "success";
	   } 

		@DeleteMapping ("{idCompanyClient}")
		   public String delete (@RequestBody CompanyClient c) {
		    companyClientRep.delete(c);
		       return c + "deleted";
		   }



}
