import 'package:ef_dj2/features/creadit_card_screen.dart';
import 'package:flutter/material.dart';

class DigitalWalletScreen extends StatefulWidget {
  @override
  _DigitalWalletScreenState createState() => _DigitalWalletScreenState();
}

class _DigitalWalletScreenState extends State<DigitalWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                //alignment: Alignment.center,
                fit: StackFit.loose,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/image1.png'), fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 80),
                    child: Column(
                      children: [
                        Text('Digital', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40)),
                        Text('Wallet', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40)),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.65,
                      padding: EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))
                      ),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          const Text("Balance", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                          Container(
                            alignment: Alignment.center,
                            height: 70,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('Rp. 76.547.000,-', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24,
                            ),),
                          ),
                          SizedBox(height: 25,),
                          GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              height: 70,
                              width: MediaQuery.of(context).size.width*0.9,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text('TOP UP', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white,
                              ),),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CreditCardScreen()));
                            },
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Text("Qr Code", style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold
                          ),
                          ),
                          ),
                          Image(image: AssetImage('assets/image14.png'))
                        ],
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
        )
      )
    );
  }
}
