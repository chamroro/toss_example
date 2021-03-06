import 'package:flutter/material.dart';
import 'package:toss_example/send_money.dart';
import 'package:toss_example/theme/colors.dart';
import 'package:toss_example/theme/text_style.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Toss App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffECF5FE),
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.only(left:25),
          child: Image.asset('assets/logo_won.png', width: 84, height: 24)
        ),
        leadingWidth: 109,
        actions: [
          Image.asset('assets/icon_QR.png', width: 33, height: 24),
          const SizedBox(width: 26),
          Image.asset('assets/icon_chat.png', width: 24, height: 22),
          const SizedBox(width: 18),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.maxFinite,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: grey[200],
          border: Border.all(color: grey[200]!),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(                                           
            topLeft: Radius.circular(20.0),                                            
            topRight: Radius.circular(20.0),                                           
            ),        
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: white,
            selectedItemColor: grey[900],
            unselectedItemColor: grey[600],
            selectedLabelStyle: subtitle3style(),
            unselectedLabelStyle: subtitle3style(),
            selectedFontSize: 11,
            unselectedFontSize: 11,
            currentIndex: _selectedIndex, //?????? ????????? Index
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: '???',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.76),
                  child: Icon(
                    Icons.home_outlined,
                    size: 20
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '??????',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.76),
                  child: Icon(
                    MdiIcons.diamond,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '??????',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.76),
                  child: Icon(
                    Icons.card_membership_outlined,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '??????',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.76),
                  child: Icon(
                    Icons.waterfall_chart_outlined,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: '??????',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 4.76),
                  child: Icon(
                    Icons.menu_outlined,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  final List _widgetOptions = [
    Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffECF5FE),
              Color(0xffF3F4F6),
            ],
          )
        ),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(17, 29, 17, 164),
          children: [
            Section1(),
            Section2(),
            const Section3(),
            const Section4(),
            const SizedBox(height: 41),
            Text('?????? ?? ?????? ?????????', 
              style: subtitle1style(color: grey2[800]),
              textAlign: TextAlign.center
            )
          ],
        ),
      ),
    const Text(
      '??????',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    ),
    const Text(
      '??????',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    ),
    const Text(
      '??????',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    ),
    const Text(
      '??????',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    ),
  ];
}



// ignore: must_be_immutable
class Section1 extends StatelessWidget {

  List<String> card = [
    'assets/bank_KB.png',
    'assets/bank_shinhan.png',
    'assets/bank_hana.png',
    'assets/bank_woori.png',
    'assets/BC_bankcom.png',
    'assets/samsung_bankcom.png',
    'assets/lotte_bankcom.png',
    'assets/hyundai_bankcom.png',
    'assets/citi_bankcom.png',
    ];

  Section1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      padding: const EdgeInsets.fromLTRB(25, 33, 25, 40),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('????????????,\n?????? ?????? ??????????',
            style: heading5style(color: black, height: 1.5),
            textAlign: TextAlign.start,
          ),
          GridView.count(
            padding: const EdgeInsets.fromLTRB(5, 29, 5, 36),
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 25,
            crossAxisSpacing: 25,
            children: List.generate(9, (index) {
              return Container(
                width: 77,
                height: 77,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: grey[100]
                ),
                child: Center(
                  child: Image.asset(
                    card[index], 
                    width: 36
                  )
                ),
              );
            }),
          ),
          
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 73,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.7, color: grey2[800]!, )
                ),
              ),
              alignment: Alignment.center,
                child: Text('?????? ??? ??????', 
                  style: button2style(color: grey3),
                ),
              ),
           )
          
        ],
      ),
    );
  }
}
// ignore: must_be_immutable
class Section2 extends StatelessWidget {

  Section2({Key? key}) : super(key: key);

  var accounts=['???????????? ??????', '????????????', '?????? ???????????? ??????'];
  List<String> logoImage=['bank_woori','account_toss','account_toss'];
  List<Color> backgroundcolor= [const Color(0xffCBE5F2),logo,logo];
  var balance=['????????????','1924???','2866???'];

  
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('??????', style: heading7style(color: const Color(0xff181F29))),
              Icon(
                Icons.chevron_right_outlined,
                size: 24,
                color: grey[500],
              ),
            ],
          ),
          const SizedBox(height: 34),
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: accounts.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: backgroundcolor[index]
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/${logoImage[index]}.png', 
                          width: 25
                        )
                      )
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          accounts[index], 
                          style: subtitle2style(color: grey[600])
                        ),
                        const SizedBox(height:4 ),
                        Text(
                          balance[index], 
                          style: body2style(color: const Color(0xff181F29))
                        ),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                        primary: const Color(0xffF2F3F5),
                        elevation: 0,
                        
                      ),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SendMoneyPage()));
                      }, 
                      child: Text('??????', style: subtitle2style(color: grey[800]),)
                    )
                  ],
                ),
              );
            }
          )
        ]
      )
    );
  }
}

class Section3 extends StatelessWidget {

  const Section3({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341,
      padding: const EdgeInsets.fromLTRB(25, 30, 25, 29),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('??????', style: heading7style(color: const Color(0xff181F29))),
          const SizedBox(height: 34),
          Row(
            children: [
              Image.asset(
                'assets/card.png', 
                width: 34
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '?????? ??? ??? ??????', 
                    style: subtitle2style(color: grey[600])
                  ),
                  const SizedBox(height:4),
                  Text(
                    '40,700???', 
                    style: body2style(color: const Color(0xff181F29))
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                  primary: const Color(0xffF2F3F5),
                  elevation: 0,
                  
                ),
                onPressed: (){},
                child: Text('??????', style: subtitle2style(color: grey[800]),)
              )
            ],
          ),
        ]
      )
    );
  }
}

class Section4 extends StatelessWidget {

  const Section4({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 162,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            _buildCard(desc1:'1?????????',desc2:'??? ??????\n?????? ??????',image:'assets/home_inspector.png'),
            _buildCard(desc1:'????????????',desc2:'??? ?????????\n??????',image:'assets/home_car.png'),
            _buildCard(desc1:'??????',desc2: '??? ??????\n?????????',image:'assets/home_people.png'),
            _buildCard(desc1:'??????',desc2:'?????????'),
          ]
        
      ),
    );
  }

  Container _buildCard({required String desc1, required String desc2, String? image}) {
    return Container(
      width: 121,
      height: 162,
      padding: const EdgeInsets.fromLTRB(20,23,20,23),
      margin: const EdgeInsets.only(right: 12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(desc1, style: subtitle2style(color: grey2[800]),),
          const SizedBox(height:7),
          Text(desc2, style: body2style(color: grey[900]),),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: image!=null ? Image.asset(image, width: 33,) : const SizedBox(),
          )
        ],
      ),
    );
  }
}
