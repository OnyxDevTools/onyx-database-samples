package com.onyxdevtools.quickstart;

import com.onyx.exception.EntityException;
import com.onyx.exception.InitializationException;
import com.onyx.persistence.factory.impl.CacheManagerFactory;
import com.onyx.persistence.manager.PersistenceManager;
import com.onyx.persistence.query.Query;
import com.onyx.persistence.query.QueryCriteria;
import com.onyx.persistence.query.QueryCriteriaOperator;
import com.onyxdevtools.quickstart.entities.Person;
import java.util.List;

public class OneToOneExample
{

    public static void demo() throws InitializationException, EntityException
    {
        System.out.println("Saving data with a OneToOne relationship");
    }
}
