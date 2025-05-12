package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entities.Contact;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T23:21:42")
@StaticMetamodel(Driver.class)
public class Driver_ { 

    public static volatile SingularAttribute<Driver, Date> hireDate;
    public static volatile SingularAttribute<Driver, Character> gender;
    public static volatile SingularAttribute<Driver, String> surname;
    public static volatile SingularAttribute<Driver, String> name;
    public static volatile SingularAttribute<Driver, Long> id;
    public static volatile SingularAttribute<Driver, Integer> age;
    public static volatile ListAttribute<Driver, Contact> contacts;

}