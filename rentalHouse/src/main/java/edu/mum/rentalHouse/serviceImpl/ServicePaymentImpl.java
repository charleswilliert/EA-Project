package edu.mum.rentalHouse.serviceImpl;

import edu.mum.rentalHouse.model.Payment;
import edu.mum.rentalHouse.model.Tenant;
import edu.mum.rentalHouse.repository.PaymentRepository;
import edu.mum.rentalHouse.service.ServicePayment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class ServicePaymentImpl implements ServicePayment {

    @Autowired
     private PaymentRepository paymentRep;


    @Override
    public void addPayment(Payment p) {
        Tenant te=null;
        p.setTenant(te);
        paymentRep.save(p);
    }

    @Override
    public List<Payment> findAllPayment() {
        return paymentRep.findAll();
    }

//    @Override
//    public Payment get(Long id) {
//        return paymentRep.findById(id).get() ;
//    }
//
//
//    @Override
//    public void update(Payment pa, Long id)
//    {
//        Tenant te=null;
//        pa.setTenant(te);
//        paymentRep.save(pa);
//    }
//
//    @Override
//     public void delete(Long id) {
//         paymentRep.deleteById(id);
//     }
//
//     @Override
//     public List<Payment> latePayment(LocalDate date) {
//         return latePayment(date);
//     }
//
//     @Override
//     public List<Payment> incorrectPayment() {
//         return incorrectPayment();
//     }
}

