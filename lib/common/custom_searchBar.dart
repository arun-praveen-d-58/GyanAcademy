import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final double height;
  const CustomSearchBar({Key? key, required this.controller, required this.height}) : super(key: key);

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: widget.height,
      child: TextFormField(
        controller: widget.controller,

        style: TextStyle(fontSize: 10),
        decoration: InputDecoration(


          hintText: "Search",
          errorStyle: const TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500, color: Colors.transparent, fontSize: 0, height: 0),
          hintStyle: TextStyle(fontSize: 9),
          contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 9),
          suffixIcon: GestureDetector(
            onTap: (){
             /*
             search icon on tap


              */

            },
            child: Icon(Icons.search,size: 17),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(6.0),
            ),
            borderSide: BorderSide(
              color: HexColor("#E8ECF4"),

            ),


          ),

          enabledBorder: OutlineInputBorder(

              borderRadius: const BorderRadius.all(
                const Radius.circular(6.0),
              ),
              borderSide:BorderSide(
                color: HexColor("#E8ECF4"),
              )
          ),

          focusedBorder: OutlineInputBorder(

              borderRadius: const BorderRadius.all(
                const Radius.circular(6.0),
              ),
              borderSide:BorderSide(
                color: HexColor("#E8ECF4"),
              )
          ),

        ),

      ),
    );
  }
}
