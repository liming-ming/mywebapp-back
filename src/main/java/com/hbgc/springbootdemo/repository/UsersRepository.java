package com.hbgc.springbootdemo.repository;

import com.hbgc.springbootdemo.domain.Users;

public interface UsersRepository extends BaseRepository<Users,Integer> {

    Users findByUsernameAndPassword(String username,String password);
}
