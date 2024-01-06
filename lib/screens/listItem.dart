import 'package:firebase_auth_demo/shared/dummy_data.dart';
import 'package:flutter/material.dart';

import '../../models/equipment.dart';


class ListItem extends StatefulWidget {
   static String routeName = '/listItem';
  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isFav = false; // validasi tombol favorit

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> argsEquipment =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    List<Equipment> filterEquipment = dummyEquipment.where((equipment) {
      return equipment.category.contains(argsEquipment['id']);
    }).toList();

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          argsEquipment["title"],
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: filterEquipment.length,
          itemBuilder: (BuildContext context, int index) {
            final equipment = filterEquipment[index];
            // tampilkan detail equipment
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/DetailItem', arguments: {
                  "title": equipment.title,
                  "day": equipment.day,
                  "imageUrl": equipment.imageUrl,
                  "price":equipment.price,
                  "information":equipment.information
                });
              },
              // tampilkan menu item
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(equipment.imageUrl),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                equipment.title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isFav = !isFav;
                                    equipment.isFavorit = isFav;
                                  });
                                  print(equipment.isFavorit);
                                },
                                icon: Icon(
                                  equipment.isFavorit
                                      ? Icons.favorite
                                      : Icons.favorite_outline,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}