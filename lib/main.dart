import 'package:flutter/material.dart';
import 'package:helloflutter/column.dart';
import 'package:helloflutter/column_mix_row.dart';
import 'package:helloflutter/gridview.dart';
import 'package:helloflutter/image_assert.dart';
import 'package:helloflutter/image_network.dart';
import 'package:helloflutter/list_horizontal.dart';
import 'package:helloflutter/listview.dart';
import 'package:helloflutter/row.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloflutter/store_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  //controller
  TextEditingController controllerForm = TextEditingController();

  // key form for validation
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          centerTitle: true,
          title: const Text("Hello Flutter App"),
        ),
        drawer: Container(
          color: Colors.white,
          width: MediaQuery
              .of(context)
              .size
              .width * 0.8,
          height: double.infinity,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Mashran"),
                accountEmail: Text("mashranmohamad@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.widgets),
                trailing: const Icon(Icons.list),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const RowPage()));
                },
                title: const Text("Row page"),
                subtitle: const Text("how to using row widget..."),
              ),
              ListTile(
                leading: const Icon(Icons.widgets),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ColumnPage()));
                },
                title: const Text("Column page"),
                subtitle: const Text("how to using column widget..."),
              ),
              ListTile(
                leading: const Icon(Icons.widgets),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ColumnMixRow()));
                },
                title: const Text("Column mix Row page"),
                subtitle: const Text("how to using column and row mixing..."),
              ),
              ListTile(
                leading: const Icon(Icons.widgets),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const GridViewPage()));
                },
                title: const Text("Gridview page"),
                subtitle: const Text("how to using gridview widget..."),
              ),
              ListTile(
                leading: const Icon(Icons.widgets),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ListViewPage()));
                },
                title: const Text("Listview page"),
              ),
              ListTile(
                leading: const Icon(Icons.widgets),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (_) => const ListHorizontal()));
                },
                title: const Text("Listview horizontal"),
              ),
              ListTile(
                leading: const Icon(Icons.widgets),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (_) => const ImageAssetPage()));
                },
                title: const Text("Image Asset"),
              ),
              ListTile(
                leading: const Icon(Icons.widgets),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (_) => const ImageNetworkPage()));
                },
                title: const Text("Image Network"),
              ),
            ],
          ),
        ),
        body: Form(
          key: formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Welcome to Hello Flutter App", style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline
                ),),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Field must be fill" :
                      null;
                    },
                    controller: controllerForm,
                    decoration: InputDecoration(
                        fillColor: Colors.green[100],
                        filled: true,
                        hintText:
                        "Fill a text", border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20,),
                        borderSide: BorderSide.none)),
                  ),
                ),

                const SizedBox(height: 20,), //for create space between material
                Row( //create row for button placement
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Fluttertoast.showToast(
                              msg: "Hello ${controllerForm.text}",
                              backgroundColor: Colors.orange,
                              gravity: ToastGravity.CENTER,
                              toastLength: Toast.LENGTH_SHORT);
                        }
                      },
                      height: 40,
                      minWidth: 50,
                      color: Colors.orange,
                      child: const Text("Toast",
                        style: TextStyle(color: Colors.white),),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).
                          showSnackBar(
                              SnackBar(
                                duration: const Duration(seconds: 2),
                                content: Text(
                                    "Hello ${controllerForm.text} In SnackBar"),
                                backgroundColor: Colors.green,
                              ));
                        }
                      },
                      height: 40,
                      minWidth: 50,
                      color: Colors.red,
                      child: const Text("Snackbar",
                        style: TextStyle(color: Colors.white),),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) =>

                                  StoreData(data: controllerForm.text,)));
                        }
                      },
                      height: 40,
                      minWidth: 50,
                      color: Colors.purple,
                      child: const Text("pass data",
                        style: TextStyle(color: Colors.white),),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}


