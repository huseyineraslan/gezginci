import 'package:flutter/material.dart';

class MesajlarSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesajlar'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Irmak Çevik'),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Siparişi Al'),
                ),
              ],
            ),
            subtitle: Text('Ankaradan geleceğini gördüm benim için arkadaşımdan bir paket alabilirmisin...'),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Şenol Güneş'),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Siparişi Al'),
                ),
              ],
            ),
            subtitle: Text('Bir ay sonra Trabzondan gelecekmişsin benim için ekmek getirirmisin...'),
          ),
        ],
      ),
    );
  }
}
