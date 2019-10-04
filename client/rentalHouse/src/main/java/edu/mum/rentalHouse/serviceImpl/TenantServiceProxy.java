package edu.mum.rentalHouse.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import edu.mum.rentalHouse.model.Residence;
import edu.mum.rentalHouse.model.Tenant;
import edu.mum.rentalHouse.model.User;
import edu.mum.rentalHouse.service.TenantService;

import java.net.URI;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.validation.Valid;

@Service
public class TenantServiceProxy implements TenantService {
    
	@Autowired
    private RestTemplate restTemplate;

    private final String tenantUrl = "http://localhost:8080/tenant/{id}";
    private final String houseslUrl = "http://localhost:8080/allHouses/";
    private final String apartmentsUrl = "http://localhost:8080/allApartments/";
    private final String tenantslUrl = "http://localhost:8080/tenants/";
    
    @Override
    public Tenant get(Long id) {
        return restTemplate.getForObject(tenantUrl, Tenant.class, id);
    }

    @Override
    public List<Tenant> getAll() {
        ResponseEntity<List<Tenant>> response =
                restTemplate.exchange(tenantslUrl, HttpMethod.GET, null,
                        new ParameterizedTypeReference<List<Tenant>>() {
                        });
        return response.getBody();
    }

    @Override
    public Long add(Tenant p) {
        URI uri = restTemplate.postForLocation(tenantUrl, p);
        if (uri == null) {
            return null;
        }
        Matcher m = Pattern.compile(".*/tenant/(\\d+)").matcher(uri.getPath());
        m.matches();
        return Long.parseLong(m.group(1));
    }

    @Override
    public void update(Tenant p) {
        restTemplate.put(tenantUrl, p, p.getId());
    }

    @Override
    public void delete(Long id) {
        restTemplate.delete(tenantUrl, id);
    }
    
    @Override
    public List<Residence> getAppartements() {
        ResponseEntity<List<Residence>> response =
                restTemplate.exchange(apartmentsUrl, HttpMethod.GET, null,
                        new ParameterizedTypeReference<List<Residence>>() {
                        });
        return response.getBody();
    }

    @Override
    public List<Residence> getHouses() {
        ResponseEntity<List<Residence>> response =
                restTemplate.exchange(houseslUrl, HttpMethod.GET, null,
                        new ParameterizedTypeReference<List<Residence>>() {
                        });
        return response.getBody();
    }

	public boolean isUserPresent(String email) {
		// TODO Auto-generated method stub
		return false;
	}

	public void createUser(@Valid User user) {
		// TODO Auto-generated method stub
		
	}

}
