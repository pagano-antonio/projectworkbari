package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CompanyClientRepository;
import com.model.CompanyClient;

@Controller
@RequestMapping("/CompanyClientCtr")
public class CompanyClientCtr {

	 @Autowired
	    private CompanyClientRepository companyClientRep; 


	 @GetMapping("/homePage")
	    public String homePage(Model model) {
	      return "homePage";

	        }

	//------------------------------------------------------------------------------------

	 @GetMapping("/preAddCompanyClient")
	    public String preAdd (Model model) {

	        return "addCompanyClient";//aggiungi jsp

	    }


	 @PostMapping("/addCompanyClient")
	    public String add(CompanyClient c) {

	        companyClientRep.save(c);

	          return "success";//aggiungi jsp

	    }
	 
	 

	//------------------------------------------------------------------------------------
	
	 
	 @GetMapping("/prefindByIdCompanyClient")
		public String prefindById() {
			return" ";//creare una jsp di ricerca per id 
		}
		
		@GetMapping("/findByIdCompanyClient")
		public String findById(Model model, Integer idCompanyClient) {
			
			CompanyClient c=new CompanyClient();
			c=companyClientRep.findById(idCompanyClient).get();
			model.addAttribute("CompanyClient", c);
			
			return "";//creare e collegare una jsp di successo ricerca
		}
		
		
    //------------------------------------------------------------------------------------
		
		
		@PostMapping("/putCompanyClient")
		public String put(CompanyClient c, Model model) {
			
			companyClientRep.save(c);
			
			return "";//creare e collegare una jsp di successo aggiorna
		}
		
		
   //------------------------------------------------------------------------------------
		
		@GetMapping("/deleteCompanyClient")
		public String delete(Integer idCompanyClient, Model model) {
			
			companyClientRep.deleteById(idCompanyClient);
			
			return "";//creare e collegare una jsp di successo elimina
		}






}
