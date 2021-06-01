package com.techgeeks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.techgeeks.dao.PatientService;
import com.techgeeks.dao.UserService;
import com.techgeeks.model.Patient;
import com.techgeeks.model.User;
import com.techgeeks.repository.UserRepository;

@Controller
public class LoginController {

	@Autowired
	PatientService patientService;

	@Autowired
	UserService userService;

	@Autowired
	Patient patient;

	@Autowired
	User user;

	@RequestMapping("/")
	public String welcome() {
		return "welcome";
	}

	@RequestMapping("/login")
	public String login(Model model) {
		// User user = new User();
		model.addAttribute("user", user);
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String submitlogin(@ModelAttribute("user") User user,ModelMap modelMap) {
		User fromDB = userService.getByEmail(user.getEmail());
		if (fromDB.getPassword().equals(user.getPassword())) {
			if (fromDB.getRole().equals("patient"))
				return "patientHome";
			else if (fromDB.getRole().equals("admin"))
				return "adminHome";
			else
				return "doctorHome";
		} else {
			modelMap.addAttribute("msg", "Invalid user name or password .Please try again.");
		}

		return "login";
		
	}

	@RequestMapping("/register")
	public String register(ModelMap model) {
		Patient patient = new Patient();
		model.put("patient", patient);
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String savePatient(@ModelAttribute("patient") Patient patient, User user, Model model) {
		patientService.addPatient(patient);
//		User user = new User();
		user.setEmail(patient.getEmail());
		user.setPassword(patient.getPassword());
		user.setRole(patient.getRole());
		userService.saveUser(user);
		return "redirect:/login";
	}
}