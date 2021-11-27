import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givelivly_beta/Themes/themes_.dart';

class DonateScreen extends StatefulWidget {
  const DonateScreen({Key? key}) : super(key: key);

  @override
  _DonateScreenState createState() => _DonateScreenState();
}

var scafoldKey = GlobalKey<ScaffoldState>();

class _DonateScreenState extends State<DonateScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: scafoldKey,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications,
                  color: ColorsDesign.darkBluishColor),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
          ],
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset('assets/Drawables/Toggle Button.svg'),
            onPressed: () {
              scafoldKey.currentState!.openDrawer();
            },
          ),
          backgroundColor: ColorsDesign.lightColor,
        ),
        body: Container(
          color: ColorsDesign.lightColor,
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(ColorsDesign.darkBluishColor),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width,
                    child: const Center(
                      child: Text(
                        "Donations Receive Requests",
                        style: TextStyle(
                            fontSize: 24, color: ColorsDesign.lightColor),
                      ),
                    ),
                  ),
                  onPressed: null,
                ),
              ),
              Positioned(
                top: size.height * 0.1,
                left: size.width * 0.05,
                child: const Text(
                  "Your Active Donations",
                  style: TextStyle(
                      fontSize: 24, color: ColorsDesign.darkBluishColor),
                ),
              ),
              Positioned(
                  top: size.height * 0.2,
                  left: 0,
                  right: 0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          height: size.height * 0.2,
                          width: size.width,
                          decoration: const BoxDecoration(
                              color: ColorsDesign.darkGreenCreamColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Text(""),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          height: size.height * 0.2,
                          width: size.width,
                          decoration: const BoxDecoration(
                              color: ColorsDesign.darkGreenCreamColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Text(""),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          height: size.height * 0.2,
                          width: size.width,
                          decoration: const BoxDecoration(
                              color: ColorsDesign.darkGreenCreamColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Text(""),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          height: size.height * 0.2,
                          width: size.width,
                          decoration: const BoxDecoration(
                              color: ColorsDesign.darkGreenCreamColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Text(""),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          height: size.height * 0.2,
                          width: size.width,
                          decoration: const BoxDecoration(
                              color: ColorsDesign.darkGreenCreamColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Text(""),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3.0),
                    backgroundColor: MaterialStateProperty.all(
                        ColorsDesign.darkGreenCreamColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Add Donations",
                        style: TextStyle(
                            color: ColorsDesign.darkBluishColor, fontSize: 24),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Ink(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorsDesign.darkBluishColor),
                        child: const Icon(
                          Icons.add,
                          color: ColorsDesign.creamColor,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DonateScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
