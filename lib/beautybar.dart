import 'package:flutter/material.dart';

class Main_Menu extends StatefulWidget {
  const Main_Menu({Key? key});

  @override
  State<Main_Menu> createState() => _Main_MenuState();
}

class _Main_MenuState extends State<Main_Menu> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000), // Adjust the duration as needed
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("Hi, Marie", style: TextStyle(color: Colors.pink[200])),
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Text(
                  "Welcome!!!".substring(0, (_controller.value * "Welcome!!!".length).round()),
                  style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width / 1.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildContainer(Colors.blueGrey, "List view 01", 200),
                    _buildContainer(Colors.black, "List view 02", 200),
                    _buildContainer(Colors.pinkAccent, "List view 03", 200),
                    _buildContainer(Colors.yellow, "List view 04", 200),
                    _buildContainer(Colors.blueAccent, "List view 05", 200),
                    _buildContainer(Colors.grey, "List view 06", 200),
                    _buildContainer(Colors.yellow[400]!, "List view 07", 200),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Services",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset("images/01woman-hair.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4), // Adding a small gap between the image and the text
                        Text("Hair Cut",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset("images/02makeup.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4), // Adding a small gap between the image and the text
                        Text("Makeup",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset("images/03hair-styling.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4), // Adding a small gap between the image and the text
                        Text("Hair Styling",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset("images/04haircare.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4), // Adding a small gap between the image and the text
                        Text("Haircare",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset("images/05wax.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4), // Adding a small gap between the image and the text
                        Text("Wax",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),



                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset("images/06massage.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4), // Adding a small gap between the image and the text
                        Text("Massage",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),



                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset("images/07bride.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 4), // Adding a small gap between the image and the text
                        Text("Bride",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(7, (index) => _buildVerticalColumn(index + 1)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(Color color, String text, double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: InkWell(
          onTap: () {},
          child: Container(
            width: width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalColumn(int index) {
    double value = 4.4; // Example value
    List<String> services = [
      "Manicures & Pedicures",
      "Facial Treatments",
      "Hair and scalp treatments",
      "Haircutting",
      "Waxing",
      "Body Massage",
      "Pre-Bridal Grooming",
    ];

    return Container(
      height: 50,
      width: 500,
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 1,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                services[index - 1], // Adjust index to match the services list
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                "\$$value",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: Main_Menu(),
  ));
}


//change 01 here