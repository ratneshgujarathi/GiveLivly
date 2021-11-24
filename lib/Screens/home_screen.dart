import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givelivly_beta/themes/themes_.dart';

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
                  color: ColorsData.darkBluishColor),
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
          backgroundColor: ColorsData.lightColor,
        ),
        drawer: Drawer(),
        body: Container(
          height: size.height,
          width: size.width,
          color: ColorsData.lightColor,
          child: Expanded(
            flex: 5,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Help Making Society",
                      style: TextStyle(
                        fontSize: 36,
                        color: ColorsData.darkBluishColor,
                      ),
                    ),
                    Text(
                      "Better Place",
                      style: TextStyle(
                        fontSize: 24,
                        color: ColorsData.darkBluishColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: size.height * 0.3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: ColorsData.darkGreenCreamColor,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Lets Make Someone",
                      style: TextStyle(
                          fontSize: 24, color: ColorsData.darkBluishColor),
                    ),
                    Text(
                      "Happy",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: ColorsData.darkBluishColor),
                    )
                  ],
                ),
                Container(
                  height: size.height * 0.3,
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 0,
                          child: SvgPicture.asset(
                              'assets/Drawables/Ellipse 19.svg')),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
