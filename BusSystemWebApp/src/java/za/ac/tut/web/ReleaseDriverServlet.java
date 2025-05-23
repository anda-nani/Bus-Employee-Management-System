/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Driver;
import za.ac.tut.web.bl.DriverFacadeLocal;

/**
 *
 * @author Student
 */
public class ReleaseDriverServlet extends HttpServlet {

    @EJB
    private DriverFacadeLocal dfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long staffid = Long.parseLong(request.getParameter("staffid"));
        
        Driver driver= dfl.find(staffid);
        dfl.remove(driver);
        
        request.setAttribute("driver", driver);
        
        RequestDispatcher disp = request.getRequestDispatcher("release_driver_outcome.jsp");
        disp.forward(request, response);

    }

}
