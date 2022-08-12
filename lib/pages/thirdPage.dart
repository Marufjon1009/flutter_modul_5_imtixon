import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modul_5_imtixon/pages/fourPage.dart';

class ThirdPage extends StatefulWidget {
  static const path = 'third';
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  void NewList() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('New List'),
              content: const TextField(
                decoration: InputDecoration(hintText: 'Enter list title'),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Color(0xFF5835E5),
                    ),
                  ),
                ),
                CupertinoButton(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  onPressed: () {
                    Navigator.pushNamed(context, FourPage.path);
                  },
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF5835E5),
                  child: const Text(
                    '+ Create',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ));
  }

  late Size _size;
  late bool? _isLoading;
  late bool _isMobile;
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;
    _isLoading = true;
    _isMobile = _size.width < 500;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 500) {
            return desktopBody!;
          }
          return mobileBody;
        },
      ),
    ));
  }

  Widget? get desktopBody {
    return Row(
      children: [
        Expanded(child: mobileBody),
        Expanded(
            child: Container(
          color: Colors.deepPurple,
        )),
      ],
    );
  }

  Widget get mobileBody {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: 1,
        itemBuilder: (context, index) => Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 44, left: 21),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                            child: Text(
                              'AB',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Antonio Bonilla',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.deepPurple,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 29, left: 22),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Color(0xFFF85977),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Important',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 22),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.home,
                            color: Colors.deepPurple,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Tasks',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 230,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: 330,
                      height: 1,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 22),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.list,
                            color: Color(0xffc8bfff),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Task List',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 22),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.list,
                            color: Color(0xffc8bfff),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'House List',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 360, left: 0),
                      child: Builder(builder: (context) {
                        return TextButton(
                          onPressed: NewList,
                          child: const Text(
                            '+ New List',
                            style: TextStyle(
                              color: Color(0xFF5946D2),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ],
            ));
  }
}
