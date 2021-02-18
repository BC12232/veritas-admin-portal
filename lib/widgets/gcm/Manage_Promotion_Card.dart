import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veritas_admin/globals/constants.dart';
import 'package:veritas_admin/globals/helper_functions.dart';
import 'package:veritas_admin/style.dart';
import 'package:veritas_admin/widgets/login/login_form.dart';

//put it in a container --> mess with margins --> constructor takes data from backend calls maybe???

class PromotionCard extends StatefulWidget{
  final String date;
  final String tangoID;
  final int amount;
  final int totalFunds;
  final String description;

  // constructor
  const PromotionCard({
    Key key,
    @required this.tangoID,
    @required this.date,
    @required this.amount,
    @required this.totalFunds,
    @required this.description
  }): assert(tangoID != null),
      assert(date != null),
      assert(amount != null),
      assert(totalFunds != null),
      assert(description != null), //assuming every card must have a description ofc
      super(key: key); //just in case tbh

  @override
  State<StatefulWidget> createState() {
    return PromotionCardState();
  }
}
//add main container --> don't forget scollview for description


class PromotionCardState extends State<PromotionCard>{
  // ignore: non_constant_identifier_names
  bool allow_virtual_coffee_chats = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: LIGHT_GREY,
      width: getWidth(context)/4,
      height: getWidth(context)*1.25,
      margin: EdgeInsets.all((getWidth(context)/32)), //4 for the size of the card * 8 for the actual margins inside the card
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        children: [
          Text(widget.date),
          SizedBox(height: 30), //makes me cry a little --> will come back to find better implementation if time permits
          //tango card ID you need like a container
          //amount
          //padding
          //description
          //switch
          //row --> edit delete
        ],
      ),
    );
  }}
