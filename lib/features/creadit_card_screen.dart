import 'package:ef_dj2/features/add_credit_card_screen.dart';
import 'package:ef_dj2/models/credit_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CreditCardScreen extends StatefulWidget{
  @override
  _CreditCardScreenState createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen>{
  List<CreditCard> creditCards;

  @override
  void initState() {
    creditCards = new List<CreditCard>();
    creditCards.add(new CreditCard(name: 'MasterCard', imagePath: 'image10'));
    creditCards.add(new CreditCard(name: 'Visa', imagePath: 'image11'));
    creditCards.add(new CreditCard(name: 'JCB', imagePath: 'image12'));
    creditCards.add(new CreditCard(name: 'American Express', imagePath: 'image13'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              fit: StackFit.loose,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/image9.png'), fit: BoxFit.fill)
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 80),
                  child: Column(
                    children: [
                      Text('Credit', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40)),
                      Text('Card', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40)),
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
                        const Text("Select a Credit Card", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                        SizedBox(height: 20,),
                        ListView.separated(
                            itemBuilder: (context, i){
                              return CreditCardModel(
                                name: creditCards[i].name,
                                imagePath: creditCards[i].imagePath
                              );
                            },
                            separatorBuilder: (context, i) => const Divider(),
                            itemCount: creditCards.length,
                            scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            height: 65,
                            width: MediaQuery.of(context).size.width*0.9,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: Text(
                              'ADD CARD',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AddCreditCardScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
  
}