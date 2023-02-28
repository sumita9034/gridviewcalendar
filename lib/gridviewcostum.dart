import 'package:flutter/material.dart';


import 'Grid_view_Custom_Button.dart';

class GridView1 extends StatefulWidget {
  const GridView1({Key? key}) : super(key: key);

  @override
  State<GridView1> createState() => _GridView1State();
}

class _GridView1State extends State<GridView1> {
  var text = 'F';
  var color = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Calendar"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.info_outline,
                    color: Colors.indigo,
                    size: 17,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Click on color circle to change/switch day type")
                ],
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        color: Colors.indigo,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Default Calendar",
                              style:
                              TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Spacer(),
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: size.width,
                      height: size.height/2.3,
                      child: GridView.builder(
                          itemCount: 35,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 7,
                            mainAxisSpacing: 6,
                            crossAxisSpacing: 6,
                          ),
                          itemBuilder: (context, index) {
                            return GridViewCustumButton(color1: Colors.indigo, name: 'F',);
                          }),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.indigo,
                      ),
                      child: const Center(
                          child: Text(
                            "F",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Full Day",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: const Center(
                          child: Text(
                            "HF",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Half Day",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepOrange,
                      ),
                      child: const Center(
                          child: Text(
                            "WO",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Week off",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const Spacer(),
              Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Text(
                          "Save Work Calendar",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
