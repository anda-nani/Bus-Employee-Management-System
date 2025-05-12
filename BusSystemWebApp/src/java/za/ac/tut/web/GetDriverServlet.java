/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Driver;
import za.ac.tut.entities.Trip;
import za.ac.tut.web.bl.DriverFacadeLocal;
import za.ac.tut.web.bl.TripFacadeLocal;

/**
 *
 * @author Student
 */
public class GetDriverServlet extends HttpServlet {
@EJB
private DriverFacadeLocal driverFacade;

@EJB
private TripFacadeLocal tripFacade;

public Driver findDriverWithMostTripHours() {
    List<Driver> drivers = driverFacade.findAll();

    Driver topDriver = null;
    long maxDuration = 0;

    for (Driver driver : drivers) {
        long totalDuration = 0;

        List<Trip> trips = tripFacade.findByDriver(driver.getId());

        for (Trip trip : trips) {
            if (trip != null) {
                Date departure = trip.getDepartureTime();
                Date arrival = trip.getDestinationTime();

                if (departure != null && arrival != null) {
                    totalDuration += arrival.getTime() - departure.getTime();
                }
            }
        }


        if (totalDuration > maxDuration) {
            maxDuration = totalDuration;
            topDriver = driver;
        }
    }

    return topDriver;
}
    
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       Driver driver= findDriverWithMostTripHours();
       request.setAttribute("driver", driver);
        
        RequestDispatcher disp = request.getRequestDispatcher("get_driver.jsp");
        disp.forward(request, response);
    }

   

}
