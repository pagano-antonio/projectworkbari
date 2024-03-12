package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ContractTypeRepository;
import com.model.ContractType;
@Controller
@RequestMapping("/ContractTypeCtr")
public class ContractTypeCtr {
	 @Autowired
	    private ContractTypeRepository contractTypeRep; 


	 @GetMapping("/homePage")
	    public String homePage(Model model) {
	      return "homePage";

	        }

	//------------------------------------------------------------------------------------

	 @GetMapping("/preAddContractType")
	    public String preAdd (Model model) {

	        return "addContractType";//aggiungi jsp

	    }


	 @PostMapping("/addContractType")
	    public String add(ContractType c) {

	        contractTypeRep.save(c);

	          return "success";//aggiungi jsp

	    }
	 
	 

	//------------------------------------------------------------------------------------
	
	 
	 @GetMapping("/prefindByIdContractType")
		public String prefindById() {
<<<<<<< HEAD
			return"findByIdContractType";//creare una jsp di ricerca per id 
=======
			return"findByIdContractType ";
>>>>>>> 493777cd7c47431e303be480f45930eb52c25ecd
		}
		
		@GetMapping("/findByIdContractType")
		public String findById(Model model, Integer idContractType) {
			
			ContractType c=new ContractType();
			c=contractTypeRep.findById(idContractType).get();
			model.addAttribute("ContractType", c);
			
<<<<<<< HEAD
			return "success";//creare e collegare una jsp di successo ricerca
=======
			return "";
>>>>>>> 493777cd7c47431e303be480f45930eb52c25ecd
		}
		
		
 //------------------------------------------------------------------------------------
		
		
		@PostMapping("/putContractType")
		public String put(ContractType c, Model model) {
			
			contractTypeRep.save(c);
			
			return "";//creare e collegare una jsp di successo aggiorna
		}
		
		
//------------------------------------------------------------------------------------
		
		@GetMapping("/deleteContractType")
		public String delete(Integer idContractType, Model model) {
			
			contractTypeRep.deleteById(idContractType);
			
			return "";//creare e collegare una jsp di successo elimina
		}



}
