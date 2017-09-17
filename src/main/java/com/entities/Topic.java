package com.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by dash on 7/13/2017.
 */
@Entity
public class Topic {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private int id;
    private String name;
    @ManyToOne
    private User createdby;
    private Date dateCreated = new Date();
    private Date lastUpdated = new Date();

    enum Visibility {
        Private("Private"), Public("Public");
        String value;

        Visibility(String value) {
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }
    }
    @Enumerated(EnumType.STRING)
    Visibility visibility = Visibility.Public;

    public Visibility getVisibility() {
        return visibility;
    }

    public void setVisibility(Visibility visibility) {
        this.visibility = visibility;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public User getCreatedby() {
        return createdby;
    }

    public void setCreatedby(User createdby) {
        this.createdby = createdby;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    @Override
    public String toString() {
        return "topicName" + name + "username" + createdby.getUserName();
    }


}

