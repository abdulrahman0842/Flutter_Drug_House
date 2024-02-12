import 'package:flut_first/widgets/drugCard.dart';
import 'package:flut_first/widgets/myTheme.dart';
import 'package:flutter/material.dart';
import 'information.dart';

var drug = [
  'Acetaminophen',
  'Adderall',
  'Amitriptyline',
  'Amlodipine',
  'Amoxicillin',
  'Ativan',
  'Atorvastatin',
  'Azithromycin',
  'Benzonatate',
  'Brilinta',
  'Bunavail',
  'Buprenorphine',
  'Cephalexin',
  'Ciprofloxacin',
  'Citalopram',
  'Clindamycin',
  'Clonazepam',
  'Cyclobenzaprine',
  'Cymbalta',
  'Doxycycline',
  'Dupixent',
  'Entresto',
  'Entyvio',
  'Farxiga',
  'Fentanyl Patch',
  'Gabapentin',
  'Gilenya',
  'Humira',
  'Hydrochlorothiazide',
  'Hydroxychloroquine',
  'Ibuprofen',
  'Imbruvica',
  'Invokana',
  'Januvia',
  'Jardiance',
  'Kevzara',
  'Leqvio',
  'Lexapro',
  'Lisinopril',
  'Lofexidine',
  'Loratadine',
  'Lyrica',
  'Melatonin',
  'Meloxicam',
  'Metformin',
  'Methadone',
  'Methotrexate',
  'Metoprolol',
  'Mounjaro',
  'Naloxone',
  'Naltrexone',
  'Naproxen',
  'Narcan',
  'Nurtec',
  'Omeprazole',
  'Onpattro',
  'Otezla',
  'Ozempic',
  'Pantoprazole',
  'Plan B',
  'Prednisone',
  'Probuphine',
  'Rybelsus',
  'secukinumab',
  'Sublocade',
  'Tramadol',
  'Trazodone',
  'Viagra',
  'Wegovy',
  'Wellbutrin',
  'Xanax',
  'Zubsolv'
];

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.lightTheme(context).canvasColor,
        appBar: AppBar(
          title: const Text('Drug House'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemBuilder: (context, index) {
                return DrugCard();
                // return Card(
                //   child: ListTile(
                //     tileColor: Colors.brown.shade100,
                //     splashColor: Colors.brown,
                //     title: Text(
                //       drug[index],
                //       style: const TextStyle(
                //           fontSize: 25.0,
                //           fontStyle: FontStyle.italic,
                //           fontWeight: FontWeight.w500),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) =>
                //                 Information(drugname: drug[index]),
                //           ));
                //     },
                //   ),
                // );
              },
              itemCount: 3),
        ));
  }
}
