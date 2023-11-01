import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListView(
        children: <Widget>[
          Card(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0XFFF9FAFB),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/user_picture.jpg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'John D.',
                        style:
                            TextStyle(fontSize: 20, color: Color(0XFF191849)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style:
                            TextStyle(fontSize: 12, color: Color(0XFF191849)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'From',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF191849)),
                          ),
                          Text(
                            'Ankara, TR',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF191849)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Column(
                        children: [
                          const Text(
                            'Departure',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF191849)),
                          ),
                          const Text(
                            '15 June, 2022',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF191849)),
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow_vector.svg',
                          ),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'To',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF191849)),
                          ),
                          Text(
                            textAlign: TextAlign.end,
                            'İstanbul, TR',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF191849)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF60A5FA),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 10),
                          child: Text(
                            'Details',
                            style: TextStyle(
                              color: Color(0XFFF9FAFB),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF34D399),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 10),
                          child: Text(
                            'Select',
                            style: TextStyle(
                              color: Color(0XFFF9FAFB),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
