import 'package:employee_data/application/employee_list_bloc/employee_list_home_bloc.dart';
import 'package:employee_data/core/constant.dart';
import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/presentation/page_edit_employee/screen_edit_employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:another_flushbar/flushbar.dart';

class EmployeeDetailTitle extends StatefulWidget {
  const EmployeeDetailTitle({
    super.key,
    required this.size,
    required this.employeeName,
    required this.employeeWorkingDomain,
    required this.employeeWorkingPeriod,
    required this.employeeDataList,
    required this.index,
    required this.isEnd,
    required this.scaffoldKey,
  });

  final Size size;
  final String employeeName;
  final String employeeWorkingDomain;
  final String employeeWorkingPeriod;
  final List<EmployeeModelData> employeeDataList;
  final int index;
  final bool isEnd;
  final GlobalKey scaffoldKey;
  @override
  State<EmployeeDetailTitle> createState() => _EmployeeDetailTitleState();
}

class _EmployeeDetailTitleState extends State<EmployeeDetailTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenEdiEmployee(
                    id: widget.employeeDataList[widget.index].id),
              )),
          child: Slidable(
            endActionPane: ActionPane(motion: const StretchMotion(), children: [
              SlidableAction(
                onPressed: (context) {
                  context.read<EmployeeListHomeBloc>().add(
                      EmployeeListHomeEvent.deleteEmployeeFromHomeEvent(
                          widget.employeeDataList[widget.index].id!));
                  Flushbar(
                    message: "Employee data has been deleted",
                    duration: const Duration(seconds: 3),
                  ).show(context);
                },
                backgroundColor: Colors.red,
                icon: Icons.delete_outline_sharp,
              )
            ]),
            child: SizedBox(
              width: widget.size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.employeeName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.employeeWorkingDomain,
                      style: const TextStyle(
                          color: detailsTextGreyColor, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.employeeWorkingPeriod,
                      style: const TextStyle(
                          color: detailsTextGreyColor, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        widget.isEnd
            ? const Text(
                "No more data",
                style: TextStyle(color: calendarDividerGreyColor),
              )
            : const Text("")
      ],
    );
  }
}

class EmployeeCategoriesTitle extends StatelessWidget {
  const EmployeeCategoriesTitle({
    super.key,
    required this.size,
    required this.title,
    required this.textColor,
  });
  final String title;
  final Size size;
  final Color textColor;

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
            style: TextStyle(
                fontWeight: FontWeight.w500, color: textColor, fontSize: 16),
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
