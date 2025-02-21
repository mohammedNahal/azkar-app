import 'package:flutter/material.dart';
import 'package:testflutter/azkar_app/about_app_screen.dart';

class AzkarHome extends StatefulWidget {
  const AzkarHome({super.key});

  @override
  State<AzkarHome> createState() => _AzkarHomeState();
}

class _AzkarHomeState extends State<AzkarHome> {
  int _count = 0;
  String _content = 'الحمدلله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_count;
          });
        },
        backgroundColor: Colors.deepOrangeAccent.shade200,
        child: Icon(Icons.add),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('مسبحة الأذكار', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          PopupMenuButton<String>(
            itemBuilder:
                (context) => [
                  PopupMenuItem(value: 'الحمدلله', child: Text('الحمدلله')),
                  PopupMenuItem(
                    value: 'أستغفر الله',
                    child: Text('أستغفر الله'),
                  ),
                  PopupMenuItem(value: 'سبحان الله', child: Text('سبحان الله')),
                ],
            onSelected: (value) {
              setState(() {
                if (_content != value) {
                  _content = value;
                  _count = 0;
                }
              });
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => AboutAppScreen(
                        message: 'مرحبا بكم في شاشة عن التطبيق',
                      ),
                ),
              );
              // Navigator.pushNamed(
              //   context,
              //   '/about_screen',
              //   arguments: {'message': 'مرحبا بكم في شاشة عن التطبيق'},
              // );
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/azkar_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('images/azkar_cover.png'),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 70,
              margin: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent.shade200,
                    ),
                    child: SizedBox(
                      width: 60,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          '$_count',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ++_count;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent.shade200,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: Text('تسبيح'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _count = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent.shade100,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                    ),
                    child: Text('إعادة'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
