package edu.mum.rentalHouse.service;

import edu.mum.rentalHouse.model.Payment;

import java.time.LocalDate;
import java.util.List;


public interface ServicePayment {
    public void addPayment(Payment p);
    public List<Payment > findAllPayment();
//    public Payment get(Long id) ;
//    public void update(Payment pa, Long id) ;
//    public void delete(Long id);
//    public List<Payment> latePayment(LocalDate date);
//    public List<Payment> incorrectPayment();
//

}
