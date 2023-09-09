import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),
      body: Column(
        children: [
          generateTextField(),
        ],
      ),
    );
  }

  Container generateTextField() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 30, top: 40, bottom: 10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.1),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none))),
    );
  }

  AppBar createAppBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          width: 30,
          height: 30,
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(243, 232, 232, 0.867),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/icons/chevron-left-solid.svg',
            height: 15,
            width: 15,
          ),
        ),
      ),
      actions: [
        GestureDetector(
            onTap: () {},
            child: Container(
              width: 37,
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(243, 232, 232, 0.867),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                'assets/icons/ellipsis-solid.svg',
                height: 15,
                width: 15,
              ),
            ))
      ],
    );
  }
}
