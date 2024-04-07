import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class currency extends StatefulWidget {
  const currency({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<currency> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  double weight = 0;

  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: const Color.fromARGB(255, 18, 17, 17),
        title: Text(
          "Weight in Pound",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromRGBO(153, 153, 153, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter your weight",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: textEditingController,
                restorationId: "text",
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(255, 203, 48, 48),
                ),
                decoration: InputDecoration(
                  hintText: "Enter your weight in KG",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                    color: Colors.red,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_rounded),
                  prefixIconColor: Colors.red,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      weight = double.parse(textEditingController.text) * 2.205;
                    });
                  },
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                      minimumSize:
                          MaterialStatePropertyAll(Size(double.infinity, 40)),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 222, 71, 29))),
                  child: Text("Weight in Pound")),
            ),
            Text(
              weight.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

// class currencys extends StatelessWidget {
//   currencys({Key? key}) : super(key: key);
//   final TextEditingController textEditingController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     double weight = 0;
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 30,
//         backgroundColor: const Color.fromARGB(255, 18, 17, 17),
//         title: Text(
//           "Weight in Pound",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       backgroundColor: Color.fromRGBO(153, 153, 153, 1),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Enter your weight",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//                 color: Colors.blueAccent,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: TextField(
//                 controller: textEditingController,
//                 restorationId: "text",
//                 keyboardType: TextInputType.text,
//                 style: TextStyle(
//                   fontSize: 10,
//                   color: Color.fromARGB(255, 203, 48, 48),
//                 ),
//                 decoration: InputDecoration(
//                   hintText: "Enter your weight in KG",
//                   hintStyle: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 10,
//                     color: Colors.red,
//                   ),
//                   prefixIcon: Icon(Icons.monetization_on_rounded),
//                   prefixIconColor: Colors.red,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(35)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(35)),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: TextButton(
//                   onPressed: () {
//                     weight = double.parse(textEditingController.text);
//                   },
//                   style: ButtonStyle(
//                       shape: MaterialStatePropertyAll(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(0))),
//                       minimumSize:
//                           MaterialStatePropertyAll(Size(double.infinity, 40)),
//                       foregroundColor: MaterialStatePropertyAll(Colors.white),
//                       backgroundColor: MaterialStatePropertyAll(
//                           Color.fromARGB(255, 222, 71, 29))),
//                   child: Text("Weight in Pound")),
//             ),
//             Text(weight.toString())
//           ],
//         ),
//       ),
//     );
//   }
// }
