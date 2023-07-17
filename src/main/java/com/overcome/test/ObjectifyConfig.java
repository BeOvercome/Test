package com.overcome.test;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.datastore.Datastore;
import com.google.cloud.datastore.DatastoreOptions;
import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;
import com.overcome.test.entity.TicketEntity;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.io.FileInputStream;
import java.io.IOException;

@Configuration
public class ObjectifyConfig {

	@PostConstruct
    public void init() throws IOException {
        GoogleCredentials credentials = GoogleCredentials.fromStream(new FileInputStream("overcome.json"));
        DatastoreOptions options = DatastoreOptions.newBuilder().setCredentials(credentials).build();
        Datastore datastore = options.getService();

        ObjectifyService.register(TicketEntity.class);
    }

    @Bean
    public ObjectifyFactory objectifyFactory() {
        return ObjectifyService.factory();
    }

    @Bean
    public Objectify objectify(ObjectifyFactory objectifyFactory) {
        return objectifyFactory.begin();
    }
}