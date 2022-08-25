import 'package:flutter/material.dart';
class ImgRtr extends StatefulWidget {
  String name;
  String designation;
  String about;
  String link;

  ImgRtr({Key? key, required this.name, required this.designation, required this.about,required this.link}) : super(key: key);

  @override
  State<ImgRtr> createState() => _ImgRtrState(name:name, designation: designation,about: about,link: link);
}

class _ImgRtrState extends State<ImgRtr> {
  String name;String designation; String about;String link;
  _ImgRtrState({required this.name, required this.designation, required this.about,required this.link});
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: InkWell(
            onTap: () {
              showDialog(context: context, builder: (context)=> AlertDialog(
                scrollable: true,
                backgroundColor: Colors.black,
                content:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 0.08*MediaQuery.of(context).size.width,
                      width: 0.08*MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('$link'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height:2,width:0.01),
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: "Xavier1",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height:2,width:0.01),
                    Text(
                      designation,
                      style: const TextStyle(
                        fontFamily: "Xavier1",
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height:2,width:0.01),
                    Text(
                      about,
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily:"Xavier3" ,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),);
            },
            child: Container(
              height: 0.125*MediaQuery.of(context).size.width,
              width: 0.125*MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$link'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height:4.0, width:0.1),
        Text(name, style:const TextStyle(color:Colors.white, fontFamily: "Xavier1", )),
        const SizedBox(height:2.0, width:0.1),
        Text(designation, style:const TextStyle(color:Colors.white, fontFamily: "Xavier1", )),
      ],
    );
  }
}