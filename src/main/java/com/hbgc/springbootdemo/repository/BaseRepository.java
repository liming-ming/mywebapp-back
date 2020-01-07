package com.hbgc.springbootdemo.repository;


import com.hbgc.springbootdemo.domain.BaseEntity;
import com.hbgc.springbootdemo.domain.BaseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.NoRepositoryBean;

/*
 * JpaRepository继承PagingAndSortingRepository，实现一组JPA规范相关的方法,比如CRUD
 * JpaSpecificationExecutor比较特殊，不属于Repository体系，实现一组JPA Criteria查询相关的方法,
 * 可以实现复杂的条件查询和模糊查询
 * */

/**
 *  所有业务逻辑接口的父类泛型接口
 * @param <T>  对应业务逻辑的类型
 * @param <ID>  业务逻辑类型的主键类型
 */

@NoRepositoryBean
public interface BaseRepository<T extends BaseEntity,ID> extends JpaRepository<T, ID>, JpaSpecificationExecutor {

}
