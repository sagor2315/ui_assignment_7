import 'package:flutter/material.dart';

class MyAppBodyPage extends StatefulWidget {
  const MyAppBodyPage({super.key});

  @override
  State<MyAppBodyPage> createState() => _MyAppBodyPageState();
}

class _MyAppBodyPageState extends State<MyAppBodyPage> {
  double _currentSliderValue = 75;

  // double spicy = 0.6;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                // color: const Color(0xFFF5F5F5),
                // boxShadow: [
                //   BoxShadow(
                //     color:Colors.black.withValues(alpha: 0.8),
                //     blurRadius: 20,
                //     offset: Offset(0, 8)
                //   )
                // ]
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusDirectional.circular(24),
                child: Image.asset("assets/images/burgerHome.png", fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Hamburger Veggie Burger",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Color(0xFF3C2F2F)),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star, color: Colors.orange, size: 19),
                SizedBox(width: 7),
                Text(
                  "4.8 - 14 mins",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF808080)),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF6A6A6A)),
            ),
            SizedBox(height: 30),

            // Row(
            //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     // 🌶️ Spicy (50%)
            //     Expanded(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text("Spicy", style: TextStyle(fontWeight: FontWeight.bold)),
            //
            //           Slider(
            //               value: _currentSliderValue,
            //               // min: 0,
            //               max: 100,
            //               divisions: 100,
            //               label: _currentSliderValue.round().toString(),
            //               activeColor: Colors.red,
            //               inactiveColor: Colors.grey.shade300,
            //               onChanged: (double value) {
            //                 setState(() {
            //                   _currentSliderValue = value;
            //                 });
            //               }
            //           ),
            //
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text("Mild", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
            //               Text("Hot", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500)),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //
            //     SizedBox(width: 10),
            //
            //     // 🍔 Portion (50%)
            //     Expanded(
            //       child: Column(
            //         // crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text("Portion", style: TextStyle(fontWeight: FontWeight.bold)),
            //
            //           SizedBox(height: 10),
            //
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.end,
            //             children: [
            //               IconButton(
            //                 onPressed: () {
            //                   if (quantity > 1) {
            //                     setState(() => quantity--);
            //                   }
            //                 },
            //                 icon: Icon(Icons.remove, color: Colors.white),
            //                 style: IconButton.styleFrom(
            //                   backgroundColor: Colors.red,
            //                   shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(9)),
            //                 ),
            //               ),
            //
            //               SizedBox(width: 10),
            //
            //               Text("$quantity", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            //
            //               SizedBox(width: 10),
            //
            //               IconButton(
            //                 onPressed: () {
            //                   setState(() => quantity++);
            //                 },
            //                 icon: Icon(Icons.add, color: Colors.white),
            //                 style: IconButton.styleFrom(
            //                   backgroundColor: Colors.red,
            //                   shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(9)),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              children: [
                // 🌶️ Spicy Slider
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Spicy", style: TextStyle(fontWeight: FontWeight.bold)),

                      SizedBox(
                        width: double.infinity,
                        child: Slider(
                          value: _currentSliderValue,
                          min: 0,
                          max: 100,
                          divisions: 100,
                          label: _currentSliderValue.round().toString(),
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey.shade300,
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Mild", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
                          Text("Hot", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),

                // SizedBox(width: 10),

                // 🍔 Portion
                Expanded(
                  child: Column(
                    children: [
                      Text("Portion", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              if (quantity > 1) setState(() => quantity--);
                            },
                            icon: Icon(Icons.remove, color: Colors.white),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text("$quantity", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () => setState(() => quantity++),
                            icon: Icon(Icons.add, color: Colors.white),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
