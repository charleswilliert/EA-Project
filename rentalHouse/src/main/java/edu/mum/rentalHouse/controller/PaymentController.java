package edu.mum.rentalHouse.controller;

import edu.mum.rentalHouse.model.Payment;
import edu.mum.rentalHouse.model.Tenant;
import edu.mum.rentalHouse.service.ServicePayment;
import edu.mum.rentalHouse.serviceImpl.ServicePaymentImpl;
import edu.mum.rentalHouse.serviceImpl.TenantServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;


@Controller
public class PaymentController {

    @Autowired
    private ServicePaymentImpl servicePayment;
    @Autowired
   private TenantServiceImpl tenantServiceImpl;

    @GetMapping("/")
    public String redirectRoot() {
        return "redirect:/payments";
    }

    @GetMapping("/payments")
    public String getAll(Model model) {
        List<Payment> p = servicePayment.findAllPayment();
        System.out.println("========>"+p.size());
        model.addAttribute("payments",p );
        return "paymentList";
    }

    @GetMapping("/payments/add")
    public String viewAdd(Model model) {
       // model.addAttribute("msg", "Add");

        model.addAttribute("payment", new Payment());
        model.addAttribute("tenants", tenantServiceImpl.getAllTenant());
        return "paymentDetail";
    }

//
    @PostMapping("/payments/paymentDetail")
    public String add(@Valid Payment payment, @PathVariable Long id, BindingResult result,
                      RedirectAttributes flash) {
        if (result.hasErrors()) {
            flash.addFlashAttribute("org.springframework.validation.BindingResult.payment", result);
            flash.addFlashAttribute("payment", payment);
            return "redirect:/payments/add";
        } else {
         //System.out.println("***********************************8"+id);
            servicePayment.addPayment(payment);
            return "redirect:/payments";
        }
    }


////
//    @GetMapping("/payments/{id}")
//    public String get(@PathVariable Long id, Model model) {
//        if (!model.containsAttribute("payment")) {
//            model.addAttribute("payment", servicePayment.get(id));
//        }
//        model.addAttribute("msg", "Update");
//        return "paymentDetail";
//    }
////
//    @PostMapping("/books/{id}")
//    public String update(@Valid Payment payment, @RequestParam Long tenant_id, BindingResult result,
//                         @PathVariable int id, RedirectAttributes flash) {
//        if (result.hasErrors()) {
//            flash.addFlashAttribute("org.springframework.validation.BindingResult.payment", result);
//            flash.addFlashAttribute("payment", payment);
//            return "redirect:/payments/{id}";
//        } else {
//            servicePayment.update(payment,tenant_id);
//            return "redirect:/payments";
//        }
//    }
////
//    @PostMapping("/payments/delete")
//    public String delete(Long paymentId) {
//        servicePayment.delete(paymentId);
//        return "redirect:/payments";
//    }


}
