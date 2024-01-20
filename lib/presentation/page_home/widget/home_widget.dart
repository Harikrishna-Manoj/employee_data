import 'package:employee_data/core/constant.dart';
import 'package:employee_data/presentation/page_add_employee/screen_add_employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class EmployeeDetailTitle extends StatelessWidget {
  const EmployeeDetailTitle({
    super.key,
    required this.size,
    required this.employeeName,
    required this.employeeWorkingDomain,
    required this.employeeWorkingPeriod,
  });

  final Size size;
  final String employeeName;
  final String employeeWorkingDomain;
  final String employeeWorkingPeriod;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const ScreenAddEmployee(isAddingScreen: false),
          )),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: (context) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Employee data has been deleted",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Undo"))
                    ],
                  ),
                  dismissDirection: DismissDirection.down,
                  padding: const EdgeInsets.only(left: 25),
                  duration: const Duration(seconds: 3),
                  backgroundColor: const Color.fromRGBO(50, 50, 56, 1)));
            },
            backgroundColor: Colors.red,
            icon: Icons.delete_outline_sharp,
          )
        ]),
        child: SizedBox(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  employeeName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  employeeWorkingDomain,
                  style: const TextStyle(
                      color: detailsTextGreyColor, fontSize: 14),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  employeeWorkingPeriod,
                  style: const TextStyle(
                      color: detailsTextGreyColor, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmployeeCategoriesTitle extends StatelessWidget {
  const EmployeeCategoriesTitle({
    super.key,
    required this.size,
    required this.title,
  });
  final String title;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 56,
      child: ColoredBox(
        color: containerGreyColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: blueColor, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class IteamDeleteInstruction extends StatelessWidget {
  const IteamDeleteInstruction({
    super.key,
    required this.size,
    required this.title,
  });
  final String title;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 65,
      child: ColoredBox(
        color: containerGreyColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 10),
          child: Text(
            title,
            style: const TextStyle(color: detailsTextGreyColor, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
