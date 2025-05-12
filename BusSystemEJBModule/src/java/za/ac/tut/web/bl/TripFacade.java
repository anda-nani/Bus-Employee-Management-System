/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.bl;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Trip;

/**
 *
 * @author Student
 */
@Stateless
public class TripFacade extends AbstractFacade<Trip> implements TripFacadeLocal {

    @PersistenceContext(unitName = "BusSystemEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TripFacade() {
        super(Trip.class);
    }
@RolesAllowed("supervisor")
    @Override
    public List<Trip> findByDriver(Long id) {
    Query query = em.createQuery("SELECT s FROM Trip s WHERE s.id = :id");
    query.setParameter("id", id);
    return (List<Trip>) query.getResultList();
}

    
}
