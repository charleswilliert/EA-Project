package edu.mum.rentalHouse.serviceImpl;

import edu.mum.rentalHouse.model.Tenant;
import edu.mum.rentalHouse.repository.TenantRepository;
import edu.mum.rentalHouse.service.TenantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TenantServiceImpl implements TenantService {
    @Autowired
    private TenantRepository tenantRepository;
    @Override
    public void createTenant( Tenant tenant ) {
          tenantRepository.save(tenant);
    }

    @Override
    public void updateTenant(Tenant tenant) {
        tenantRepository.save(tenant);

    }

    @Override
    public Tenant getTenant(Long id) {
        return tenantRepository.getOne(id);
    }

    @Override
    public void deleteTenant(Tenant tenant) {
        tenantRepository.delete(tenant);

    }

    @Override
    public List<Tenant> getAllTenant() {
        return tenantRepository.findAll();
    }
}
