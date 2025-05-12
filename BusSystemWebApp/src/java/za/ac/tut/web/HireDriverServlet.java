/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Contact;
import za.ac.tut.entities.Driver;
import za.ac.tut.web.bl.DriverFacadeLocal;

/**
 *
 * @author Student
 */
public class HireDriverServlet extends HttpServlet {

    @EJB
    private DriverFacadeLocal dfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Long id = Long.parseLong(request.getParameter("id"));
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            Character gender = request.getParameter("gender").charAt(0);
            Integer age =Integer.parseInt(request.getParameter("age"));
            String date = request.getParameter("hiredate");
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
            Date hiredate = sdf.parse(date);
            String con1= request.getParameter("con1");
            String con2= request.getParameter("con2");
            List<Contact> contacts=new ArrayList<>();
            Contact contact1 = new Contact(con1);
            Contact contact2 = new Contact(con2);
            contacts.add(contact1);
            contacts.add(contact2);
            Driver driver = new Driver(id, name, surname, gender, age, hiredate, contacts);
            dfl.create(driver);
            RequestDispatcher disp = request.getRequestDispatcher("hire_driver_outcome.jsp");
            disp.forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(HireDriverServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
