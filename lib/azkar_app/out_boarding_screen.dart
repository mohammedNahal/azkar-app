import 'package:flutter/material.dart';

import 'azkar_widgets/out_boarding_indictor.dart';
import 'azkar_widgets/out_boarding_item.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({super.key});

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _controller;
  int _pageNum = 0;
  String start_skip() {
    if (_pageNum == 0 || _pageNum == 1) {
      return 'تخطي';
    } else {
      return 'ابدأ';
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: TextButton(
                onPressed:
                    _pageNum == 2
                        ? () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/login_screen',
                          );
                        }
                        : () {
                          _controller.animateToPage(
                            2,
                            duration: Duration(
                              milliseconds: _pageNum == 0 ? 1400 : 700,
                            ),
                            curve: Curves.bounceIn,
                          );
                        },
                child: Text(start_skip(),style: TextStyle(color: Colors.deepOrange.shade300,),),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: PageView(
                controller: _controller,
                reverse: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    _pageNum = value;
                  });
                  print('$_pageNum');
                },
                children: [
                  OutBoardingItem(),
                  OutBoardingItem(),
                  OutBoardingItem(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed:
                      _pageNum < 2
                          ? () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 700),
                              curve: Curves.bounceOut,
                            );
                          }
                          : null,
                  icon: Icon(Icons.arrow_back_ios,color: _pageNum < 2 ? Colors.deepOrange.shade300 : Colors.grey,),
                ),
                Row(
                  children: [
                    OutBoardingIndicator(
                      isSelected: _pageNum == 2 ? true : false,
                    ),
                    OutBoardingIndicator(
                      isSelected: _pageNum == 1 ? true : false,
                    ),
                    OutBoardingIndicator(
                      isSelected: _pageNum == 0 ? true : false,
                    ),
                  ],
                ),
                IconButton(
                  onPressed:
                      _pageNum == 0
                          ? null
                          : () {
                            _controller.previousPage(
                              duration: Duration(milliseconds: 700),
                              curve: Curves.bounceIn,
                            );
                          },
                  icon: Icon(Icons.arrow_forward_ios,color: _pageNum == 0 ? Colors.grey : Colors.deepOrange.shade300,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
