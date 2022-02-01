import 'package:flutter/material.dart';
import 'package:toss_example/send_money.dart';
import 'package:toss_example/theme/colors.dart';
import 'package:toss_example/theme/text_style.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  
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
      body: Container(
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
            Text('편집 · 금액 숨기기', 
              style: subtitle1style(color: grey2[800]),
              textAlign: TextAlign.center
            )
          ],
        ),
      )
    );
  }
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
          Text('신지수님,\n어떤 카드 쓰세요?',
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
                child: Text('카드 안 써요', 
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

  var accounts=['우리은행 계좌', '토스머니', '토스 투자증권 계좌'];
  List<String> logoImage=['bank_woori','account_toss','account_toss'];
  List<Color> backgroundcolor= [const Color(0xffCBE5F2),logo,logo];
  var balance=['잔액보기','1924원','2866원'];

  
  
  
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
              Text('계좌', style: heading7style(color: const Color(0xff181F29))),
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
                      child: Text('송금', style: subtitle2style(color: grey[800]),)
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
          Text('계좌', style: heading7style(color: const Color(0xff181F29))),
          const SizedBox(height: 39),
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
                    '이번 달 쓴 금액', 
                    style: subtitle2style(color: grey[600])
                  ),
                  const SizedBox(height:4),
                  Text(
                    '40,700원', 
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
                child: Text('내역', style: subtitle2style(color: grey[800]),)
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
            _buildCard(desc1:'1분만에',desc2:'내 보험\n전부 조회',image:'assets/home_inspector.png'),
            _buildCard(desc1:'혜택주는',desc2:'차 보험료\n조회',image:'assets/home_car.png'),
            _buildCard(desc1:'자주',desc2: '돈 같이\n모으기',image:'assets/home_people.png'),
            _buildCard(desc1:'인기',desc2:'더보기'),
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
