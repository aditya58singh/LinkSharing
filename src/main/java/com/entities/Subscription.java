package com.entities;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by dash on 7/17/2017.
 */
@Entity
public class Subscription {
    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private int subcriptionid;
    @ManyToOne
    private Topic topic;
    @ManyToOne
    private User user;
    @Temporal(TemporalType.TIMESTAMP)
    private Date datecreated;

    public enum Seriousness {
        Serious("Serious"), VerySerious("VerySerious"), Casual("Casual");
        String value;

        Seriousness(String value) {
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
    Seriousness seriousness = Seriousness.VerySerious;

    public int getSubcriptionid() {
        return subcriptionid;
    }

    public void setSubcriptionid(int subcriptionid) {
        this.subcriptionid = subcriptionid;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getDatecreated() {
        return datecreated;
    }

    public void setDatecreated(Date datecreated) {
        this.datecreated = datecreated;
    }

    public Seriousness getSeriousness() {
        return seriousness;
    }

    public void setSeriousness(Seriousness seriousness) {
        this.seriousness = seriousness;
    }
}


