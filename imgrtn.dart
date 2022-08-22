import 'package:flutter/material.dart';
import 'package:events/event_description.dart';
class Img extends StatefulWidget {
  String u;
   Img({Key? key, required this.u}) : super(key: key);

  @override
  State<Img> createState() => _ImgState(u: u);
}

class _ImgState extends State<Img> {
  String u;
  _ImgState({required this.u});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  Event(name: "X Bet", about: "Representative event", category: "OFF STAGE", location: "ONLINE", day: "1", time: "8:30  AM", participants: "5", phrase: "PLAY",
                        rules: "St. Xavier's Collegiate School (informally SXCS) is a private Catholic primary and secondary school for boys, located in Kolkata, West Bengal, India. The school was founded in 1860 by the Jesuits under the supervision of Fr. Henri Depelchin S.J., and it is named after St. Francis Xavier, a 16th-century Jesuit missionary to India. The school caters to approximately 2,300 students")));
                  },
                  child: Container(
                    height: 270,
                    width: 270,
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            u),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              ],
          ),
      );
  }
}
