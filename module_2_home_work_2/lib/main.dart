import 'package:flutter/material.dart';

void main() {
  runApp(Directionality(
    textDirection: TextDirection.ltr,
    child: const MenuWidget(),
  ),);
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _MenuWidgetRow(
                icon: Icons.home,
                text: 'Home',
            ),
            _MenuWidgetRow(
              icon: Icons.favorite,
              text: 'Favorite',
            ),
            _MenuWidgetRow(
              icon: Icons.add,
              text: 'Add',
            ),
            _MenuWidgetRow(
              icon: Icons.access_time ,
              text: 'Access time',
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _MenuWidgetRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon, size: 25),
          SizedBox(width: 25),
          Expanded(child: Text(text, style: TextStyle(fontSize: 20)))
        ],
      ),
    );
  }
}


