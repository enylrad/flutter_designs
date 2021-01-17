import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  static final String route = '/basic';

  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        _createImage(),
        _createTitle(),
        _createActions(),
        _createText(),
        _createText(),
        _createText(),
        _createText(),
        _createText(),
      ]),
    ));
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
            'https://pixnio.com/free-images/wallpapers/sunrise-desktop-wallpaper-725x482.jpg',
          ),
          height: 280.0,
          fit: BoxFit.cover),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Imagen fondo',
                    style: styleTitle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Imagen fondo 2',
                    style: styleSubTitle,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createAction(Icons.call, 'CALLAll'),
        _createAction(Icons.near_me, 'ROUTE'),
        _createAction(Icons.share, 'SHARE'),
      ],
    );
  }

  Column _createAction(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ex libero, vestibulum eu semper sit amet, viverra non ante. Ut ultricies semper justo, eu posuere turpis rhoncus vehicula. Proin massa leo, volutpat a elementum eget, blandit vitae libero. Sed interdum erat ut ligula ultricies porttitor. Etiam vestibulum leo id dolor accumsan, vitae tristique ipsum maximus. Duis eu consequat mauris. Fusce ipsum augue, rhoncus cursus cursus vel, sollicitudin tempus dui. Vestibulum porta, justo id volutpat sollicitudin, urna libero semper erat, non laoreet mauris nisl ac sapien. Curabitur rutrum imperdiet tempor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
