import 'package:flutter/material.dart';
import 'package:micalculator/constants.dart';

class ButtoN extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  final Color clr;
  const ButtoN(
      {Key? key, required this.text, this.clr = orange, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: InkWell(
        onTap: onPress,
        child: SizedBox(
          height: 75,
          width: 50,
          child: Center(
              child: Text(
            text,
            style: TextStyle(color: clr, fontSize: 25),
          )),
        ),
      ),
    );
  }
}

class ButtoN2 extends StatelessWidget {
  final VoidCallback OnPress;

  final Color clr;
  const ButtoN2({Key? key, this.clr = orange, required this.OnPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnPress,
      child: Container(
        height: 70,
        width: 75,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Colors.deepOrangeAccent),
        child: Center(
            child: Text(
          '=',
          style: TextStyle(color: clr, fontSize: 35),
        )),
      ),
    );
  }
}

class Button3 extends StatelessWidget {
  final Icon icn;
  final String title;
  final VoidCallback OnPressed;
  const Button3(
      {Key? key,
      required this.icn,
      required this.title,
      required this.OnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnPressed,
      child: Container(
        height: 60,
        child: Column(
          children: [
            icn,
            const SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.grey),
                ))
          ],
        ),
        decoration: const BoxDecoration(shape: BoxShape.rectangle),
      ),
    );
  }
}

class Button4 extends StatelessWidget {
  final VoidCallback OnPress;
  final String title;

  const Button4({Key? key, required this.OnPress, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnPress,
      child: Container(
        height: 100,
        width: 40,
        child: Center(
            child: Text(
          title,
          style: TextStyle(color: orange, fontSize: 30),
        )),
        decoration: BoxDecoration(
            color: Colors.black38, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class Button5 extends StatelessWidget {
  final VoidCallback OnPress;
  final Icon title;

  const Button5({Key? key, required this.OnPress, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnPress,
      child: Container(
        height: 100,
        width: 40,
        child: Center(
            child:
        title
        ),
        decoration: BoxDecoration(
            color: Colors.black38, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
