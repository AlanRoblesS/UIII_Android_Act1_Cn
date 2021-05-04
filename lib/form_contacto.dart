import 'package:flutter/material.dart';
import 'datos_contacto.dart';

class PaginaConatcto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mis Contactos'),
        ),
        body: ContactList(loscontactos)); //Fin de scaffold
  } //Fin del widget
} //Fin de paginacontacto

class ContactList extends StatelessWidget {
  final List<Contacto> _contactos;
  ContactList(this._contactos);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.symmetric(vertical: 8.0), children: _buildContactList()); //Fin listview
  } //Fin del widget

  List<_ContactListItem> _buildContactList() {
    return _contactos.map((contacto) => _ContactListItem(contacto)).toList();
  }
} //Fin clase lista de contacto

class _ContactListItem extends ListTile {
  _ContactListItem(Contacto contacto) : super(title: Text(contacto.nombrecompleto), subtitle: Text(contacto.email), leading: CircleAvatar(child: Text(contacto.nombrecompleto[0]))); //Fin de super
} //Fin de contactlistitem
