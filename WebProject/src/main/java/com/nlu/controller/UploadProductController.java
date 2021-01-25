package com.nlu.controller;

import com.nlu.model.Product;
import com.nlu.service.ProductService;
import lombok.SneakyThrows;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@WebServlet(urlPatterns = "/new-product")
public class UploadProductController extends HttpServlet {

    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        DiskFileItemFactory factory = new DiskFileItemFactory();
//        factory.setDefaultCharset("UTF-8");
        ServletContext servletContext = this.getServletConfig().getServletContext();

        File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
        factory.setRepository(repository);

        ServletFileUpload upload = new ServletFileUpload(factory);
//        upload.setHeaderEncoding("UTF-8");
        List<FileItem> items = upload.parseRequest(req);
        Iterator<FileItem> iter = items.iterator();
        Product productnew = new Product();
        int size = 21;
        int quality = 1;
        String color = "";
        List<Integer> tagIds = new ArrayList<>();
        while (iter.hasNext()) {
            FileItem item = iter.next();
            if (item.isFormField()) {
                String name = item.getFieldName();
                String value = item.getString();
                switch (name) {
                    case "product_name": {
                        productnew.setName(value);
                        break;
                    }
                    case "product_price": {
                        productnew.setPrice(Integer.valueOf(value));
                        break;

                    }
                    case "product_description": {
                        productnew.setDescription(value);
                        break;

                    }
                    case "category": {
                        productnew.setCategoryId(Integer.valueOf(value));
                        break;

                    }
                    case "tag": {
                        tagIds.add(Integer.parseInt(value));
                        break;

                    }
                    case "size": {
                        size = Integer.parseInt(value);
                    }
                    case "quality": {
                        quality = Integer.parseInt(value);
                    }
                    case "color": {
                        color = value;
                    }
                }
                System.out.println(name + ":" + value);
            } else {
                String fieldName = item.getFieldName();
                String fileName = item.getName();
                productnew.setImg("/images/" + fileName);
                String contentType = item.getContentType();
                boolean isInMemory = item.isInMemory();
                long sizeInBytes = item.getSize();

                InputStream is = item.getInputStream();
//                SaveImageUtil.write(is, fileName);
                System.out.println("DA LUU FILE THANH CONG");
            }

        }
//        productService.add(productnew);
//        int id = productService.getLastedProductId();
//        for (Integer tagId :
//                tagIds) {
//            productService.addTag(id, tagId);
//        }
//        new ProductDetailsService().save(size, color, quality, id, 1);
//        req.setAttribute("notify", "San pham vua duoc them vao");
//        req.getRequestDispatcher("/admin/products.jsp").forward(req, resp);
//        System.out.println(productnew.toString());

        PrintWriter writer = resp.getWriter();

        writer.println(productnew.getName());
        writer.println(color);


    }
}
