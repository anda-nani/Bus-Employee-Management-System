/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Driver;
import za.ac.tut.web.bl.DriverFacadeLocal;
import za.ac.tut.web.bl.TripFacadeLocal;

/**
 *
 * @author Student
 */
public class GetLongestServlet extends HttpServlet {

    @EJB
    DriverFacadeLocal dfl;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Driver> driver = dfl.longestService();

        request.setAttribute("driver", driver);
        RequestDispatcher disp = request.getRequestDispatcher("longest_service_outcome.jsp");
        disp.forward(request, response);
    }

}
