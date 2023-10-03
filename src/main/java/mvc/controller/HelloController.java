package mvc.controller;


import mvc.registration.Gender;
import mvc.registration.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class HelloController {

//	@RequestMapping("/controller")
//	public String index() {
//			return "index";
//	}// trả về file jsp
@RequestMapping(value = "/rest-test")
public User showRegistrationForm(Model model){
	User user = new User();
	user.setName("MaiTruong");
	return user;
}

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String greeting(@RequestParam(name = "person") String person,
                           @RequestParam(name = "country", required = false, defaultValue = "Viet Nam") String country,
                           @RequestParam(name = "age", required = false,defaultValue = "18") Integer age,
                           Model model) {
       model.addAttribute("personName", person);
	   model.addAttribute("country", country);
	   model.addAttribute("age", age);

		return "helloWorld/greeting";
	}
}
