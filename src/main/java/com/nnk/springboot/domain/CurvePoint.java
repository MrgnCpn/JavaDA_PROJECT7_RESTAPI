package com.nnk.springboot.domain;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;


@Entity
@Table(name = "curvepoint")
public class CurvePoint {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @NotNull
    @Max(9999)
    private Integer id;

    private Integer curveId;

    @DateTimeFormat(pattern = "MM/dd/yyyy")
    private LocalDate asOfDate;

    private Double term;
    private Double value;

    @DateTimeFormat(pattern = "MM/dd/yyyy")
    private LocalDate creationDate;

    public CurvePoint() {}

    public CurvePoint(Integer curveId, Double term, Double value) {
        this.curveId = curveId;
        this.term = term;
        this.value = value;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCurveId() {
        return curveId;
    }

    public void setCurveId(Integer curveId) {
        curveId = curveId;
    }

    public LocalDate getAsOfDate() {
        return asOfDate;
    }

    public void setAsOfDate(LocalDate asOfDate) {
        this.asOfDate = asOfDate;
    }

    public Double getTerm() {
        return term;
    }

    public void setTerm(Double term) {
        this.term = term;
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }

    public LocalDate getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(LocalDate creationDate) {
        this.creationDate = creationDate;
    }
}
