public interface ProductDAO{
    public ArrayList<Product> getListProductByCategory(int id);

    public ProductDetails getProductDetails(int id);


    public ArrayList<Product> getList();

    public ArrayList<Product>  getListByPage(ArrayList<Product> arr,int start,int end);

}