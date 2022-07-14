class HomeModel {
  bool? success;
  Data? data;
  String? message;
  String? type;

  HomeModel({this.success, this.data, this.message, this.type});

  HomeModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    data['type'] = type;
    return data;
  }
}

class Data {
  List<Advertisments>? advertisments;
  List<Packages>? packages;
  List<Sections>? sections;

  Data({this.advertisments, this.packages, this.sections});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['advertisments'] != null) {
      advertisments = <Advertisments>[];
      json['advertisments'].forEach((v) {
        advertisments!.add(Advertisments.fromJson(v));
      });
    }
    if (json['packages'] != null) {
      packages = <Packages>[];
      json['packages'].forEach((v) {
        packages!.add(Packages.fromJson(v));
      });
    }
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (advertisments != null) {
      data['advertisments'] = advertisments!.map((v) => v.toJson()).toList();
    }
    if (packages != null) {
      data['packages'] = packages!.map((v) => v.toJson()).toList();
    }
    if (sections != null) {
      data['sections'] = sections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Advertisments {
  int? id;
  String? thumbnail;
  int? productId;
  int? packageId;
  String? page;
  int? row;
  int? sectionId;
  int? giftId;
  int? offerId;
  int? type;
  int? userId;
  String? imageUrl;
  String? thumbnailUrl;
  int? rating;
  int? reviewsCount;
  RatingText? ratingText;
  String? product;
  String? package;

  Advertisments(
      {this.id,
      this.thumbnail,
      this.productId,
      this.packageId,
      this.page,
      this.row,
      this.sectionId,
      this.giftId,
      this.offerId,
      this.type,
      this.userId,
      this.imageUrl,
      this.thumbnailUrl,
      this.rating,
      this.reviewsCount,
      this.ratingText,
      this.product,
      this.package});

  Advertisments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    thumbnail = json['thumbnail'];
    productId = json['product_id'];
    packageId = json['package_id'];
    page = json['page'];
    row = json['row'];
    sectionId = json['section_id'];
    giftId = json['gift_id'];
    offerId = json['offer_id'];
    type = json['type'];
    userId = json['user_id'];
    imageUrl = json['image_url'];
    thumbnailUrl = json['thumbnail_url'];
    rating = json['rating'];
    reviewsCount = json['reviews_count'];
    ratingText = json['rating_text'] != null
        ? RatingText.fromJson(json['rating_text'])
        : null;
    product = json['product'];
    package = json['package'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['thumbnail'] = thumbnail;
    data['product_id'] = productId;
    data['package_id'] = packageId;
    data['page'] = page;
    data['row'] = row;
    data['section_id'] = sectionId;
    data['gift_id'] = giftId;
    data['offer_id'] = offerId;
    data['type'] = type;
    data['user_id'] = userId;
    data['image_url'] = imageUrl;
    data['thumbnail_url'] = thumbnailUrl;
    data['rating'] = rating;
    data['reviews_count'] = reviewsCount;
    if (ratingText != null) {
      data['rating_text'] = ratingText!.toJson();
    }
    data['product'] = product;
    data['package'] = package;
    return data;
  }
}

class RatingText {
  String? color;
  String? text;

  RatingText({this.color, this.text});

  RatingText.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['color'] = color;
    data['text'] = text;
    return data;
  }
}

class Packages {
  int? id;
  String? name;
  double? price;
  String? description;
  int? rating;
  int? deliveryCharge;
  int? tax;
  double? total;
  double? totalPartPayment;
  String? headerImageUrl;
  String? displayRating;
  String? vendorProfileUrl;
  String? vendorCompanyName;
  double? totalProductsPrice;
  String? type;
  double? totalDiscount;
  int? reviewsCount;
  RatingText? ratingText;
  int? taxPrice;
  List<Products>? products;

  Packages(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.rating,
      this.deliveryCharge,
      this.tax,
      this.total,
      this.totalPartPayment,
      this.headerImageUrl,
      this.displayRating,
      this.vendorProfileUrl,
      this.vendorCompanyName,
      this.totalProductsPrice,
      this.type,
      this.totalDiscount,
      this.reviewsCount,
      this.ratingText,
      this.taxPrice,
      this.products});

  Packages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    rating = json['rating'];
    deliveryCharge = json['delivery_charge'];
    tax = json['tax'];
    total = json['total'];
    totalPartPayment = json['total_part_payment'];
    headerImageUrl = json['header_image_url'];
    displayRating = json['display_rating'];
    vendorProfileUrl = json['vendor_profile_url'];
    vendorCompanyName = json['vendor_company_name'];
    totalProductsPrice = json['total_products_price'];
    type = json['type'];
    totalDiscount = double.parse(json['total_discount'].toString());
    reviewsCount = json['reviews_count'];
    ratingText = json['rating_text'] != null
        ? RatingText.fromJson(json['rating_text'])
        : null;
    taxPrice = json['tax_price'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['description'] = description;
    data['rating'] = rating;
    data['delivery_charge'] = deliveryCharge;
    data['tax'] = tax;
    data['total'] = total;
    data['total_part_payment'] = totalPartPayment;
    data['header_image_url'] = headerImageUrl;
    data['display_rating'] = displayRating;
    data['vendor_profile_url'] = vendorProfileUrl;
    data['vendor_company_name'] = vendorCompanyName;
    data['total_products_price'] = totalProductsPrice;
    data['type'] = type;
    data['total_discount'] = totalDiscount;
    data['reviews_count'] = reviewsCount;
    if (ratingText != null) {
      data['rating_text'] = ratingText!.toJson();
    }
    data['tax_price'] = taxPrice;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  int? packageId;
  int? productId;
  double? partPayment;
  double? price;
  Product? product;

  Products(
      {this.id,
      this.packageId,
      this.productId,
      this.partPayment,
      this.price,
      this.product});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    packageId = json['package_id'];
    productId = json['product_id'];
    partPayment = double.parse(json['part_payment'].toString());
    price = double.parse(json['price'].toString());
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['package_id'] = packageId;
    data['product_id'] = productId;
    data['part_payment'] = partPayment;
    data['price'] = double.parse(price.toString());
    if (product != null) {
      data['product'] = product!.toJson();
    }
    return data;
  }
}

class Product {
  int? id;
  String? name;
  String? description;
  int? categoryId;
  int? currencyId;
  double? price;
  double? deliveryCharges;
  String? extraAttributes;
  String? paymentMethods;
  String? deliveryMethods;
  double? discount;
  double? total;
  double? rating;
  double? tax;
  String? bannerImageUrl;
  bool? isFavourite;
  double? discountPrice;
  double? taxPrice;
  String? type;
  int? inStock;
  User? user;

  Product(
      {this.id,
      this.name,
      this.description,
      this.categoryId,
      this.currencyId,
      this.price,
      this.deliveryCharges,
      this.extraAttributes,
      this.paymentMethods,
      this.deliveryMethods,
      this.discount,
      this.total,
      this.rating,
      this.tax,
      this.bannerImageUrl,
      this.isFavourite,
      this.discountPrice,
      this.taxPrice,
      this.type,
      this.inStock,
      this.user});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    categoryId = json['category_id'];
    currencyId = json['currency_id'];
    price = double.parse(json['price'].toString());
    deliveryCharges = double.parse(json['delivery_charges'].toString());
    extraAttributes = json['extra_attributes'];
    paymentMethods = json['payment_methods'];
    deliveryMethods = json['delivery_methods'];
    discount = double.parse(json['discount'].toString());
    total = double.parse(json['total'].toString());
    rating = double.parse(json['rating'].toString());
    tax = double.parse(json['tax'].toString());
    bannerImageUrl = json['banner_image_url'];
    isFavourite = json['is_favourite'];
    discountPrice = double.parse(json['discount_price'].toString());
    taxPrice = double.parse(json['tax_price'].toString());
    type = json['type'];
    inStock = json['in_stock'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['category_id'] = categoryId;
    data['currency_id'] = currencyId;
    data['price'] = price;
    data['delivery_charges'] = deliveryCharges;
    data['extra_attributes'] = extraAttributes;
    data['payment_methods'] = paymentMethods;
    data['delivery_methods'] = deliveryMethods;
    data['discount'] = discount;
    data['total'] = total;
    data['rating'] = rating;
    data['tax'] = tax;
    data['banner_image_url'] = bannerImageUrl;
    data['is_favourite'] = isFavourite;
    data['discount_price'] = discountPrice;
    data['tax_price'] = taxPrice;
    data['type'] = type;
    data['in_stock'] = inStock;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? currentTeamId;
  String? profilePhotoPath;
  String? phone;
  int? countryId;
  int? age;
  int? gender;
  String? dob;
  String? companyName;
  String? username;
  int? rating;
  int? reviews;
  String? address;
  String? description;
  double? balance;
  double? interest;
  double? like;
  double? dislike;
  String? businessLicense;
  double? commission;
  String? contract;
  int? dobStatus;
  int? isSupport;
  String? token;
  int? chances;
  String? googleId;
  String? fbId;
  String? appleId;
  String? twitterId;
  String? profileUrl;
  CountryData? countryData;
  String? defaultAddress;
  int? totalPurchasedItems;
  int? totalFavouriteItems;
  int? totalPurchased;
  String? businessLicenseUrl;
  String? contractUrl;
  List<VendorImages>? vendorImages;
  int? reviewsCount;
  RatingText? ratingText;
  double? avgProductPrice;
  double? avgOffersDiscount;
  String? nearBy;

  User(
      {this.id,
      this.name,
      this.email,
      this.currentTeamId,
      this.profilePhotoPath,
      this.phone,
      this.countryId,
      this.age,
      this.gender,
      this.dob,
      this.companyName,
      this.username,
      this.rating,
      this.reviews,
      this.address,
      this.description,
      this.balance,
      this.interest,
      this.like,
      this.dislike,
      this.businessLicense,
      this.commission,
      this.contract,
      this.dobStatus,
      this.isSupport,
      this.token,
      this.chances,
      this.googleId,
      this.fbId,
      this.appleId,
      this.twitterId,
      this.profileUrl,
      this.countryData,
      this.defaultAddress,
      this.totalPurchasedItems,
      this.totalFavouriteItems,
      this.totalPurchased,
      this.businessLicenseUrl,
      this.contractUrl,
      this.vendorImages,
      this.reviewsCount,
      this.ratingText,
      this.avgProductPrice,
      this.avgOffersDiscount,
      this.nearBy});

  User.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    // name = json['name'];
    // email = json['email'];
    // currentTeamId = json['current_team_id'];
    // profilePhotoPath = json['profile_photo_path'];
    // phone = json['phone'];
    // countryId = json['country_id'];
    // age = json['age'];
    // gender = json['gender'];
    // dob = json['dob'];
    // companyName = json['company_name'];
    // username = json['username'];
    // rating = json['rating'];
    // reviews = json['reviews'];
    // address = json['address'];
    // description = json['description'];
    // balance = double.parse(json['balance'].toString());
    // interest = double.parse(json['interest'].toString());
    // like = double.parse(json['like'].toString());
    // dislike = double.parse(json['dislike'].toString());
    // businessLicense = json['business_license'];
    // commission = json['commission'];
    // contract = json['contract'];
    // dobStatus = json['dob_status'];
    // isSupport = json['is_support'];
    // token = json['token'];
    // chances = json['chances'];
    // googleId = json['google_id'];
    // fbId = json['fb_id'];
    // appleId = json['apple_id'];
    // twitterId = json['twitter_id'];
    // profileUrl = json['profile_url'];
    // countryData = json['country_data'] != null
    //     ? CountryData.fromJson(json['country_data'])
    //     : null;
    // defaultAddress = json['default_address'];
    // totalPurchasedItems = json['total_purchased_items'];
    // totalFavouriteItems = json['total_favourite_items'];
    // totalPurchased = json['total_purchased'];
    // businessLicenseUrl = json['business_license_url'];
    // contractUrl = json['contract_url'];
    // if (json['vendor_images'] != null) {
    //   vendorImages = <VendorImages>[];
    //   json['vendor_images'].forEach((v) {
    //     vendorImages!.add(VendorImages.fromJson(v));
    //   });
    // }
    // reviewsCount = json['reviews_count'];
    // ratingText = json['rating_text'] != null
    //     ? RatingText.fromJson(json['rating_text'])
    //     : null;
    // avgProductPrice = json['avg_product_price'];
    // avgOffersDiscount = json['avg_offers_discount'];
    // nearBy = json['near_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['current_team_id'] = currentTeamId;
    data['profile_photo_path'] = profilePhotoPath;
    data['phone'] = phone;
    data['country_id'] = countryId;
    data['age'] = age;
    data['gender'] = gender;
    data['dob'] = dob;
    data['company_name'] = companyName;
    data['username'] = username;
    data['rating'] = rating;
    data['reviews'] = reviews;
    data['address'] = address;
    data['description'] = description;
    data['balance'] = balance;
    data['interest'] = interest;
    data['like'] = like;
    data['dislike'] = dislike;
    data['business_license'] = businessLicense;
    data['commission'] = commission;
    data['contract'] = contract;
    data['dob_status'] = dobStatus;
    data['is_support'] = isSupport;
    data['token'] = token;
    data['chances'] = chances;
    data['google_id'] = googleId;
    data['fb_id'] = fbId;
    data['apple_id'] = appleId;
    data['twitter_id'] = twitterId;
    data['profile_url'] = profileUrl;
    if (countryData != null) {
      data['country_data'] = countryData!.toJson();
    }
    data['default_address'] = defaultAddress;
    data['total_purchased_items'] = totalPurchasedItems;
    data['total_favourite_items'] = totalFavouriteItems;
    data['total_purchased'] = totalPurchased;
    data['business_license_url'] = businessLicenseUrl;
    data['contract_url'] = contractUrl;
    if (vendorImages != null) {
      data['vendor_images'] = vendorImages!.map((v) => v.toJson()).toList();
    }
    data['reviews_count'] = reviewsCount;
    if (ratingText != null) {
      data['rating_text'] = ratingText!.toJson();
    }
    data['avg_product_price'] = avgProductPrice;
    data['avg_offers_discount'] = avgOffersDiscount;
    data['near_by'] = nearBy;
    return data;
  }
}

class CountryData {
  int? id;
  String? countryCode;
  String? countryName;
  String? dialCode;
  String? flagUrl;

  CountryData(
      {this.id,
      this.countryCode,
      this.countryName,
      this.dialCode,
      this.flagUrl});

  CountryData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryCode = json['country_code'];
    countryName = json['country_name'];
    dialCode = json['dial_code'];
    flagUrl = json['flag_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['country_code'] = countryCode;
    data['country_name'] = countryName;
    data['dial_code'] = dialCode;
    data['flag_url'] = flagUrl;
    return data;
  }
}

class VendorImages {
  String? imageUrl;

  VendorImages({this.imageUrl});

  VendorImages.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    return data;
  }
}

class Sections {
  int? id;
  String? title;
  String? image;
  String? headerImage;
  int? userId;
  String? imageUrl;
  String? headerImageUrl;

  Sections(
      {this.id,
      this.title,
      this.image,
      this.headerImage,
      this.userId,
      this.imageUrl,
      this.headerImageUrl});

  Sections.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    headerImage = json['header_image'];
    userId = json['user_id'];
    imageUrl = json['image_url'];
    headerImageUrl = json['header_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['header_image'] = headerImage;
    data['user_id'] = userId;
    data['image_url'] = imageUrl;
    data['header_image_url'] = headerImageUrl;
    return data;
  }
}
