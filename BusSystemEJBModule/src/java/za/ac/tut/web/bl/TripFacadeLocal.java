/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Trip;

/**
 *
 * @author Student
 */
@Local
public interface TripFacadeLocal {

    void create(Trip trip);

    void edit(Trip trip);

    void remove(Trip trip);

    Trip find(Object id);

    List<Trip> findAll();

    List<Trip> findRange(int[] range);

    int count();

    public List<Trip> findByDriver(Long id);
    
}
