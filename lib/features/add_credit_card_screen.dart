import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class AddCreditCardScreen extends StatefulWidget{
  @override
  _AddCreditCardScreenState createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen>{
  String cardHolderName = "";
  String cardExpDate ="";
  String cardNumber = "";
  String cvv = "";
  String bankName = "";
  bool showBackSide = false;

  TextEditingController cardHolderNameController = TextEditingController();
  TextEditingController cardExpiryController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  FocusNode focusNodeCardHolderName = FocusNode();
  FocusNode focusNodeCardExpiry = FocusNode();
  FocusNode focusNodeCardNumber = FocusNode();
  FocusNode focusNodeCVV = FocusNode();
  FocusNode focusNodeBankName = FocusNode();

  @override
  void initState(){
    focusNodeCVV.addListener(() {
      if (focusNodeCVV.hasFocus){
        showBackSide = true;
      }else {
        showBackSide = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                SizedBox(height: 25,),
                CreditCard(
                  cardHolderName: cardHolderName,
                  cardExpiry: cardExpDate,
                  cardNumber: cardNumber,
                  cvv: cvv,
                  showShadow: true,
                  showBackSide: showBackSide,
                  bankName: bankName,
                  frontBackground: CardBackgrounds.black,
                  backBackground: CardBackgrounds.white,
                ),
                SizedBox(height: 25,),
                TextField(
                  focusNode: focusNodeCardHolderName,
                  onChanged: (text) {
                    setState(() {
                      cardHolderName = text;
                      showBackSide = false;
                    });
                  },
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    fontSize: 20, color: Colors.black
                  ),
                  keyboardType: TextInputType.name,
                  maxLength: 16,
                  decoration: InputDecoration(
                    counterText: "",
                    labelText: 'Card Holder Name'
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  focusNode: focusNodeCardExpiry,
                  onChanged: (text) {
                    setState(() {
                      cardExpDate = text;
                      showBackSide = false;
                    });
                  },
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                      fontSize: 20, color: Colors.black
                  ),
                  keyboardType: TextInputType.text,
                  maxLength: 16,
                  decoration: InputDecoration(
                      counterText: "",
                      labelText: 'Card Expiry'
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  focusNode: focusNodeCardNumber,
                  onChanged: (text) {
                    setState(() {
                      cardNumber = text;
                      showBackSide = false;
                    });
                  },
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                      fontSize: 20, color: Colors.black
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 16,
                  decoration: InputDecoration(
                      counterText: "",
                      labelText: 'Card Number'
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  focusNode: focusNodeCVV,
                  onChanged: (text) {
                    setState(() {
                      cvv = text;
                      showBackSide = true;
                    });
                  },
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                      fontSize: 20, color: Colors.black
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 16,
                  decoration: InputDecoration(
                      counterText: "",
                      labelText: 'CVV'
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                    focusNode: focusNodeBankName,
                    onChanged: (text){
                      setState(() {
                        bankName = text;
                        showBackSide = true;
                      });
                    },
                    style: TextStyle(
                        fontSize: 20, color: Colors.black),
                    keyboardType: TextInputType.text,
                    maxLength: 16,
                    decoration: InputDecoration(
                        counterText: "",
                        labelText: 'Bank Name'
                    )
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

}