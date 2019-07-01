package com.CAKESHOP.service;

        import com.CAKESHOP.dao.Product;

        import java.util.List;

public interface WebService {
    List<Product> queryProductsPriceAscending();

    List<Product> queryProductsSearch(String searchKey);

    List<Product> queryAllProducts();
}
