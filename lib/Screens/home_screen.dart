import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givelivly_beta/Screens/donate_screen.dart';
import 'package:givelivly_beta/Themes/themes_.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var scafoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
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
        drawer: Drawer(),
        body: Container(
          height: size.height,
          width: size.width,
          color: ColorsDesign.lightColor,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: size.width * 0.1,
                child: const Text(
                  "Help Making Society",
                  style: TextStyle(
                    fontSize: 36,
                    color: ColorsDesign.darkBluishColor,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.05,
                left: size.width * 0.1,
                child: const Text(
                  "Better Place",
                  style: TextStyle(
                    fontSize: 24,
                    color: ColorsDesign.darkBluishColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.15,
                right: 0,
                left: 0,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  height: size.height * 0.3,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: ColorsDesign.darkGreenCreamColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SvgPicture.asset('assets/Drawables/Ellipse 19.svg'),
              ),
              Positioned(
                bottom: size.height * 0.1,
                left: size.width * 0.2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3.0),
                    backgroundColor:
                        MaterialStateProperty.all(ColorsDesign.creamColor),
                  ),
                  child: Container(
                    width: size.width * 0.5,
                    height: size.height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Ink(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsDesign.darkBluishColor),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: ColorsDesign.creamColor,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Receive",
                          style: TextStyle(
                              color: ColorsDesign.darkBluishColor,
                              fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  onPressed: null,
                ),
              ),
              Positioned(
                bottom: size.height * 0.2,
                left: size.width * 0.2,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3.0),
                    backgroundColor:
                        MaterialStateProperty.all(ColorsDesign.creamColor),
                  ),
                  child: Container(
                    width: size.width * 0.5,
                    height: size.height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Donate",
                          style: TextStyle(
                              color: ColorsDesign.darkBluishColor,
                              fontSize: 24),
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
                            Icons.arrow_forward,
                            color: ColorsDesign.creamColor,
                          ),
                        ),
                      ],
                    ),
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
              Positioned(
                bottom: size.height * 0.35,
                right: size.width * 0.1,
                child: const Text(
                  "Lets Make Someone",
                  style: TextStyle(
                      fontSize: 24, color: ColorsDesign.darkBluishColor),
                ),
              ),
              Positioned(
                bottom: size.height * 0.28,
                right: size.width * 0.1,
                child: const Text(
                  "Happy",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: ColorsDesign.darkBluishColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
