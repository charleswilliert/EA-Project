package edu.mum.rentalHouse.service;

import edu.mum.rentalHouse.model.Residence;
import edu.mum.rentalHouse.model.Tenant;

import java.util.List;

public interface TenantService {
    public Tenant get(Long id);
    public List<Tenant> getAll();
     public Long add(Tenant tenant);
    public void update(Tenant tenant);
    public void delete(Long id);
    public List<Residence> getAppartements();
    public List<Residence> getHouses();
   
}
