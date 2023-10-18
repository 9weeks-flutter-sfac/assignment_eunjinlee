import 'package:day_6/widget/contactTile.dart';
import 'package:flutter/material.dart';

class contactScreen extends StatelessWidget {
  const contactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        contactTile(
            imgUrl: 'https://picsum.photos/200/300',
            name: '이테디',
            phone: '010-0000-0000'),
        contactTile(
            imgUrl: 'https://picsum.photos/200/100',
            name: '밀리',
            phone: '010-0000-0000'),
        contactTile(
            imgUrl: 'https://picsum.photos/150/150',
            name: '크리스',
            phone: '010-0000-0000'),
        contactTile(
            imgUrl: 'https://picsum.photos/250/250',
            name: '주노',
            phone: '010-0000-2000'),
            contactTile(
            imgUrl: 'https://picsum.photos/250/400',
            name: '해리',
            phone: '010-0000-2000'),
            contactTile(
            imgUrl: 'https://picsum.photos/500/150',
            name: '벨라',
            phone: '010-0000-2000'),
            contactTile(
            imgUrl: 'https://picsum.photos/100/250',
            name: '헬렌',
            phone: '010-0000-2000')
      ],
    );
  }
}
