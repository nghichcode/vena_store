class CONFIG {
  // static final String host = 'http://192.168.0.101/';
  static final String host = 'http://nghichcode.com/';
  static final String apiPath = 'ignite-api/api/';
  static final String imagePath = 'get_image/';
  static final Map<String, int> maxSize = {'width': 768, 'height': 1024};
  static final String encryptionKey = 'eFQlByOIVdLnvhxus91H2dIqKq5W8OzF';
  static final int schemaVersion = 2;

  static String getLocation(String name) {
    return host + apiPath + name;
  }

  static String getImage(String name) {
    if (name == null) {
      return null;
    }
    name = name.split('.').join('/');
    return host + apiPath + imagePath + name;
  }
}

class PATH {
  static const SEARCH_PRODUCT = "search/search_store_product";
  static const SEARCH_STORE_PRODUCT = "search/search_store_product";
  static const ADD_PRODUCT = "search/add_product_post";
}
