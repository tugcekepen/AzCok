import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../components/bottom_navigation_bar.dart';
import '../data/Categories.dart';
import '../models/Category.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime _today = DateTime.now();
  // ignore: prefer_typing_uninitialized_variables
  var _selectedDay;

  void _onDaySelected(selectedDay, focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _today = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text("deneme"),
      ),
      body: Column(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: TableCalendar(
              firstDay: DateTime(2010, 1, 1),
              lastDay: DateTime(2050, 12, 31),
              focusedDay: _today,
              locale: 'tr_TR',
              startingDayOfWeek: StartingDayOfWeek.monday,
              rowHeight: _CustomCalendarStyles().height,
              daysOfWeekHeight: _CustomCalendarStyles().height,
              sixWeekMonthsEnforced: true,
              shouldFillViewport: true,
              calendarStyle: CalendarStyle(
                  weekendTextStyle: TextStyle(
                      color:
                          _CustomCalendarStyles().weekendTextColor(context))),
              daysOfWeekStyle: DaysOfWeekStyle(
                  weekendStyle: TextStyle(
                      color: _CustomCalendarStyles().weekendTextColor(context),
                      fontWeight: _CustomCalendarStyles().weekTextWeight()),
                  weekdayStyle: TextStyle(
                      fontWeight: _CustomCalendarStyles().weekTextWeight())),
              headerStyle: const HeaderStyle(
                  formatButtonVisible: false, titleCentered: true),
              onDaySelected: _onDaySelected,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            )),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Divider(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView(
            padding: const EdgeInsets.only(left: 15, right: 15),
            shrinkWrap: true,
            children: [
              for (Category category in sortedCategories)
                ListTile(
                  isThreeLine: true,
                  title: Text(category.categoryName),
                  subtitle: Text("${category.totalProduct.toString()} ürün"),
                  trailing: Image.asset(category.categoryPic),
                )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: customBottomNavigationBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/product_add_page');
        },
        tooltip: 'deneme',
        mini: true,
        elevation: 5,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _CustomCalendarStyles {
  final double height = 35;

  Color weekendTextColor(BuildContext context) {
    return Theme.of(context).primaryColor;
  }

  FontWeight weekTextWeight() {
    return FontWeight.bold;
  }
}
