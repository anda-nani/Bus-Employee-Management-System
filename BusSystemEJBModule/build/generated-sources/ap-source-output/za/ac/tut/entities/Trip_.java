package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T23:21:42")
@StaticMetamodel(Trip.class)
public class Trip_ { 

    public static volatile SingularAttribute<Trip, Date> departureTime;
    public static volatile SingularAttribute<Trip, String> route;
    public static volatile SingularAttribute<Trip, Date> tripDate;
    public static volatile SingularAttribute<Trip, Date> destinationTime;
    public static volatile SingularAttribute<Trip, Long> id;

}