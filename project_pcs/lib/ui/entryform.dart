import 'package:flutter/material.dart';
import 'package:project_pcs/models/materi.dart';

class EntryForm extends StatefulWidget {
  final Materi materi;
  const EntryForm({super.key, required this.materi});

  @override
  State<EntryForm> createState() => _EntryFormState(materi);
}

class _EntryFormState extends State<EntryForm> {
  Materi materi;
  _EntryFormState(this.materi);
  TextEditingController nameController = TextEditingController();
  TextEditingController keteranganController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (materi != null) {
      nameController.text = materi.name;
      keteranganController.text = materi.keterangan;
    }
    return Scaffold(
      appBar: AppBar(
        title: materi == null ? Text('Tambah Data') : Text('Ubah Data'),
        leading:  Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: keteranganController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nomor HP',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(                      
                      child: Text('Simpan', textScaleFactor: 1.5,),
                      onPressed: () {
                        if (materi == null) {
                          materi = materi;
                        } else {
                          materi.name = nameController.text;
                          materi.keterangan = keteranganController.text;
                        }
                        Navigator.pop(context,materi);
                      },
                    )
                  ),
                  Container(width: 5.0,),
                  Expanded(
                    child: ElevatedButton(
                      child: Text('Batal', textScaleFactor: 1.5,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}