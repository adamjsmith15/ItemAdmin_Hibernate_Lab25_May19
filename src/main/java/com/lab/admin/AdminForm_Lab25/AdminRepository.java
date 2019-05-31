package com.lab.admin.AdminForm_Lab25;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Items, Integer>{
	Items findByName(String name);

}
