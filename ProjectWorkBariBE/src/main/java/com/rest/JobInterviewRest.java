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

import com.dao.JobInterviewRepository;
import com.model.JobInterview;

@RestController
@RequestMapping("JobInterview")
public class JobInterviewRest {
	@Autowired
	private JobInterviewRepository jobInterviewRep;

	@GetMapping("findById/{id}")
	public JobInterview findById(@PathVariable("id") int id) {

		JobInterview resJobInterview = jobInterviewRep.findById(id).get();
		return resJobInterview;
	}

	@PostMapping
	public String post(@RequestBody JobInterview j) {
		System.out.println(j.toString());
		jobInterviewRep.save(j);
		return "success";
	}

	@PutMapping
	public String put(@RequestBody JobInterview j) {
		jobInterviewRep.save(j);
		System.out.println(j.toString() + "uploaded");
		return "success";
	}

	@DeleteMapping("{id}")
	public String delete(@RequestBody JobInterview j) {
		jobInterviewRep.delete(j);
		return j + "deleted";
	}
}
