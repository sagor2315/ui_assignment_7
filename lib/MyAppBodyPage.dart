import 'package:flutter/material.dart';

class MyAppBodyPage extends StatefulWidget {
  const MyAppBodyPage({super.key});

  @override
  State<MyAppBodyPage> createState() => _MyAppBodyPageState();
}

class _MyAppBodyPageState extends State<MyAppBodyPage> {
  // double _currentSliderValue = 75;
  double _value = 0.7;

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

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Spicy", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 8),

                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 6,
                          trackShape: const _CustomTrackShape(),
                          activeTrackColor: const Color(0xFFFF3548),
                          inactiveTrackColor: const Color(0xFFF3F3F3),
                          thumbShape: const _SquareSliderThumbShape(),
                          overlayShape: SliderComponentShape.noOverlay,
                        ),
                        child: Slider(value: _value, onChanged: (val) => setState(() => _value = val)),
                      ),

                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Mild",
                            style: TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hot",
                            style: TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 40),

                Expanded(
                  flex: 3,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("Portion", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _buildBtn(Icons.remove),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text("1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                          _buildBtn(Icons.add),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                  decoration: BoxDecoration(color: const Color(0xFFFF3548), borderRadius: BorderRadius.circular(18)),
                  child: const Text(
                    "\$9.99",
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(color: const Color(0xFF352D2B), borderRadius: BorderRadius.circular(18)),
                    child: const Center(
                      child: Text(
                        "ORDER NOW",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget _buildBtn(IconData icon) {
  return Container(
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: const Color(0xFFFF3548),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [BoxShadow(color: Colors.red.withOpacity(0.2), blurRadius: 10, offset: const Offset(0, 5))],
    ),
    child: Icon(icon, color: Colors.white, size: 24),
  );
}

class _SquareSliderThumbShape extends SliderComponentShape {
  const _SquareSliderThumbShape();

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => const Size(14, 24);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paintWhite = Paint()..color = Colors.white;
    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromCenter(center: center, width: 21, height: 24), const Radius.circular(4)),
      paintWhite,
    );

    final paintRed = Paint()..color = const Color(0xFFFF3548);
    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromCenter(center: center, width: 12, height: 17), const Radius.circular(3)),
      paintRed,
    );
  }
}

class _CustomTrackShape extends RoundedRectSliderTrackShape {
  const _CustomTrackShape();

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
