package edu.mum.rentalHouse.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import edu.mum.rentalHouse.serviceImpl.TenantServiceProxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import edu.mum.rentalHouse.model.Tenant;
import edu.mum.rentalHouse.model.User;

@Controller
@SessionAttributes(value = {"user","residence",""})
public class RentalController {
@Autowired
private TenantServiceProxy tenantService;



@GetMapping(value="/login")
public String loginPage(@RequestParam(value = "error", required = false) String error,
                        @RequestParam(value = "logout", required = false) String logout,
                        Model model) {

	  String errorMessge = null;
    if(error != null) {
        errorMessge = "Username or Password is incorrect !!";
    }
    if(logout != null) {
        errorMessge = "You have been successfully logged out !!";
    }
    model.addAttribute("errorMessge", errorMessge);
    return "loginForm";
}

@GetMapping(value="/logout")
public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
  //  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
  //  if (auth != null){   
   //     new SecurityContextLogoutHandler().logout(request, response, auth);
    //}
    return "redirect:/login?logout=true";
}
@GetMapping("/register")
public String registerForm(Model model) {
 	model.addAttribute("user", new User());
	return "registerForm";
}


@PostMapping("/register")
public String registerUser(@Valid User user, BindingResult bindingResult, Model model) {
if(bindingResult.hasErrors()) {
	return "registerForm";	
}
if(tenantService.isUserPresent(user.getEmail())) {
	model.addAttribute("exist",true);
	return "registerForm";	
	}
tenantService.createUser(user);
return "loginForm";
}

// add Tenant
@GetMapping("/addTenant")
public String viewTenant(@ModelAttribute("tenant") Tenant tenant) {
return "addTenant";
}
@PostMapping("/addTenant")
public String addTenant(@Valid Tenant tenant, BindingResult result, RedirectAttributes attributes) {

    if (result.hasErrors()) {
        attributes.addFlashAttribute("org.springframework.validation.BindingResult.tenant", result);
        attributes.addFlashAttribute("tenant", tenant);
        return "addTenant";
    } else {
         tenantService.add(tenant);
        return "redirect:/tenants";
    }
}

@GetMapping("/tenants")
public String succesAddTenant(Model model){
    model.addAttribute("tenants" , tenantService.getAll());
    return "tenantList";
}
//
////add Payment

// page Accueill

    @GetMapping(value = "/")
    public String accueil(Model model) {
        model.addAttribute("apartments", tenantService.getAppartements());
        model.addAttribute("houses", tenantService.getHouses());
        return "indexa";
    }

    @GetMapping(value = "/accListHouse")
    public String listHouse(Model model) {
      // model.addAttribute("apartments", tenantService.getHouses());
        return "accListHouse";
    }
    @GetMapping(value = "/accListApp")
    public String aaListApp(Model model) {
    //  model.addAttribute("apartments", tenantService.getAppartements());
        return "accListApp";
    }



}
