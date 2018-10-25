package com.vincent.ssh.controller;

import com.vincent.ssh.entity.Person;
import com.vincent.ssh.service.PersonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * 员工Controller
 */
@Controller
@RequestMapping(value = "/person")
public class PersonController {
	@Autowired
	private PersonService personService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", defaultValue = "") String error, Model model) {
		if (!"".equals(error)) {
			model.addAttribute("error", error);
		}

		return "login";
	}

	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(String userName, String passWord, Model model, RedirectAttributes redirect) {
		if (userName.equals("admin") && passWord.equals("admin")) {
			return "redirect:/person/main";
		}
		redirect.addAttribute("error", "账号或密码错误");
		return "redirect:/person/login";
	}

	@RequestMapping(value = "/main")
	public String main(Model model) {
		List<Person> personList = this.getPersons();
		model.addAttribute("persons", personList);
		return "main";
	}

	@RequestMapping(value = "/add")
	public String add() {
		return "add";
	}

	@RequestMapping(value = "/getPersons")
	@ResponseBody
	public List<Person> getPersons() {
		return personService.getPersons();
	}

	@RequestMapping(value = "/edit")
	public String edit(String id, Model model) {
		model.addAttribute("person", this.getPersonById(id));
		return "edit";
	}

	@RequestMapping(value = "/getPersonById")
	@ResponseBody
	public Person getPersonById(String id) {
		return personService.getPersonById(id);
	}

	@RequestMapping(value = "/addPerson")
	public String addPerson(Person person) {
		personService.addPerson(person);
		return "redirect:/person/main";
	}

	@RequestMapping(value = "/updatePerson")
	public String updatePerson(Person person) {
		personService.updatePerson(person);
		return "redirect:/person/main";
	}

	@RequestMapping(value = "/deletePersonById")
	public String deletePersonById(String id) {
		personService.deletePersonById(id);
		return "redirect:/person/main";
	}
}
