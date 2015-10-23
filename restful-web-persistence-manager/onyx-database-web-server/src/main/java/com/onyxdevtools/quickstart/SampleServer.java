package com.onyxdevtools.quickstart;

import com.onyx.application.DefaultOnyxDatabaseApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * This example will launch a JavaFX application with a dashboard that allows you to start and stop the server.
 * @author cosborn
 */
@Configuration
@EnableAutoConfiguration
@EnableWebMvc
@ComponentScan(basePackages = {"com.onyx"}) //needed to pick up onyx spring components within onyx-web-database.jar
@EnableTransactionManagement
@PropertySource(value = {"classpath:application.properties", "file:${user.home}/onyx/database.properties"}, ignoreResourceNotFound = true)
public class SampleServer extends DefaultOnyxDatabaseApplication
{
    public SampleServer()
    {
        this.setApplicationClass(SampleServer.class);
    }
}