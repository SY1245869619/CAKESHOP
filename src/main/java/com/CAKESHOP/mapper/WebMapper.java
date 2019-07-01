package com.CAKESHOP.mapper;

        import com.CAKESHOP.dao.Product;
        import org.apache.ibatis.annotations.Param;

        import java.util.List;

public interface WebMapper {
    List<Product> selectAllProduct();

    List<Product> selectProductsPriceAscending();

    //将"String"类型的变量"searchKey"以"searchKey"为参数名传入到WebMapper.xml中
    List<Product> selectProductsSearch(@Param(value = "searchKey") String searchKey);
}
