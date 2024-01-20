import 'package:employee_data/core/constant.dart';
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
    return Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          onPressed: (context) {},
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
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                employeeWorkingDomain,
                style:
                    const TextStyle(color: detailsTextGreyColor, fontSize: 14),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                employeeWorkingPeriod,
                style:
                    const TextStyle(color: detailsTextGreyColor, fontSize: 14),
              ),
            ],
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
