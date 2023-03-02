import 'package:flutter/material.dart';

class InfoUser extends StatelessWidget {
  const InfoUser({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User information',
      home: Scaffold(
        appBar: AppBar(
          title: Text('User info'),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                const Center(
                  // ignore: unnecessary_const
                  child: const Text(
                    'User information',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'First name',
                    icon: Icon(Icons.account_circle),
                  ),
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Middle name',
                    icon: Icon(Icons.account_circle),
                  ),
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Last name',
                    icon: Icon(Icons.account_circle),
                  ),
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone number 1',
                    icon: Icon(Icons.phone),
                  ),
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone number 2',
                    icon: Icon(Icons.phone),
                  ),
                ),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    icon: Icon(Icons.email),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                const Text(
                  'What is your Gender?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text('Male'),
                        leading: Radio(
                          value: 'male',
                          groupValue: '_gen',
                          onChanged: (value) {},
                        ),
                      )
                    ),

                    Expanded(
                      child: ListTile(
                        title: const Text('FeMale'),
                        leading: Radio(
                          value: 'female',
                          groupValue: '_gen',
                          onChanged: (value) {},
                        ),
                      )
                    ),

                    Expanded(
                      child: ListTile(
                        title: const Text('Other'),
                        leading: Radio(
                          value: 'other',
                          groupValue: '_gen',
                          onChanged: (value) {},
                        ),
                      )
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                const Text(
                  'What is your favorite?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('Read book'),
                        value: false,
                        onChanged: (value) {},
                      )
                    ),

                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('Listen music'),
                        value: false,
                        onChanged: (value) {},
                      )
                    ),

                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('Watch movie'),
                        value: false,
                        onChanged: (value) {},
                      )
                    ),
                  ],
                ),

              ],)
            )
          )
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: 'Add user',
          child: const Icon(Icons.add),
        ),
      )
    );
  }
}