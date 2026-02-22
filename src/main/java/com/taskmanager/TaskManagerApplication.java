package com.taskmanager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Entry point for the Task Manager API.
 *
 * @SpringBootApplication combines three annotations:
 *
 * 1. @Configuration - this class can define Spring beans
 * 2. @EnableAutoConfiguration - Spring Boot looks at your dependencies
 *    and auto-configures them (sees PostgreSQL driver? configures a DataSource)
 * 3. @ComponentScan - scans this package and all sub-packages for classes
 *    annotated with @Component, @Service, @Repository, @Controller
 *    and registers them as managed beans (objects Spring creates and manages)
 *
 * If you're coming from another language: Spring's "beans" are like
 * dependency-injected singletons. You declare them, Spring creates them,
 * and injects them wherever needed.
 */
@SpringBootApplication
public class TaskManagerApplication {

    public static void main(String[] args) {
        // This one line boots up:
        // - Embedded Tomcat web server
        // - Spring dependency injection container
        // - Auto-configured database connection pool
        // - Flyway migrations
        // - Spring Security
        SpringApplication.run(TaskManagerApplication.class, args);
    }
}