import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Imagens',
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.exit_to_app,
              ),
              onPressed: () => {
                    Navigator.pushReplacementNamed(context, "/")
                  }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.pushNamed(context, "/novoLugar")
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => Card(
                elevation: 10,
                margin: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Lugar ${index + 1}"),
                        subtitle: Text('Minhas fotos!'),
                        trailing: IconButton(onPressed: () => {}, icon: Icon(Icons.add_a_photo)),
                      ),
                      Container(
                        child: Image.network('https://i.pinimg.com/originals/eb/8a/4d/eb8a4d77c9e87a7823b8c60cd27dcf36.gif'),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
