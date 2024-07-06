import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveller_station/pages/welcome_screen/widgets/snap_list.dart';
import 'package:traveller_station/root_page.dart';
import 'package:traveller_station/utilites/extentionhelper.dart';
import 'package:traveller_station/utilites/widgets/customtext.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  int _index = 0;
  List imageString = [
    'assets/images/Mask by Mask.png',
    'assets/images/Right Card.png',
  ];

  List stringTrip = ['Religious rituals', 'Entertainment tourism'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              context.push(RootPage());
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.density_medium)),
                          const Spacer(),
                          const CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CustomText(
                            text: 'Welcome',
                            fontSize: 20,
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                            iconSize: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Center(
                        child: CustomText(
                          text: 'Choose Tourism Type',
                          fontSize: 20,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Expanded(
                          child: PageView.builder(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              context.push(RootPage());
                            },
                            child: Transform.scale(
                              scale: _index == index ? 1 : .7,
                              child: Column(
                                children: [
                                  Card(
                                    child: Image.asset(
                                      imageString[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  CustomText(
                                    text: stringTrip[index],
                                    fontSize: 20,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: 2,
                        controller: PageController(
                          viewportFraction: .8,
                        ),
                        onPageChanged: (value) {
                          setState(() {
                            _index = value;
                          });
                        },
                      ))
                    ]))));
  }
}
