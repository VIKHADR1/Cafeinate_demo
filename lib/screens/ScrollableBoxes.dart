import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScrollableBoxes extends StatelessWidget {
  const ScrollableBoxes({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text('Home Cafe'),
        toolbarHeight: 50.0,
      ),
      body: ListView.builder(
        itemCount: coffeeTypes.length,
        itemBuilder: (context, index) {
          return ExpandableCoffeeBox(coffee: coffeeTypes[index]);
        },
      ),
    );
  }
}

class ExpandableCoffeeBox extends StatefulWidget {
  final Coffee coffee;

  const ExpandableCoffeeBox({Key? key, required this.coffee}) : super(key: key);

  @override
  _ExpandableCoffeeBoxState createState() => _ExpandableCoffeeBoxState();
}

class _ExpandableCoffeeBoxState extends State<ExpandableCoffeeBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Center(
            child: SizedBox(
              height: isExpanded ? 200.0 : 200.0,
              width: 320.0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFEAE7E7),
                    image: DecorationImage(
                      image: AssetImage(widget.coffee.imageUrl),
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          AnimatedContainer(
            height: isExpanded ? 350.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: Visibility(
              visible: isExpanded,
              child: Container(
                width: 320.0,
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAE7E7),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20.0),
                    Text(
                      'Details: ${widget.coffee.details}',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 8.0,
                      ),
                    ),
                    if (widget.coffee.videoURL.isNotEmpty) ...[
                      const SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Open the video URL
                          launch(widget.coffee.videoURL);
                        },
                        child: const Text('Watch Video'),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Sample coffee data
List<Coffee> coffeeTypes = [
  Coffee(
    imageUrl: 'lib/images/latte.png',
    details: 'Ingredients:\n  -Freshly brewed espresso or strong coffee,\n  -Milk (whole milk, 2%, or plant-based alternatives like almond, soy, or\n   oat milk),\n  -Sugar or sweetener (optional),\n  -Flavorings such as vanilla or caramel\n   (optional)\n\n Equipment:\n  -Espresso machine or coffee maker\n  -Milk frother or steam wand\n  -Coffee mug \n\n Steps:\n  1. Brew a shot or two of espresso or strong coffee.\n  2. Heat desired milk using a frother, steam wand, or microwave\n     (150°F to 160°F).\n  3. Froth milk until creamy and velvety.\n  4. Pour espresso into a mug.\n  5. Add optional sweeteners or flavors.\n  6. Pour frothed milk over espresso for a layered effect.\n  7. Optionally create latte art.\n  8. Enjoy your homemade latte!',
    videoURL: 'https://youtu.be/Qeu3KmHGk_U?si=HtJprR42lyZRD-d-',
  ),
  Coffee(
    imageUrl: 'lib/images/americano.png',
    details: 'Ingredients:\n  -A shot or two of freshly brewed espresso\n  -Hot water\n\n  Equipment:\n  -Espresso machine or coffee maker\n  -Coffee mug\n\n  Steps:\n  1. Brew a shot or two of espresso.\n  2. Heat desired amount of hot water.\n  3. Combine espresso with hot water to taste.\n  4. Adjust the strength by adding more or less water.\n  5. Optionally add sweeteners or flavors.\n  6. Stir and enjoy your Americano!',
    videoURL: 'https://youtu.be/Fpm4Ktc2he4?si=HnIQPbEfyQBPZtHH',
  ),
  Coffee(
    imageUrl: 'lib/images/mocha.png',
    details: 'Ingredients:\n  -A shot of freshly brewed espresso\n  -Equal parts of steamed milk and foam\n  -Chocolate syrup\n\n  Equipment:\n  -Espresso machine or coffee maker\n  -Milk frother or steam wand\n  -Coffee mug\n\n  Steps:\n  1. Brew a shot of espresso.\n  2. Steam milk using a frother or steam wand until frothy.\n  3. Pour the shot of espresso into a mug.\n  4. Add equal parts of steamed milk and foam on top.\n  5. Optionally add sweeteners or flavors.\n  6. Create latte art if desired.\n  7. Enjoy your delicious mocha!',
    videoURL: 'https://youtu.be/kr1YIU2MFqM?si=6r0lxlAj_gR0XUjx',
  ),
  Coffee(
    imageUrl: 'lib/images/cappuccino.png',
    details: 'Ingredients:\n  -Freshly brewed espresso\n  -Steamed milk\n  -Chocolate syrup\n\n  Equipment:\n  -Espresso machine or coffee maker\n  -Milk frother or steam wand\n  -Coffee mug\n\n  Steps:\n  1. Brew a shot of espresso.\n  2. Steam milk using a frother or steam wand.\n  3. Add chocolate syrup.\n  4. Pour the shot of espresso into a mug.\n  5. Pour steamed milk over espresso.\n  6. Optionally add sweeteners or flavors.\n  7. Enjoy your indulgent cappuccino!',
    videoURL: 'https://youtu.be/DX8R-ea5kpw?si=M-gQDtcnVO2C6sDx',
  ),
];

class Coffee {
  final String imageUrl;
  final String details;
  final String videoURL;

  Coffee({required this.imageUrl, required this.details, required this.videoURL});
}
