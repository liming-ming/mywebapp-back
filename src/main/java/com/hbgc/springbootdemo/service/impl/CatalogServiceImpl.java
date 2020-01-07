package com.hbgc.springbootdemo.service.impl;

import com.hbgc.springbootdemo.domain.Catalog;
import com.hbgc.springbootdemo.repository.CatalogRepository;
import com.hbgc.springbootdemo.service.CatalogService;
import org.springframework.stereotype.Service;

@Service
public class CatalogServiceImpl extends BaseServiceImpl<Catalog,Integer, CatalogRepository> implements CatalogService {
}
