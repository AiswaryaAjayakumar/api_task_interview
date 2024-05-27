// To parse this JSON data, do
//
//     final sampleApiResModel = sampleApiResModelFromJson(jsonString);

import 'dart:convert';

SampleApiResModel sampleApiResModelFromJson(String str) => SampleApiResModel.fromJson(json.decode(str));

String sampleApiResModelToJson(SampleApiResModel data) => json.encode(data.toJson());

class SampleApiResModel {
    bool? success;
    Product? product;

    SampleApiResModel({
        this.success,
        this.product,
    });

    factory SampleApiResModel.fromJson(Map<String, dynamic> json) => SampleApiResModel(
        success: json["success"],
        product: json["product"] == null ? null : Product.fromJson(json["product"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "product": product?.toJson(),
    };
}

class Product {
    String? id;
    String? name;
    String? description;
    String? metaTitle;
    String? metaDescription;
    String? metaKeyword;
    String? tag;
    String? model;
    String? sku;
    String? upc;
    String? ean;
    String? jan;
    String? isbn;
    String? mpn;
    String? location;
    String? quantity;
    String? stockStatus;
    dynamic manufacturerId;
    dynamic manufacturer;
    dynamic reward;
    String? points;
    DateTime? dateAvailable;
    String? taxClassId;
    String? weightClassId;
    String? length;
    String? width;
    String? height;
    String? lengthClassId;
    String? subtract;
    List<Review>? reviews;
    String? minimum;
    String? sortOrder;
    String? status;
    DateTime? dateAdded;
    DateTime? dateModified;
    String? viewed;
    String? price;
    String? href;
    String? thumb;
    bool? special;
    int? rating;
    Taxs? taxs;
    List<dynamic>? discounts;
    List<dynamic>? options;
    List<dynamic>? related;

    Product({
        this.id,
        this.name,
        this.description,
        this.metaTitle,
        this.metaDescription,
        this.metaKeyword,
        this.tag,
        this.model,
        this.sku,
        this.upc,
        this.ean,
        this.jan,
        this.isbn,
        this.mpn,
        this.location,
        this.quantity,
        this.stockStatus,
        this.manufacturerId,
        this.manufacturer,
        this.reward,
        this.points,
        this.dateAvailable,
        this.taxClassId,
        this.weightClassId,
        this.length,
        this.width,
        this.height,
        this.lengthClassId,
        this.subtract,
        this.reviews,
        this.minimum,
        this.sortOrder,
        this.status,
        this.dateAdded,
        this.dateModified,
        this.viewed,
        this.price,
        this.href,
        this.thumb,
        this.special,
        this.rating,
        this.taxs,
        this.discounts,
        this.options,
        this.related,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        metaTitle: json["meta_title"],
        metaDescription: json["meta_description"],
        metaKeyword: json["meta_keyword"],
        tag: json["tag"],
        model: json["model"],
        sku: json["sku"],
        upc: json["upc"],
        ean: json["ean"],
        jan: json["jan"],
        isbn: json["isbn"],
        mpn: json["mpn"],
        location: json["location"],
        quantity: json["quantity"],
        stockStatus: json["stock_status"],
        manufacturerId: json["manufacturer_id"],
        manufacturer: json["manufacturer"],
        reward: json["reward"],
        points: json["points"],
        dateAvailable: json["date_available"] == null ? null : DateTime.parse(json["date_available"]),
        taxClassId: json["tax_class_id"],
        weightClassId: json["weight_class_id"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        lengthClassId: json["length_class_id"],
        subtract: json["subtract"],
        reviews: json["reviews"] == null ? [] : List<Review>.from(json["reviews"]!.map((x) => Review.fromJson(x))),
        minimum: json["minimum"],
        sortOrder: json["sort_order"],
        status: json["status"],
        dateAdded: json["date_added"] == null ? null : DateTime.parse(json["date_added"]),
        dateModified: json["date_modified"] == null ? null : DateTime.parse(json["date_modified"]),
        viewed: json["viewed"],
        price: json["price"],
        href: json["href"],
        thumb: json["thumb"],
        special: json["special"],
        rating: json["rating"],
        taxs: json["taxs"] == null ? null : Taxs.fromJson(json["taxs"]),
        discounts: json["discounts"] == null ? [] : List<dynamic>.from(json["discounts"]!.map((x) => x)),
        options: json["options"] == null ? [] : List<dynamic>.from(json["options"]!.map((x) => x)),
        related: json["related"] == null ? [] : List<dynamic>.from(json["related"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "meta_keyword": metaKeyword,
        "tag": tag,
        "model": model,
        "sku": sku,
        "upc": upc,
        "ean": ean,
        "jan": jan,
        "isbn": isbn,
        "mpn": mpn,
        "location": location,
        "quantity": quantity,
        "stock_status": stockStatus,
        "manufacturer_id": manufacturerId,
        "manufacturer": manufacturer,
        "reward": reward,
        "points": points,
        "date_available": "${dateAvailable!.year.toString().padLeft(4, '0')}-${dateAvailable!.month.toString().padLeft(2, '0')}-${dateAvailable!.day.toString().padLeft(2, '0')}",
        "tax_class_id": taxClassId,
        "weight_class_id": weightClassId,
        "length": length,
        "width": width,
        "height": height,
        "length_class_id": lengthClassId,
        "subtract": subtract,
        "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x.toJson())),
        "minimum": minimum,
        "sort_order": sortOrder,
        "status": status,
        "date_added": dateAdded?.toIso8601String(),
        "date_modified": dateModified?.toIso8601String(),
        "viewed": viewed,
        "price": price,
        "href": href,
        "thumb": thumb,
        "special": special,
        "rating": rating,
        "taxs": taxs?.toJson(),
        "discounts": discounts == null ? [] : List<dynamic>.from(discounts!.map((x) => x)),
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x)),
        "related": related == null ? [] : List<dynamic>.from(related!.map((x) => x)),
    };
}

class Review {
    String? author;
    String? text;
    int? rating;
    String? dateAdded;

    Review({
        this.author,
        this.text,
        this.rating,
        this.dateAdded,
    });

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        author: json["author"],
        text: json["text"],
        rating: json["rating"],
        dateAdded: json["date_added"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "text": text,
        "rating": rating,
        "date_added": dateAdded,
    };
}

class Taxs {
    TaxClass? taxClass;
    TaxRate? taxRate;

    Taxs({
        this.taxClass,
        this.taxRate,
    });

    factory Taxs.fromJson(Map<String, dynamic> json) => Taxs(
        taxClass: json["tax_class"] == null ? null : TaxClass.fromJson(json["tax_class"]),
        taxRate: json["tax_rate"] == null ? null : TaxRate.fromJson(json["tax_rate"]),
    );

    Map<String, dynamic> toJson() => {
        "tax_class": taxClass?.toJson(),
        "tax_rate": taxRate?.toJson(),
    };
}

class TaxClass {
    int? taxClassId;

    TaxClass({
        this.taxClassId,
    });

    factory TaxClass.fromJson(Map<String, dynamic> json) => TaxClass(
        taxClassId: json["tax_class_id"],
    );

    Map<String, dynamic> toJson() => {
        "tax_class_id": taxClassId,
    };
}

class TaxRate {
    int? taxRateId;

    TaxRate({
        this.taxRateId,
    });

    factory TaxRate.fromJson(Map<String, dynamic> json) => TaxRate(
        taxRateId: json["tax_rate_id"],
    );

    Map<String, dynamic> toJson() => {
        "tax_rate_id": taxRateId,
    };
}
