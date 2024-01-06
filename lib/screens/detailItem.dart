import 'package:flutter/material.dart';

class DetailItem extends StatefulWidget {
  const DetailItem({Key? key}) : super(key: key);

  @override
  _DetailItemState createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem> {
  int selectedDays = 1;
  int totalPrice = 0;

  void updateTotalPrice(int price) {
    setState(() {
      totalPrice = price * selectedDays;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic> equipment =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;

    List<String> days = equipment['day'];
    String imageUrl = equipment['imageUrl'];
    int price = equipment['price'];
    String information = equipment['information'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          equipment["title"],
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  equipment["title"],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rp. " + price.toString(),
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                information,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Rent",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(days.length, (index) {
                  final day = days[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedDays = index + 1;
                          updateTotalPrice(price);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: selectedDays == index + 1
                            ? Colors.black
                            : Colors.grey.shade200,
                        fixedSize: Size(90, 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        '$day',
                        style: TextStyle(
                          color: selectedDays == index + 1
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rp. $totalPrice",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/MyBottomNavigationBar', (route) => false);
                  },
                  child: Text("+Add to Cart"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
