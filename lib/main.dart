import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactsScreen(),
    ),
  );
}

class Contact {
  final String name;
  final String phone;

  const Contact(this.name, this.phone);
}

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  final List<Contact> contacts = const [
    Contact('Александр Пидор', '+996 555 123 456'),
    Contact('Алина бывшая', '+996 700 234 567'),
    Contact('Дмитрий Казел', '+996 777 345 678'),
    Contact('София Педик', '+996 500 456 789'),
    Contact('Максим соски', '+996 550 567 890'),
    Contact('Анастасия Волкова', '+996 707 678 901'),
    Contact('Артём Морозов', '+996 990 789 012'),
    Contact('Мария Новикова', '+996 502 890 123'),
    Contact('Илья Фёдоров', '+996 772 901 234'),
    Contact('Екатерина Павлова', '+996 556 012 345'),
    Contact('Тимур Абдылдаев', '+996 701 111 222'),
    Contact('Айдана Осмонова', '+996 555 222 333'),
    Contact('Бекзат Садыков', '+996 770 333 444'),
    Contact('Хумоюн Алиев', '+996 999 444 555'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Контакты', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[850],
              child: Text(
                contact.name[0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(
              contact.name,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              contact.phone,
              style: const TextStyle(color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
