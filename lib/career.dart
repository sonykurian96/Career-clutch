import "package:flutter/material.dart";

class Career extends StatefulWidget {
  Career({Key? key}) : super(key: key);

  @override
  State<Career> createState() => _CareerState();
}

class _CareerState extends State<Career> {
  double changeValue = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Row(
        children: [
          Container(
              width: screenWidth / 4 - 30,
              height: screenHeight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 50),
                child: ListItems(select: changeValue),
              ) //Image.asset("frame.png")
              ),
          VerticalDivider(),
          Column(
            children: [
              Container(height: 80, child: Image.asset("search.png")),
              Container(
                height: screenHeight - 80,
                width: screenWidth - (screenWidth / 4 ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Image.asset("search.png"),
                      Image.asset("comp.png"),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 0;
                              });
                          },child: Image.asset("what.png")),
                      MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              changeValue = 1;
                              });
                          },
                          child: Image.asset("entry.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 2;
                              });
                          },child: Image.asset("money.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 3;
                              });
                          },child: Image.asset("saving.png")),
                      MouseRegion(
                        onEnter: (event) {
                            setState(() {
                              changeValue = 4;
                              });
                          },child: Image.asset("future.png")),
                      MouseRegion(
                        onEnter: (event) {
                            setState(() {
                              changeValue = 5;
                              });
                          },
                        child: Image.asset("special.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 6;
                              });
                          },child: Image.asset("education.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 7;
                              });
                          },child: Image.asset("more.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 8;
                              });
                          },child: Image.asset("pursued.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 9;
                              });
                          },child: Image.asset("gifted.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 10;
                              });
                          },child: Image.asset("oppo.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 11;
                              });
                          },child: Image.asset("profile.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 12;
                              });
                          },child: Image.asset("compet.png")),
                      MouseRegion(onEnter: (event) {
                            setState(() {
                              changeValue = 13;
                              });
                          },child: Image.asset("work.png"))
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  ListItems({Key? key, this.select = 0}) : super(key: key);

  double select;
  @override
  Widget build(BuildContext context) {
    print("value of select is : $select");
    return ListView.builder(
      itemCount: 14,
      itemBuilder: (context, index) {
        return ListTile(
          dense: true,
          horizontalTitleGap: 0,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          leading: Visibility(
              visible: index == select ? true : false,
              child: Icon(Icons.adjust_rounded, color: Colors.blue)),
          title: Text(
            items[index],
            style: TextStyle(color: index == select ? Colors.blue : Colors.black),
          ),
        );
      },
    );
  }
}

List<String> items = [
  "what is it really",
  "Here is your entry pathway",
  "Let's talk about money",
  "Start saving now",
  "What about future",
  "Specializations",
  "Educational requirements",
  "Get more information",
  "Those who pursued this career",
  "For the gifted ones",
  "Job Opportunities",
  "Job profile",
  "Compentencies required",
  "Work Activities"
];
