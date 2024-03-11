package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.StateJobInterviewRepository;
import com.model.StateJobInterview;

@Controller
@RequestMapping("/StateJobInterviewCtr")
public class StateJobInterviewCtr {
	@Autowired
	private StateJobInterviewRepository stateJobInterviewRep;
	
	@GetMapping("/homePage")
	public String home(Model model) {
		System.out.println("hello");
		return "homePage";
	}
	
//-----------------------------------------------------------	
	@GetMapping("/preAddStateJobInterview")
	public String preAdd(Model model) {
        return "addStateJobInterview";
	
}
	@PostMapping("/addStateJobInterview")
	public String add(StateJobInterview s) {
		stateJobInterviewRep.save(s);
		return "";

	}
//-------------------------------------------------------------
	@GetMapping("/prefindByIdStateJobInterview")
	public String prefindById() {
		return"";
	}
	
	@GetMapping("/findByIdStateJobInterview")
	public String findById (Model model, Integer idStateJobInterview) {
		
		StateJobInterview stateJobInterview =new StateJobInterview();
		stateJobInterview =stateJobInterviewRep.findById(idStateJobInterview).get();
		model.addAttribute("StateJobInterview", stateJobInterview);
		
		return "";
	}
//--------------------------------------------------------------

	@PostMapping("/putStateJobInterview")
	public String put(StateJobInterview stateJobInterview, Model model) {
		
		stateJobInterviewRep.save(stateJobInterview);
		
		return "";
	}
//--------------------------------------------------------------
	@GetMapping("/deleteStateJobInterview")
	public String delete(Integer idStateJobInterview, Model model) {
		
		stateJobInterviewRep.deleteById(idStateJobInterview);
		
		return "";
	}
}
