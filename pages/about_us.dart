import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/home.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  Future<void> navigateToHome(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Home(),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: width*0.01, height:0.1),
            BackButton(
              color: Colors.white,
              onPressed: (){navigateToHome(context);},
            ),
          ],
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          children: [
            const SizedBox(height:30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [

                        Text(
                          'ABOUT US',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontFamily: 'Xavier2',
                          ),
                        ),
                      ],
                    ),


                    const Divider(
                      color: Colors.white,
                      indent: 0,
                      endIndent: 0,
                      height: 20,
                      thickness: 2,
                    ),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        SizedBox(height: 0.01*height),
                        Container(
                          height: 2/5*height,
                          width : (2/5)*height*(1.5),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/sxcs_logo.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text("ST. XAVIER'S COLLEGIATE SCHOOL", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 25)),
                        const Divider(
                          color: Colors.white,
                          indent: 0,
                          endIndent: 0,
                          height: 70,
                          thickness: 2,
                        ),


                        const Padding(
                          padding: EdgeInsets.fromLTRB(70, 0, 70, 100),
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Semper auctor neque vitae tempus quam pellentesque nec. Morbi leo urna molestie at elementum eu facilisis sed odio. Purus sit amet volutpat consequat mauris. Penatibus et magnis dis parturient montes nascetur. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Ultricies tristique nulla aliquet enim. Mattis aliquam faucibus purus in massa tempor nec. Tristique risus nec feugiat in fermentum posuere urna nec. Orci nulla pellentesque dignissim enim sit. Nisi lacus sed viverra tellus in hac. Sagittis orci a scelerisque purus semper eget duis. Ut etiam sit amet nisl purus in. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Purus in mollis nunc sed id semper risus in hendrerit. At imperdiet dui accumsan sit amet nulla facilisi.At augue eget arcu dictum varius duis at. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Lobortis elementum nibh tellus molestie nunc non blandit massa enim. Vitae tempus quam pellentesque nec nam aliquam. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Semper eget duis at tellus at urna condimentum mattis. Dui accumsan sit amet nulla facilisi. Sed tempus urna et pharetra pharetra massa massa ultricies mi. Felis bibendum ut tristique et egestas. Proin sed libero enim sed faucibus turpis in eu mi. Nulla facilisi etiam dignissim diam. Bibendum enim facilisis gravida neque convallis. Ultrices gravida dictum fusce ut placerat orci nulla. Sollicitudin aliquam ultrices sagittis orci. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Semper auctor neque vitae tempus quam pellentesque nec. Morbi leo urna molestie at elementum eu facilisis sed odio. Purus sit amet volutpat consequat mauris. Penatibus et magnis dis parturient montes nascetur. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Ultricies tristique nulla aliquet enim. Mattis aliquam faucibus purus in massa tempor nec. Tristique risus nec feugiat in fermentum posuere urna nec. Orci nulla pellentesque dignissim enim sit. Nisi lacus sed viverra tellus in hac. Sagittis orci a scelerisque purus semper eget duis. Ut etiam sit amet nisl purus in. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Purus in mollis nunc sed id semper risus in hendrerit. At imperdiet dui accumsan sit amet nulla facilisi.At augue eget arcu dictum varius duis at. Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Lobortis elementum nibh tellus molestie nunc non blandit massa enim. Vitae tempus quam pellentesque nec nam aliquam. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Semper eget duis at tellus at urna condimentum mattis. Dui accumsan sit amet nulla facilisi. Sed tempus urna et pharetra pharetra massa massa ultricies mi. Felis bibendum ut tristique et egestas. Proin sed libero enim sed faucibus turpis in eu mi. Nulla facilisi etiam dignissim diam. Bibendum enim facilisis gravida neque convallis. Ultrices gravida dictum fusce ut placerat orci nulla. Sollicitudin aliquam ultrices sagittis orci. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae.",

                            style : TextStyle(
                              color: Colors.white,
                            ),
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}