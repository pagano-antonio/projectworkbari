package com.ctr;


import java.util.List;

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
	 
// --------------------------------------------------------------------------------------- CHOOSE KEYWORD
		
	@GetMapping("/chooseFindKeyword")
	public String chooseFindKeyword(String find) {
		String resultPage = "";
		
		switch (find) {
		case "name":
			resultPage = this.preFindByName();
			break;
		
		case "city":
			resultPage = this.preFindByCity();
			break;	
		}
		return resultPage;
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
		return"findByIdCompanyClient ";//creare una jsp di ricerca per id 
	}
		
	@GetMapping("/findByIdCompanyClient")
	public String findById(Model model, Integer idCompanyClient) {
			
			CompanyClient c=new CompanyClient();
			c=companyClientRep.findById(idCompanyClient).get();
			model.addAttribute("CompanyClient", c);
			
			return "resCompanyClient";
	}
		
		
 //------------------------------------------------------------------------------------
		
	 @GetMapping("/prePutCompanyClient")
		public String prePutCompanyClient(Integer idCompanyClient,Model model) {
		 CompanyClient c=new CompanyClient();
			c=companyClientRep.findById(idCompanyClient).get();
			model.addAttribute("CompanyClient", c);
			
		 return"UpdateCompanyClient";
		 
		}
		
		
	@PostMapping("/UpdateCompanyClient")
	public String put(CompanyClient c, Model model) {
			
			companyClientRep.save(c);
			
			return "success";
	}
		
		
   //------------------------------------------------------------------------------------
		
		@GetMapping("/deleteCompanyClient")
		public String delete(Integer idCompanyClient, Model model) {
			
			companyClientRep.deleteById(idCompanyClient);
			
			return "success";//creare e collegare una jsp di successo elimina
		}

  //------------------------------------------------------------------------------------


		@GetMapping("/preFindByCityCompanyClient")
		public String preFindByCity() {
			return "findByCityCompanyClient";
		}

		@GetMapping("/findByCityCompanyClient")
		public String findByCity(Model model,String city) {

			List<CompanyClient> companyClientList = (List<CompanyClient>) companyClientRep.findByCity(city);
			model.addAttribute("companyClientList", companyClientList);
			model.addAttribute("city", city);
			
		    return "resCompanyClient";
		}

  //------------------------------------------------------------------------------------


		@GetMapping("/preFindByNameCompanyClient")
		public String preFindByName() {
			return "findByNameCompanyClient";
		}

		@GetMapping("/findByNameCompanyClient")
		public String findByName(Model model,String name) {

			List<CompanyClient> companyClientList = (List<CompanyClient>) companyClientRep.findByName(name);
			model.addAttribute("companyClientList",companyClientList);
			model.addAttribute("name", name);
			
		    return "resCompanyClient";
		}

}
