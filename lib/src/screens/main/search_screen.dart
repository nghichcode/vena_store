import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vena_store/src/components/pure.dart';
import 'package:vena_store/src/components/search_bar.dart';
import 'package:vena_store/src/utils/config.dart';

final authKey =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1aWQiOiIyMSIsInNlY3JldCI6ImFmZjNkMGM4YzBhZDM4NTYzMTAxYjE4YzFkODg1MGY3IiwidGltZXN0YW1wIjoxNTg3MTUwNDk2fQ.vL-eEf8W2xb4_5f0ilsKKFZzfm1c-MZBKczgBQp95IY';

class MainSearch extends StatefulWidget {
  @override
  _MainSearchState createState() => _MainSearchState();
}

class _MainSearchState extends State<MainSearch> {
  List<StoreProduct> list = List();
  bool isLoading = false;

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response = await http
        .post(CONFIG.getLocation(PATH.SEARCH_STORE_PRODUCT), headers: {
      'authorization': authKey
    }, body: {
      'limit': '20',
      'offset': '0',
      'store_search': '0',
      'search': ''
    });
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body) as Map<String, dynamic>;
      if (responseBody['store_products'] != null &&
          responseBody['store_products']['data'] != null &&
          responseBody['store_products']['data'] is List) {
        setState(() {
          isLoading = false;
          list = (responseBody['store_products']['data'] as List)
              .map((data) => new StoreProduct.fromJson(data))
              .toList();
        });
      } else {
        setState(() {
          isLoading = false;
        });
      }
    } else {
      setState(() {
        isLoading = false;
      });
      throw Exception('Failed to load photos');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(),
      body: Center(
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
                leading: ClipOval(
                  child: new Image.network(
                    CONFIG.getImage(list[index].img_url),
                    fit: BoxFit.cover,
                    height: 40.0,
                    width: 40.0,
                  ),
                ),
                subtitle: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flexible(
                        flex: 8,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index].product_name),
                            Text(list[index].gtin_code),
                            Text('EXP: ${list[index].exp}'),
                            Text(list[index].storename),
                          ],
                        )),
                    Flexible(
                        flex: 4,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Wrap(
                                children: [
                                  Icon(
                                    Icons.check_circle_rounded,
                                    color: Colors.red.shade400,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_outline_rounded,
                                    color: Colors.red.shade400,
                                    size: 16.0,
                                  ),
                                ],
                              ),
                            ),
                            Text(list[index].price),
                            Container(
                              child: Text(
                                '${list[index].price} m',
                                style: TextStyle(color: Colors.white),
                              ),
                              padding: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  color: Colors.red.shade600,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ],
                        ))
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 36,
        ),
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          AlertDialog alert = AlertDialog(
            title: Text('OK'),
            content: Text('cameraScanResult'),
          );
          showDialog(
            context: context,
            builder: (context) => alert,
          );
        },
      ),
    );
  }
}

class StoreProduct {
  final String product_id;
  final String gtin_code;
  final String party_name;
  final String city;
  final String street_address_one;
  final String street_address_two;
  final String street_address_three;
  final String person_name;
  final String email;
  final String phone;
  final String product_price;
  final String product_name;
  final String product_name_alpha;
  final String product_rate;
  final String product_rate_count;
  final String description;
  final String img_url;
  final String product_update_at;
  final String is_approved;
  final String is_trusted;
  final String id;
  final String store_product_id;
  final String price;
  final String rate;
  final String rate_count;
  final String quantity;
  final String exp;
  final String update_at;
  final String store_id;
  final String storename;
  final String user_id;
  final String location;
  final String hide_detail;
  final String store_description;

  StoreProduct._({
    this.product_id,
    this.gtin_code,
    this.party_name,
    this.city,
    this.street_address_one,
    this.street_address_two,
    this.street_address_three,
    this.person_name,
    this.email,
    this.phone,
    this.product_price,
    this.product_name,
    this.product_name_alpha,
    this.product_rate,
    this.product_rate_count,
    this.description,
    this.img_url,
    this.product_update_at,
    this.is_approved,
    this.is_trusted,
    this.id,
    this.store_product_id,
    this.price,
    this.rate,
    this.rate_count,
    this.quantity,
    this.exp,
    this.update_at,
    this.store_id,
    this.storename,
    this.user_id,
    this.location,
    this.hide_detail,
    this.store_description,
  });

  factory StoreProduct.fromJson(Map<String, dynamic> json) {
    return new StoreProduct._(
      product_id: json['product_id'],
      gtin_code: json['gtin_code'],
      party_name: json['party_name'],
      city: json['city'],
      street_address_one: json['street_address_one'],
      street_address_two: json['street_address_two'],
      street_address_three: json['street_address_three'],
      person_name: json['person_name'],
      email: json['email'],
      phone: json['phone'],
      product_price: json['product_price'],
      product_name: json['product_name'],
      product_name_alpha: json['product_name_alpha'],
      product_rate: json['product_rate'],
      product_rate_count: json['product_rate_count'],
      description: json['description'],
      img_url: json['img_url'],
      product_update_at: json['product_update_at'],
      is_approved: json['is_approved'],
      is_trusted: json['is_trusted'],
      id: json['id'],
      store_product_id: json['store_product_id'],
      price: json['price'],
      rate: json['rate'],
      rate_count: json['rate_count'],
      quantity: json['quantity'],
      exp: json['exp'],
      update_at: json['update_at'],
      store_id: json['store_id'],
      storename: json['storename'],
      user_id: json['user_id'],
      location: json['location'],
      hide_detail: json['hide_detail'],
      store_description: json['store_description'],
    );
  }

  @override
  String toString() {
    return 'StoreProduct{product_id: $product_id, gtin_code: $gtin_code, party_name: $party_name, city: $city, street_address_one: $street_address_one, street_address_two: $street_address_two, street_address_three: $street_address_three, person_name: $person_name, email: $email, phone: $phone, product_price: $product_price, product_name: $product_name, product_name_alpha: $product_name_alpha, product_rate: $product_rate, product_rate_count: $product_rate_count, description: $description, img_url: $img_url, product_update_at: $product_update_at, is_approved: $is_approved, is_trusted: $is_trusted, id: $id, store_product_id: $store_product_id, price: $price, rate: $rate, rate_count: $rate_count, quantity: $quantity, exp: $exp, update_at: $update_at, store_id: $store_id, storename: $storename, user_id: $user_id, location: $location, hide_detail: $hide_detail, store_description: $store_description}';
  }
}
