package com.nlu.controller;

import com.nlu.model.Product;
import com.nlu.service.ProductService;
import com.nlu.service.SaveImageUtil;
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
import java.util.Iterator;
import java.util.List;

@WebServlet(urlPatterns = "/new-product")
public class NewProductController extends HttpServlet {

    ProductService productService = new ProductService();

    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
//        String productName = req.getParameter("product_name");
//        String productPrice = req.getParameter("product_price");
//        String description = req.getParameter("product_description");
//        String category = req.getParameter("category");
//        String[] tags = req.getParameterValues("tag");
//
//       Product product = new Product();
//       product.setName(productName);
//       product.setPrice(Integer.valueOf(productPrice));
//       product.setDescription(description);
//       product.setCategoryId(Integer.parseInt(category));
//       product.setSalesPercent(0.0);
//       productService.add(product);
//

        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

// Configure a repository (to ensure a secure temp location is used)
        ServletContext servletContext = this.getServletConfig().getServletContext();
        File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
        factory.setRepository(repository);

// Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

// Parse the request
        List<FileItem> items = upload.parseRequest(req);

        Iterator<FileItem> iter = items.iterator();
        while (iter.hasNext()) {
            FileItem item = iter.next();

            if (item.isFormField()) {
                String name = item.getFieldName();
                String value = item.getString();
//                System.out.println(name + "\t" + value);
            } else {
                String fieldName = item.getFieldName();
                String fileName = item.getName();
                String contentType = item.getContentType();
                boolean isInMemory = item.isInMemory();
                long sizeInBytes = item.getSize();
                System.out.println(fieldName + contentType + isInMemory + sizeInBytes);
                InputStream is = item.getInputStream();
//                OutputStream os = new BufferedOutputStream(new FileOutputStream("E:\\web-servlet\\WebProject\\src\\main\\webapp\\admin\\images\\" + fileName));
                SaveImageUtil.write(is,fileName);
                System.out.println("DA LUU FILE THANH CONG");
            }
        }

    }
}
