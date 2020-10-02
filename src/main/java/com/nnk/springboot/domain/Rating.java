package com.nnk.springboot.domain;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "rating")
public class Rating {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @NotNull
    @Max(9999)
    private Integer id;

    @Size(max = 125)
    private String moodysRating;

    @Size(max = 125)
    private String sandRating;

    @Size(max = 125)
    private String fitchRating;

    private Integer orderNumber;

    public Rating() {}

    public Rating(@Size(max = 125) String moodysRating, @Size(max = 125) String sandRating, @Size(max = 125) String fitchRating, Integer orderNumber) {
        this.moodysRating = moodysRating;
        this.sandRating = sandRating;
        this.fitchRating = fitchRating;
        this.orderNumber = orderNumber;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMoodysRating() {
        return moodysRating;
    }

    public void setMoodysRating(String moodysRating) {
        this.moodysRating = moodysRating;
    }

    public String getSandRating() {
        return sandRating;
    }

    public void setSandRating(String sandRating) {
        this.sandRating = sandRating;
    }

    public String getFitchRating() {
        return fitchRating;
    }

    public void setFitchRating(String fitchRating) {
        this.fitchRating = fitchRating;
    }

    public Integer getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Integer orderNumber) {
        this.orderNumber = orderNumber;
    }
}
