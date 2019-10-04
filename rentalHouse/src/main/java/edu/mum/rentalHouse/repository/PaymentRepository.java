package edu.mum.rentalHouse.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.mum.rentalHouse.model.Payment;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;


@Repository
public interface PaymentRepository extends JpaRepository<Payment, Long> {
//
//    //@Query("Select distinct p from Payment p JOIN p.tenant t JOIN t.contracts c where t.firstName=:firstName and c.active='true'")
//    public List<Payment> PaymentForaLLCantract(String firstName);
//
//   // @Query("Select distinct p from Payment as p where p.payDate <> new Date()")
//    public List<Payment> latePayment(LocalDate date);
//
//  //  @Query("Select distinct p from Payment as p JOIN p.tenant JOIN p.contracts c where p.amount<> c.amount")
//    public List<Payment> incorrectPayment();
}
