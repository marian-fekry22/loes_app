
class Discover_Index {


 final   just_dropped_products;
 final section1;
 final String brand_order_1;
 final products_of_brand_order_1;
 final section2;
 final String brand_order_2;
 final products_of_brand_order_2;
 final new_arrivals_products;
 final section3;
 final String brand_order_3;
 final products_of_brand_order_3;
 final section4;
 final String brand_order_4;
 final products_of_brand_order_4;
 final trending_products;
// final section5;
// final brand_order_5;
// final products_of_brand_order_5;
 final shop_by_brand;
 final spaced_out_products;
 final shop_by_product;

  Discover_Index({this.just_dropped_products,
    this.section1,
    this.brand_order_1, this.products_of_brand_order_1,
    this.section2, this.brand_order_2,
    this.products_of_brand_order_2, this.new_arrivals_products,
    this.section3,
    this.brand_order_3,
    this.products_of_brand_order_3,
    this.section4,
    this.brand_order_4, this.products_of_brand_order_4,
    this.trending_products, this.shop_by_brand,
    this.shop_by_product, this.spaced_out_products,
  });

  factory Discover_Index.fromJson(Map<String, dynamic> json) {

//print(json['brand_order_1']);
//    print(dataList[0]);
    return Discover_Index(
      just_dropped_products: json['just_dropped_products'],
      section1:json['section1'],
      brand_order_1:json['brand_order_1'],
      products_of_brand_order_1:json['products_of_brand_order_1'],

      section2:json['section2'],
      brand_order_2:json['brand_order_2'],
      products_of_brand_order_2:json['products_of_brand_order_2'],
      new_arrivals_products:json['new_arrivals_products'],
      section3:json['section3'],

      brand_order_3:json['brand_order_3'],
      products_of_brand_order_3:json['products_of_brand_order_3'],
      section4:json['section4'],
      brand_order_4:json['brand_order_4'],
      products_of_brand_order_4:json['products_of_brand_order_4'],
      trending_products:json['trending_products'],
      shop_by_brand:json['shop_by_brand'],
      shop_by_product:json['shop_by_product'],
      spaced_out_products:json['spaced_out_products'],


    );


  }

}

