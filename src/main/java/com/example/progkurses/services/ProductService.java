package com.example.progkurses.services;

import com.example.progkurses.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products=new ArrayList<>();
    private long ID=0;
    {
        products.add(new Product(
                ID++,
                "Java Core",
                "Курс по основам Java",
                2000,
                "Вася Пупкин")
        );
        products.add(new Product(
                ID++,
                "C++",
                "Курс по основам C++",
                1000,
                "Азамат Шарипов")
        );
    }
    public List<Product> getListOfProducts(){
        return products;
    }
    public void saveProduct(Product product){
        product.setId(ID++);
        products.add(product);
    }
    public void deleteProduct(Long id){
        products.removeIf(product -> product.getId()==id);
    }
    public Product getProductById(Long id){
        for(Product product : products){
            if(product.getId()==id) return product;
        }
        return null;
    }
}
