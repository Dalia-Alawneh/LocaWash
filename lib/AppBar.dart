import 'package:flutter/material.dart';
import 'package:locawash/Style.dart';
import 'package:locawash/profile_page.dart';

class AppBarCustom extends StatefulWidget {
  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  Color mainColorHome = Color(0xffffffff);
  Color mainColorTime = Color(0xffffffff);
  Color mainColorBag = Color(0xffffffff);
  Color mainColorSettings = Color(0xffffffff);

  Style style = Style();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: BottomAppBar(
          color: Color(style.primaryBlue),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                // buildExpanded(mainColorHome,Icons.home_outlined),
                Expanded(
                    child:IconButton(
                      icon: Icon(Icons.home_outlined,
                        color: mainColorHome,
                      ),
                      onPressed: (){
                        setState((){
                          mainColorHome = Color(style.primaryPink);
                        });
                      },

                    )

                ),
                Expanded(
                    child:IconButton(
                      icon: Icon(Icons.timelapse_sharp,
                        color: mainColorTime,
                      ),
                      onPressed: (){
                        setState((){
                          mainColorTime = Color(style.primaryPink);
                        });
                      },

                    )

                ),
                Expanded(
                    child:IconButton(
                      icon: Icon(Icons.shopping_bag_rounded,
                        color: mainColorBag,
                      ),
                      onPressed: (){
                        setState((){
                          mainColorBag = Color(style.primaryPink);
                        });
                      },

                    )

                ),
                Expanded(
                    child:IconButton(
                      icon: Icon(Icons.settings_outlined,
                        color: mainColorSettings,
                      ),
                      onPressed: (){
                        setState((){
                          mainColorSettings = Color(style.primaryPink);
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProfilePage();
                        }));
                      },

                    )

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildExpanded(Color color,  IconData icon) {
    return Expanded(
              child:IconButton(
                icon: Icon(icon,
                color: color,
                ),
                onPressed: (){
                  setState((){
                    color = Color(style.primaryPink);
                  });
                },

              )

          );
  }
}
