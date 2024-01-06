//import 'package:recipes_app/models/category.dart';
import 'package:firebase_auth_demo/models/category.dart';
import 'package:firebase_auth_demo/models/equipment.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



List<CategoryRent> dummyCategories = [
  // ignore: prefer_const_constructors
  CategoryRent(
      id: "id_tent",
      title: "Tent",
      images:
          "https://sibayakadventure.com/wp-content/uploads/2020/07/IMG_20200719_091941.jpg"),
  CategoryRent(
    id: "id_carrier",
    title: "Carrier",
    images:
    "https://www.bhinneka.com/blog/wp-content/uploads/2022/09/Rekomendasi-Tas-Gunung-Terbaik-Eiger-Eliptic-Solaris-500x500.jpg"
        //"https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-10249841/consina_flash_sale----_carrier_consina_alpine_55_liter_-_tas_gunung_consina_alpine_original__full04_o6jz0kuy.jpg",
  ),
  CategoryRent(
    id: "id_shoe",
    title: "Shoe",
    images: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNYijhdXFejHu7dcwSoJjAB__ENsaHnVNPlQ&usqp=CAU",
  ),
  CategoryRent(
    id: "id_jacket",
    title: "Jacket",
    images:
        "https://superlive.id/storage/superadventure/2020/11/24/4a77738afea1.jpg",
  ),
  CategoryRent(
    id: "id_sleeping_bag",
    title: "Sleeping bag",
    images:
        "https://altongoods.com/cdn/shop/files/AGUSA22ShootLR-109_2000xcopy.jpg?v=1698370319&width=550",
  ),
  CategoryRent(
    id: "id_other_equipment",
    title: "Other Equipment",
    images:
        "https://cdn.idntimes.com/content-images/community/2019/07/images-9-8f32c59bba6bd7f54b8b7c0b7c015905.jpeg",
  )
];

List<Equipment> dummyEquipment = [
  // data tenda
  Equipment(
    id: DateTime.now().toString(),
    title: "Tenda Eiger",
    category: "id_tent",
    price: 15000,
    information:
        "tenda Dome memiliki ciri khas pada bentuk melengkung di masing-masing tiang penyangga, dengan dua atau tiga kutub tiang yang membujur setengah lingkaran untuk menyangga tiang.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://thumbor.sirclocdn.com/unsafe/640x640/filters:format(webp)/magento.eigeradventure.com/media/catalog/product/cache/cd1064cf96e0921aa13324f8e3f8fe30/g/u/guardian_1_1.jpg",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Tenda Consina",
    category: "id_tent",
    price: 15000,
    information:
        "tenda Dome memiliki ciri khas pada bentuk melengkung di masing-masing tiang penyangga, dengan dua atau tiga kutub tiang yang membujur setengah lingkaran untuk menyangga tiang.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 20,
    imageUrl:
        "https://shop.consina-adventure.com/image/cache/data/product/TENT/magnum%204/2021/magnum-4-Juli2021-OR-1-800x800.jpg",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Tenda Arei",
    category: "id_tent",
    price: 10000,
    information:
        "tenda Dome memiliki ciri khas pada bentuk melengkung di masing-masing tiang penyangga, dengan dua atau tiga kutub tiang yang membujur setengah lingkaran untuk menyangga tiang.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 25,
    imageUrl:
        "https://lzd-img-global.slatic.net/g/p/8beea42d602f912fb25ac12fc9eb6436.jpg_720x720q80.jpg",
  ),
  // data tas
  Equipment(
    id: DateTime.now().toString(),
    title: "Carrier Eiger",
    category: "id_carrier",
    price: 15000,
    information:
        "produk Eiger menggunakan bahan cordura, polyester, dan nylon yang ringan tetapi kuat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 25,
    imageUrl:
        "https://down-id.img.susercontent.com/file/3a297b70913b0569c3485eba2197c1f2",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Carrier Consina",
    category: "id_carrier",
    price: 15000,
    information:
        "produk Eiger menggunakan bahan cordura, polyester, dan nylon yang ringan tetapi kuat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 15,
    imageUrl:
        "https://www.consina.com/wp-content/uploads/2022/07/overland-track-dbl-1600x1600.jpg",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Carrier Arei",
    category: "id_carrier",
    price: 15000,
    information:
        "produk Eiger menggunakan bahan cordura, polyester, dan nylon yang ringan tetapi kuat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 25,
    imageUrl:
        "https://down-id.img.susercontent.com/file/id-11134207-7qul2-li4e3mmlx4h928_tn",
  ),
  // sepatu
  Equipment(
    id: DateTime.now().toString(),
    title: "Shoe Eiger",
    category: "id_shoe",
    price: 15000,
    information:
        "Sepatu akan memberikan perlindungan untuk kaki kita selama beraktivitas di luar ruangan atau alam terbuka",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://ds393qgzrxwzn.cloudfront.net/resize/c500x500/cat1/img/images/0/sOsow8ncTn.jpg",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Shoe Consina",
    category: "id_shoe",
    price: 15000,
    information:
        "Sepatu akan memberikan perlindungan untuk kaki kita selama beraktivitas di luar ruangan atau alam terbuka",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://down-id.img.susercontent.com/file/3d6acdb6206558c99fb7366b7721ff54",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Shoe Arei",
    category: "id_shoe",
    price: 15000,
    information:
        "Sepatu akan memberikan perlindungan untuk kaki kita selama beraktivitas di luar ruangan atau alam terbuka",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://img.ws.mms.shopee.co.id/56362e6aa77ccbda9503283f62fb6156",
  ),
  // jaket
  Equipment(
    id: DateTime.now().toString(),
    title: "Jacket Eiger",
    category: "id_jacket",
    price: 15000,
    information:
        "bahan yang digunakan dalam pembuatan jaket EIGER windproof atau antiangin adalah polyester. Keunggulan dari bahan ini adalah tahan lama, tidak mudah berkerut, dan hangat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/1/21/3e64fd08-e234-4a26-8354-61c9272a0381.jpg",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Jacket Consina",
    category: "id_jacket",
    price: 15000,
    information:
        "bahan yang digunakan dalam pembuatan jaket EIGER windproof atau antiangin adalah polyester. Keunggulan dari bahan ini adalah tahan lama, tidak mudah berkerut, dan hangat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://down-id.img.susercontent.com/file/c4a4dc4550a0608c5a2bdf862448373a",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Jacket Arei",
    category: "id_jacket",
    price: 15000,
    information:
        "bahan yang digunakan dalam pembuatan jaket EIGER windproof atau antiangin adalah polyester. Keunggulan dari bahan ini adalah tahan lama, tidak mudah berkerut, dan hangat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/12/22/2304784b-0a8f-4cb8-adc9-9f318851a4ee.jpg",
  ),
  // sb
  Equipment(
    id: DateTime.now().toString(),
    title: "Sleeping Bag Eiger",
    category: "id_sleeping_bag",
    price: 15000,
    information:
        "bahan yang digunakan dalam pembuatan jaket EIGER windproof atau antiangin adalah polyester. Keunggulan dari bahan ini adalah tahan lama, tidak mudah berkerut, dan hangat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://id-test-11.slatic.net/p/38f75ec90badb4c9798302f317843a88.jpg",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Sleeping Bag Consina",
    category: "id_sleeping_bag",
    price: 15000,
    information:
        "bahan yang digunakan dalam pembuatan jaket EIGER windproof atau antiangin adalah polyester. Keunggulan dari bahan ini adalah tahan lama, tidak mudah berkerut, dan hangat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://lzd-img-global.slatic.net/g/p/242ff6e5ba835a8ce0f69c578063d6e9.jpg_720x720q80.jpg",
  ),
  Equipment(
    id: DateTime.now().toString(),
    title: "Sleeping Bag Arei",
    category: "id_sleeping_bag",
    price: 15000,
    information:
        "bahan yang digunakan dalam pembuatan jaket EIGER windproof atau antiangin adalah polyester. Keunggulan dari bahan ini adalah tahan lama, tidak mudah berkerut, dan hangat.",
    day: ["1 day", "2 Day", "3 Day", "4 Day"],
    duration: 10,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX72sDVobizzmBsOfNPQZBvPoGryOS9L6__7Rb2S05NktQut3zc_pVxGctQ2slT_FAJfU&usqp=CAU",
  ),
];
