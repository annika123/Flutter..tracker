import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date and Time Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  Future<void> _pickDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date and Time Picker',
        style: GoogleFonts.firaCode(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedDate == null
                  ? 'No date selected'
                  : 'Selected Date: ${_selectedDate!.toLocal().toString().split(' ')[0]}',
              style: GoogleFonts.firaCode(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.amber[800]
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickDate,
              child: Text('Pick a Date'),
            ),
            SizedBox(height: 40),
            Text(
              _selectedTime == null
                  ? 'No time selected'
                  : 'Selected Time: ${_selectedTime!.format(context)}',
              style: GoogleFonts.firaCode(
                fontSize: 24,
                color: Colors.amber[800],
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickTime,
              child: Text('Pick a Time'),
            ),
          ],
        ),
      ),
    );
  }
}