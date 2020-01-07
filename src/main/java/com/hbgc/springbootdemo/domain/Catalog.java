package com.hbgc.springbootdemo.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="CATALOG")
@JsonIgnoreProperties
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Catalog extends BaseEntity implements Serializable,Cloneable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cid;

    @Column(length = 50)
    private String id; //必须字符串，类别编号
    @Column(length = 50)
    private String cname; //类名名称
    @Column(length = 50)
    private String pid; //父类的编号


}
