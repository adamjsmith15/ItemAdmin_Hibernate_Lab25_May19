package com.lab.admin.AdminForm_Lab25;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class AdminDao {
	@PersistenceContext
	EntityManager eManager;

		public Items findById(int id) {
			return eManager.find(Items.class, id);
		}
		
		public List<Items> findAll(){
			TypedQuery<Items> namedQuery = eManager.createNamedQuery("find_all_items", Items.class);
			return namedQuery.getResultList();
		}
		
		public Items addOrUpdate(Items p) {
			return eManager.merge(p);
		}
		public void deleteById(int id) {
			eManager.remove(findById(id));
		}
		public boolean findMatchingName(String n) {
			List<Items> list = findAll();
			boolean bool = false;
			for(int i = 0; i < list.size(); i++) {
				if(list.get(i).getName().equalsIgnoreCase(n)) {
					bool = true;
				}else {
					continue;
				}
			}
			return bool;
			
			
		}


}
