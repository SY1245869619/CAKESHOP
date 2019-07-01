package com.CAKESHOP.controller;


import com.CAKESHOP.dao.Product;
import com.CAKESHOP.service.WebService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class WebController {
    @Autowired//此注解使得接口"WebService"得以实例化
            WebService webService;

    @RequestMapping(value = "products.html")//此注解指定后缀中以"products.html"为开头的访问提交此段代码处理，下面依此类推
    public ModelAndView products(@Param(value = "c_id") Integer c_id) {//默认界面，按照商品名组织商品
        if (c_id == null) {
            c_id = -1;
        }
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = webService.queryAllProducts();
        for (Product product : products) {
            product.setImgPath("images/" + Integer.toString(product.getID()) + ".jpg");
        }
        //向要跳转的页面中以"products"的名字传入参数"products"，以下依此类推
        modelAndView.addObject("products", products);
        modelAndView.addObject("c_id", c_id);
        //指定要跳转的视图为"products"视图，框架会自动匹配后缀名，以下依此类推
        modelAndView.setViewName("products");
        return modelAndView;
    }

    @RequestMapping(value = "products_price_ascending")//按照价格升序查询产品
    public ModelAndView products_price_ascending(@Param(value = "c_id") Integer c_id) {//"@Param"注解使得此段代码可以获取URL中传入的参数
        if (c_id == null) {
            c_id = -1;
        }
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = webService.queryProductsPriceAscending();
        for (Product product : products) {
            product.setImgPath("images/" + Integer.toString(product.getID()) + ".jpg");
        }
        modelAndView.addObject("products", products);
        modelAndView.addObject("c_id", c_id);
        modelAndView.setViewName("products");
        return modelAndView;
    }

    @RequestMapping(value = "products_search")
    public ModelAndView products_search(@Param(value = "c_id") Integer c_id, @Param(value = "searchKey") String searchKey) {//模糊搜索
        if (c_id == null) {
            c_id = -1;
        }
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = webService.queryProductsSearch(searchKey);
        for (Product product : products) {
            product.setImgPath("images/" + Integer.toString(product.getID()) + ".jpg");
        }
        modelAndView.addObject("products", products);
        modelAndView.addObject("c_id", c_id);
        modelAndView.setViewName("products");
        return modelAndView;
    }

}