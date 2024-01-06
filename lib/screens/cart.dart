import 'package:firebase_auth_demo/shared/theme.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String brand;
  final String itemName;
  final String price;

  CardItem({required this.brand, required this.itemName, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 316,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xFFE8ECF4),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Center(
                      child: Container(
                        width: 120,
                        height: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/tenda_dome.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            brand,
                            style: TextStyle(),
                          ),
                          SizedBox(height: 10),
                          Text(
                            itemName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            price,
                            style: TextStyle(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  // Fungsi untuk mengurangi jumlah produk
                                },
                              ),
                              Text('10'),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  // Fungsi untuk menambah jumlah produk
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () {
                                  // Fungsi untuk menghapus produk
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cart extends StatelessWidget {
  const Cart({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "My Cart",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          CardItem(brand: "nama product", itemName: "nama item", price: "9000"),
          CardItem(brand: "nama product", itemName: "nama item", price: "9000"),
          CardItem(brand: "nama product", itemName: "nama item", price: "9000"),
          CardItem(brand: "nama product", itemName: "nama item", price: "9000"),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            // Fungsi untuk checkout
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Checkout",style: TextStyle(color: Colors.white),),
              Text(
                "Total: Rp36,000",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
  fixedSize: Size(316, 56),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  primary: PrimerBlackColor, // Ubah warna menjadi biru
),
        ),
      ),
    );
  }
}
