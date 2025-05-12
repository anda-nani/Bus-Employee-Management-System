/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Trip;
import za.ac.tut.web.bl.TripFacadeLocal;

/**
 *
 * @author Student
 */
public class ViewAllTripRecords extends HttpServlet {

    @EJB
    TripFacadeLocal tfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Trip> trip = tfl.findAll();
        request.setAttribute("trip", trip);
                
        RequestDispatcher disp = request.getRequestDispatcher("view_all_trip_outcome.jsp");
        disp.forward(request, response);
    }

}
