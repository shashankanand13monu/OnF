import 'package:flutter/material.dart';
import 'package:onfinance/constants/constants.dart';

import '../widgets/line_chart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 28),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Text('Polygon', style: TextStyle(fontFamily: 'SF Pro Display')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _topBar(context),
            const LineChartSample2(),
            const SizedBox(height: 20),
            _daysBar(context),
            const SizedBox(height: 10,),
            _analysisBar(context),
            const SizedBox(height: 40),
            _portfolioBar(context),
            const SizedBox(height: 40),
            _historicalYield(context),
            const SizedBox(height: 40),
            _aboutSection(context),
            const SizedBox(height: 300),
          ],
        ),
      ),
    );
  }



  _topBar(BuildContext context) {
    return Container(
      //lower border round
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(14),
          bottomRight: Radius.circular(14),
        ),
      ),
      height: 94,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Polygon logo from assets
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/polygon.jpeg'),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                   Text(
                    '₹84000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                   Text(
                    'MATIC',
                    style: TextStyle(
                      color: Color.fromARGB(255, 52, 85, 255),
                      fontSize: 16.7,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ],
              ),
            ],
          ),

          // A container with text and a icon
          Container(
            margin: const EdgeInsets.only(top: 7),
            height: 30,
            width: 92,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Discuss',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'SF Pro Display',
                  ),
                ), // <-- Text
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.keyboard_double_arrow_right_sharp,
                  size: 19,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _daysBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // border round
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 7, 7, 7),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          height: 49,
          width: MediaQuery.of(context).size.width * 0.8,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //border round
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 52, 85, 255),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                height: 23,
                width: 30,
                child: const Center(
                  child: Text(
                    '1H',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
              const Text(
                '1D',
                style: TextStyle(
                  color: Color.fromARGB(255, 67, 67, 67),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              const Text(
                '1W',
                style: TextStyle(
                  color: Color.fromARGB(255, 67, 67, 67),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              const Text(
                '1M',
                style: TextStyle(
                  color: Color.fromARGB(255, 67, 67, 67),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              const Text(
                '5Y',
                style: TextStyle(
                  color: Color.fromARGB(255, 67, 67, 67),
                  fontSize: 14,
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 49,
          width: 49,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 7, 7, 7),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  _analysisBar(context) {
    return Container(
      // a 366x216 container with a border round and 3 sections seprated with divider
      height: 216,
      width: MediaQuery.of(context).size.width * 0.938,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 7, 7, 7),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // A text "Analysit Rating"
                Text(
                  'Analysit Rating',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                  ),
                ),

                Icon(Icons.diamond_rounded,
                    color: Color.fromARGB(255, 0, 255, 8), size: 19),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 67, 67, 67),
            thickness: 0.2,
          ),
          // 2 buttons with background color "Buy and Sell"
          SizedBox(
            height: 72,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 42,
                  width: 166,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 52, 85, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Buy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 42,
                  width: 166,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Sell',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Divider(
            color: Color.fromARGB(255, 67, 67, 67),
            thickness: 0.2,
          ),

          // a row of text "strong buy, buy, hold, sell, strong sell"
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Strong Buy',
                  style: TextStyle(
                    color: Color.fromARGB(255, 208, 208, 208),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
                Text(
                  'Buy',
                  style: TextStyle(
                    color: Color.fromARGB(255, 67, 67, 67),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
                Text(
                  'Hold',
                  style: TextStyle(
                    color: Color.fromARGB(255, 67, 67, 67),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
                Text(
                  'Sell',
                  style: TextStyle(
                    color: Color.fromARGB(255, 67, 67, 67),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
                Text(
                  'Strong Sell',
                  style: TextStyle(
                    color: Color.fromARGB(255, 67, 67, 67),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _portfolioBar(context) {
    return Container(
      height: 153,
      width: MediaQuery.of(context).size.width * 0.938,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 7, 7, 7),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),

      // a row of two text " Your Portfolio Exposure" and " Rs.14,69,345"
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Your Portfolio Exposure',
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 181, 69),
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
                Text(
                  '₹ 14,69,345',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 67, 67, 67),
            thickness: 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
               SizedBox(
                height: 32,
                width: 100,
                child:  Center(
                  child: Text(
                    'INVESTED',
                    style: TextStyle(
                      color: Color.fromARGB(255, 97, 97, 107),
                      fontSize: 10,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                width: 100,
                child:  Center(
                  child: Text(
                    'QUANTITY',
                    style: TextStyle(
                      color: Color.fromARGB(255, 97, 97, 107),
                      fontSize: 10,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                width: 100,
                child:  Center(
                  child: Text(
                    'BROKER',
                    style: TextStyle(
                      color: Color.fromARGB(255, 97, 97, 107),
                      fontSize: 10,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const[
              SizedBox(
                height: 32,
                width: 100,
                child:  Center(
                  child: Text(
                    '₹ 6,480',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                width: 100,
                child: Center(
                  child: Text(
                    '0.5',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                width: 100,
                child:  Center(
                  child: Text(
                    'ETH',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
               SizedBox(
                height: 32,
                width: 100,
                child:  Center(
                  child: Text(
                    '₹ 89,870',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 32,
                width: 100,
                child:  Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 32,
                width: 100,
                child:  Center(
                  child: Text(
                    'ETH',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _historicalYield(BuildContext context) {
    return Container(
      height: 426,
      width: MediaQuery.of(context).size.width * 0.938,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 7, 7, 7),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'If you would have Invested',
                  style: TextStyle(
                    color: Color.fromARGB(255, 141, 141, 141),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "\$100000",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              // A slider
              SizedBox(
                width: 176,
                child: Slider(
                  value: 30,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  activeColor: const Color.fromARGB(255, 52, 85, 255),
                  inactiveColor: const Color.fromARGB(255, 32, 32, 32),
                  thumbColor: Colors.white,
                  onChanged: (double value) {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'For previous',
                  style: TextStyle(
                    color: Color.fromARGB(255, 141, 141, 141),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                '1 Year',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              // A slider
              SizedBox(
                width: 176,
                child: Slider(
                  value: 40,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  activeColor: const Color.fromARGB(255, 52, 85, 255),
                  inactiveColor: const Color.fromARGB(255, 32, 32, 32),
                  thumbColor: Colors.white,
                  onChanged: (double value) {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'You would have',
                  style: TextStyle(
                    color: Color.fromARGB(255, 141, 141, 141),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 23.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "\$1120.78",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 4),
                  child: Text(
                    "1205.67 MATIC",
                    style: TextStyle(
                      color: Color.fromARGB(255, 52, 85, 255),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 34,
            width: MediaQuery.of(context).size.width * 0.93,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 29,
                  width: 103,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 52, 85, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'MATIC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 29,
                  width: 103,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 32, 32, 32),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'ETH',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 29,
                  width: 103,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 32, 32, 32),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'BTC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _aboutSection(BuildContext context) {
    return Container(
      height: 1000,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.93,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'About MATIC',
                  style: TextStyle(
                    color: Color.fromARGB(255, 52, 85, 255),
                    fontSize: 22,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ],
            ),
          ),
          
    
          //ListView builder of a row
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              
              child: ListView.builder(
                shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Constants.about[index],
                              style: const TextStyle(
                                color: Color.fromARGB(255, 141, 141, 141),
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  Constants.about2[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'SF Pro Display',
                                  ),
                                ),
                                
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
              
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Divider(
                            height: 0.8,
                            color: Color.fromARGB(255, 28, 28, 28),
                          ),
                        ),
                      ],
                    );
                  }),
                  itemCount: 5),
            ),
          ),
    
          const SizedBox(
            height: 20,
          
          ),
    
          Container(
            margin: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
                    'Technical Indicators',
                    style: TextStyle(
                      color: Color.fromARGB(255, 52, 85, 255),
                      fontSize: 22,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
          ),
    
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
    
            child: ListView.builder(
              shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Constants.technical[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),

                            Text(
                              (index+1*67.4).toString(),
                              style: const TextStyle(
                                color: Color.fromARGB(255, 69, 225, 255),
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          Constants.technical2[index],
                          style: const TextStyle(
                            color: Color.fromARGB(255, 95, 95, 104),
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
    
                        
                      ],
                    ),
                  );
                }),
                itemCount: 3),
          ),
    
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'FAQ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 141, 141, 141),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Color.fromARGB(255, 141, 141, 141),
                    fontSize: 18,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
