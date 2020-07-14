 package com.claim.capstone.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.capstone.model.Users;
import com.claim.capstone.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	
	private UserRepository repository;
	
	@Autowired
	public UserServiceImpl(UserRepository repository) {
		super();
		this.repository = repository;
	}

	public Optional<Users>findEmail(String email) {

		return repository.findEmail(email);
	}

	public List<Users> findByLastName(String lname) {

		return repository.fibdByLastName(lname);
	}

	
	public Optional<Users> findById(Long id) {
		
		return repository.findById(id);
	}

	
	public List<Users> findByName(String name) {
		
		return repository.findByName(name);
	}

	
	public List<Users> findAll() {
		
		return repository.findAll();
	}

	public Optional<Users> login(String email, String password) {
	
		return repository.login(email, password);
	}

	/*public void delete(Long id) {
		  repository.deleteById(id);
		
	}*/

	public void updateUser(Users user) {
		 
		repository.findById(user.getId()).ifPresent(a->{
			a.setFname(user.getFname());
			a.setLname(user.getLname());
		}
	); 
		
	}

	public void updateRole(String role, Long id) {
		
		repository.findById(id).ifPresent(a->{
			a.setRole(role);
		});
		
	}

	public void resetPassword(String password, Long id) {
		
		 repository.findById(id).ifPresent(a->{
			 a.setPassword(password);
		 });
		
	}

	public void save(Users user) {
		
		repository.save(user);
		
	}

	

	

}
