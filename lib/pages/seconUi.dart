import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modul_5_imtixon/pages/thirdPage.dart';

class SeconPage extends StatefulWidget {
  static const path = 'second';
  const SeconPage({Key? key}) : super(key: key);

  @override
  State<SeconPage> createState() => _SeconPageState();
}

class _SeconPageState extends State<SeconPage> {
  late Size _size;
  late bool? _isLoading;
  late bool _isMobile;
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;
    _isLoading = true;
    _isMobile = _size.width < 400;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 400) {
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
        Expanded(
            flex: 2,
            child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: 1,
                itemBuilder: (context, index) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 84),
                              child: Text(
                                'Welcome to \n Uno To Do!',
                                style: TextStyle(
                                    fontSize: 36, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text(
                                'Start using the best To Do app',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepPurple),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: CupertinoButton(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(20),
                                  child: const Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, ThirdPage.path);
                                  }),
                            )
                          ],
                        ),
                      ],
                    ))),
        Expanded(
          flex: 3,
          child: Center(
            child: Image.asset(
              'assets/images/image_2.png',
            ),
          ),
        ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/image_2.png',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 84),
                      child: Text(
                        'Welcome to \n Uno To Do!',
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        'Start using the best To Do app',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: CupertinoButton(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, ThirdPage.path);
                          }),
                    )
                  ],
                ),
              ],
            ));
  }
}
