import 'package:clon_whatsapp/main.dart';
import 'package:clon_whatsapp/models/status_model.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: status.length,
      itemBuilder: (context, index) {
        final statusContact = status[index];
        return Column(
          children: [
            Divider(
              height: 10.0,
            ),
            if (index == 1)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Recientes',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  statusContact.imgUrl,
                ),
              ),
              title: Row(
                children: [
                  Text(
                    statusContact.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  statusContact.time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
