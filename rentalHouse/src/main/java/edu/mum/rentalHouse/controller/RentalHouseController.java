package edu.mum.rentalHouse.controller;

import edu.mum.rentalHouse.model.Tenant;
import edu.mum.rentalHouse.serviceImpl.TenantServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RentalHouseController {

    @Autowired
    private TenantServiceImpl tenantServiceImpl;


//    @GetMapping("/")
//    public String test(){
//        return index;
//    }

    @GetMapping("/tenant")
    public String createTenant(@ModelAttribute("tenant") Tenant tenant){
        return "formCreateTenant";
    }

    @PostMapping("/tenantSave")
    public String saveTenant(Tenant tenant){
       System.out.println("tenant ==>"+tenant.getFirstName());
        tenantServiceImpl.createTenant(tenant);

     return "redirect:/";
    }

   @GetMapping("listTenant")
    public  String getAllTenant(Model model){
       model.addAttribute("test","Test Message in Model");
       model.addAttribute("messages",tenantServiceImpl.getAllTenant());
       return "volcy";
    }




}
