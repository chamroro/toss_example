import 'package:flutter/material.dart';
import 'package:toss_example/theme/colors.dart';
import 'package:toss_example/theme/text_style.dart';

class SendMoneyPage extends StatelessWidget {
  SendMoneyPage({Key? key}) : super(key: key);
  var bankImage=['bank_nong','bank_KB','bank_kakaobank','bank_shinhan','bank_woori','bank_IBK','bank_hana','bank_sae'];
  var bankName=['NH농협','KB국민','카카오뱅크','신한','우리','IBK기업','하나','새마을'];
  var investImage=['bank_nong','stock_korea','bank_shinhan','bank_hana','stock_kium','stock_mirae','bank_KB'];
  var investName=['NH투자','한국투자','신한금융투자','하나금융','키움','미래에셋','KB국민'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(25, 81, 25, 103),
        children: [
          Text('어디로 돈을 보낼까요?',
            style: heading4style(color: black),
          ),
          SizedBox(height: 44,),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 9,
            padding: EdgeInsets.zero,
            children: List.generate(8, (index) {
              return Container(
                width: 103,
                height: 87,
                padding: const EdgeInsets.only(top: 16, bottom: 13),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: chipGrey,
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/${bankImage[index]}.png', 
                        height: 26,
                      ),
                      const SizedBox(height: 11),
                      Text(bankName[index],
                        style: body3style(color: black),
                      )
                    ],
                  )
                ),
              );
            })
          ),
          const SizedBox(height: 34),
          Text('증권사 선택',style: subtitle1style(color: grey[800]),),
          const SizedBox(height: 11),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 9,
            padding: EdgeInsets.zero,
            children: List.generate(7, (index) {
              return Container(
                width: 103,
                height: 87,
                padding: const EdgeInsets.only(top: 16, bottom: 13),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: chipGrey,
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/${investImage[index]}.png', 
                        height: 26,
                      ),
                      const SizedBox(height: 11),
                      Text(investName[index],
                        style: body3style(color: black),
                      )
                    ],
                  )
                ),
              );
            })
          ),
        ],
      ),
    );
  }
}