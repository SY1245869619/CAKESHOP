package com.CAKESHOP.service.implement;

import com.CAKESHOP.dao.Product;
import com.CAKESHOP.mapper.WebMapper;
import com.CAKESHOP.service.WebService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WebServiceImpl implements WebService {
    @Autowired
    WebMapper webMapper;

    @Override
    public List<Product> queryProductsPriceAscending() {
        return webMapper.selectProductsPriceAscending();
    }

    @Override
    public List<Product> queryAllProducts() {
        return webMapper.selectAllProduct();
    }

    @Override
    public List<Product> queryProductsSearch(String searchKey) {
        return webMapper.selectProductsSearch(searchKey);
    }
}
