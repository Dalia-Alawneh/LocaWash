import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../style.dart';

const Color bgColor = Color(0xfff5f3f3);

class ChangePhotoAlert extends StatefulWidget {
  const ChangePhotoAlert({Key? key}) : super(key: key);

  @override
  State<ChangePhotoAlert> createState() => _ChangePhotoAlertState();
}

class _ChangePhotoAlertState extends State<ChangePhotoAlert> {
  Style style = Style();
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Dialog(
          shape: RoundedRectangleBorder(),
          insetPadding:EdgeInsets.zero,
          alignment: Alignment.center,
          child: Container(
              height: MediaQuery.of(context).size.height/2.3,
              padding: EdgeInsets.fromLTRB(30, 25, 30, 20),
              child: ListView(
                children: [
                  Center(
                    child: Text('Change your picture',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff141414),
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Divider(
                    height: 35,
                    color: bgColor,
                    thickness: 2.2,
                  ),
                  if(imageFile != null)
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: FileImage(imageFile!))
                        ),
                      ),
                  ReusableListTile(text: 'Take a photo',
                  icon: Icons.camera_alt,
                    ontap: (){
                    getImage(source: ImageSource.camera);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ReusableListTile(text: 'Choose from your file',
                    icon: CupertinoIcons.folder_fill,
                    ontap: (){
                      getImage(source: ImageSource.gallery);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: bgColor,
                    ),
                    child: ListTile(
                      leading: Icon(
                        CupertinoIcons.delete,
                        color:Color(style.primaryPink),
                      ),
                      title: Text("Delete Photo",
                      style: TextStyle(
                        color:Color(style.primaryPink),
                        fontWeight: FontWeight.bold
                      ),),
                      onTap: (){

                      },
                    ),
                  )
                ],
              )
          )
        //
        // Stack(
        //   alignment: Alignment.bottomCenter,
        //   children: [

        //   ],
        // ),
      ),
    );
  }
  void getImage({required ImageSource source}) async{
    final file = await ImagePicker().pickImage(source: source);
    if(file?.path != null){
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}


class ReusableListTile extends StatefulWidget{
  ReusableListTile({required this.text,required this.icon, this.ontap});
  final String text;
  final IconData icon;
  final VoidCallback? ontap;
  @override
  State<ReusableListTile> createState() => _ReusableListTileState();
}

class _ReusableListTileState extends State<ReusableListTile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: ListTile(
        leading: Icon(
          widget.icon,
          color: Color(0xff1a1a1a),
        ),
        title: Text(widget.text,
          style: TextStyle(
              fontWeight:FontWeight.bold
          ),),
        onTap:widget.ontap,

      ),
    );
  }
}