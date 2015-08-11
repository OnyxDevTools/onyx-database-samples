package com.onyxdevtools.quickstart;

import com.onyx.exception.EntityException;
import com.onyx.exception.InitializationException;
import com.onyx.persistence.PersistenceManager;
import com.onyx.persistence.impl.CacheManagerFactory;
import com.onyx.persistence.query.Query;
import com.onyxdevtools.quickstart.entities.Person;
import java.util.List;

public class Main
{

    public static void main(String[] args) throws InitializationException, EntityException
    {
        //Create an instance of an entity
        final Person person1 = new Person();
        person1.setId("1");
        person1.setFirstName("Michael");
        person1.setLastName("Jordan");

        //Initialize the database and get a handle on the PersistenceManager
        CacheManagerFactory factory = new CacheManagerFactory();
        factory.initialize();
        PersistenceManager manager = factory.getPersistenceManager();

        //Save the instance
        manager.saveEntity(person1);

        //Execute a query to see your entity in the collection
        Query query = new Query(Person.class);
        query.setMaxResults(20);
        List<Person> people = manager.executeQuery(query);
        
        //There should be 1 person in the list named "Michael Jordan"
        System.out.println("people count: " + people.size());
        System.out.println("first person in the list: " + people.get(0).getFirstName() + " " + people.get(0).getLastName());

    }
}
