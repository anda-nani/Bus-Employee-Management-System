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
import za.ac.tut.entities.Driver;

/**
 *
 * @author Student
 */
@Stateless
public class DriverFacade extends AbstractFacade<Driver> implements DriverFacadeLocal {

    @PersistenceContext(unitName = "BusSystemEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public DriverFacade() {
        super(Driver.class);
    }
@RolesAllowed("supervisor")
    @Override
    public   List<Driver> longestService() {
        String queryStr = "SELECT d FROM Driver d WHERE d.hireDate = (SELECT MIN(c.hireDate) FROM Driver c)";                            ;  
        Query query = em.createQuery(queryStr);
        List<Driver> drivers = query.getResultList();
        return drivers;

    }

}
