const String _baseUrl = "https://fakestoreapi.com";

class Endpoints {
  static String getAllProducts() => _baseUrl + "/products";
  static String getProduct(int id) => _baseUrl + "/products/$id";
  static String getAllCategories() => _baseUrl + "/products/categories";
  static String getProductsOfcategory(String category) =>
      _baseUrl + "/products/category/$category";
  static String getCart(int id) => _baseUrl + "/carts/$id";
  static String getUser(int id) => _baseUrl + "/users/$id";
}
