package edu.mum.rentalHouse.service;

import edu.mum.rentalHouse.model.Tenant;

import java.util.List;

public interface TenantService {
    public void createTenant(Tenant tenant);
    public void updateTenant(Tenant tenant);
    public Tenant getTenant(Long id);
    public void deleteTenant(Tenant tenant);
    public List<Tenant> getAllTenant();

}
