/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class RecordTripServlet extends HttpServlet {

    @EJB
    TripFacadeLocal tfl;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Long staffId = Long.parseLong(request.getParameter("id"));
            String date = request.getParameter("depart");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
            Date departureTime = sdf.parse(date);
            String date2 = request.getParameter("arrival");
            Date destinationTime = sdf.parse(date2);
            String route = request.getParameter("route");

            Trip trip = new Trip(staffId, route, departureTime, destinationTime, new Date());
            tfl.create(trip);

            RequestDispatcher disp = request.getRequestDispatcher("record_trip_outcome.jsp");
            disp.forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(RecordTripServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
