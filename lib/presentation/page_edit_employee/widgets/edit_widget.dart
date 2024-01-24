// ignore_for_file: prefer_final_fields

import 'package:employee_data/application/add_employee_bloc/add_employee_bloc.dart';
import 'package:employee_data/application/employee_list_bloc/employee_list_home_bloc.dart';
import 'package:employee_data/core/constant.dart';
import 'package:employee_data/domain/database_model/database_model.dart';

import 'package:employee_data/presentation/page_add_employee/widget/date_picker.dart';
import 'package:employee_data/presentation/page_home/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DataTextField extends StatelessWidget {
  const DataTextField({
    super.key,
    required this.isVisible,
    required this.hintString,
    required this.textFieldPrefixIcon,
    required this.controller,
    required this.formKey,
    this.oldValue,
  });
  final bool isVisible;
  final String hintString;
  final Icon textFieldPrefixIcon;
  final TextEditingController controller;
  final GlobalKey<FormState> formKey;
  final String? oldValue;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    controller.text = oldValue ?? "jh";
    return Form(
      key: formKey,
      child: TextFormField(
        controller: controller,
        readOnly: isVisible,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp("[a-z A-Z.]")),
        ],
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "This field should not be empty";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          prefixIcon: textFieldPrefixIcon,
          suffixIcon: Visibility(
              visible: isVisible,
              child: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: size.height / 2.8,
                          child: ListView.separated(
                              itemBuilder: (context, index) => ListTile(
                                    onTap: () {
                                      controller.text = jobRoleConstant[index];
                                      Navigator.pop(context);
                                    },
                                    title: Center(
                                        child: Text(
                                      jobRoleConstant[index],
                                      style: const TextStyle(fontSize: 16),
                                    )),
                                  ),
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                    color: dividerGreyColor,
                                  ),
                              itemCount: jobRoleConstant.length),
                        );
                      });
                },
                icon: const Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 30,
                  color: blueColor,
                ),
              )),
          hintText: hintString,
          hintStyle: const TextStyle(fontSize: 16, color: detailsTextGreyColor),
          contentPadding: const EdgeInsets.all(8),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: detailsTextGreyColor)),
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: detailsTextGreyColor, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
      ),
    );
  }
}

class DatePickeCalendar extends StatelessWidget {
  const DatePickeCalendar(
      {super.key,
      required this.size,
      required this.joinDateController,
      required this.resignDateController,
      required this.oldJoinDate,
      required this.oldResignDate});

  final Size size;
  final TextEditingController joinDateController;
  final TextEditingController resignDateController;
  final String oldJoinDate;
  final String oldResignDate;
  @override
  Widget build(BuildContext context) {
    joinDateController.text = oldJoinDate;
    resignDateController.text = oldResignDate;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 150,
          child: TextField(
            controller: joinDateController,
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () async {
                  DateTime? pickedDate = await showCustomDatePicker(
                    isDateStartingCalendar: true,
                    fieldLabelText: "hwll",
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    confirmText: "Save",
                    initialDate: DateTime.now(),
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                  );
                  if (pickedDate != null) {
                    joinDateController.text =
                        DateFormat('d LLL yyyy').format(pickedDate);
                  }
                },
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  color: blueColor,
                ),
              ),
              hintText: "Today",
              hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: detailsTextGreyColor)),
              contentPadding: const EdgeInsets.all(8),
              border: const OutlineInputBorder(
                borderSide: BorderSide(width: 0),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: detailsTextGreyColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
            ),
          ),
        ),
        const Icon(
          Icons.arrow_forward_outlined,
          size: 20,
          color: blueColor,
        ),
        SizedBox(
          width: 150,
          child: TextField(
            controller: resignDateController,
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () async {
                  DateTime? pickedDate = await showCustomDatePicker(
                    isDateStartingCalendar: false,
                    fieldLabelText: "hwll",
                    confirmText: "Save",
                    initialDate: DateTime.now(),
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                  );
                  if (pickedDate != null) {
                    resignDateController.text = pickedDate.year == 0000
                        ? "No date"
                        : DateFormat('d LLL yyyy').format(pickedDate);
                  }
                },
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  color: blueColor,
                ),
              ),
              hintText: "No date",
              hintStyle:
                  const TextStyle(fontSize: 14, color: detailsTextGreyColor),
              contentPadding: const EdgeInsets.all(8),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: detailsTextGreyColor)),
              border: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: detailsTextGreyColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    this.formKey1,
    this.formKey2,
    required this.isSaveButton,
    this.isSavepage,
    this.nameController,
    this.roleController,
    this.joinDateController,
    this.resignDateController,
    required this.id,
  });
  final String text;
  final Color buttonColor;
  final Color textColor;
  final GlobalKey<FormState>? formKey1;
  final GlobalKey<FormState>? formKey2;
  final bool isSaveButton;
  final bool? isSavepage;
  final TextEditingController? nameController;
  final TextEditingController? roleController;
  final TextEditingController? joinDateController;
  final TextEditingController? resignDateController;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 73,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWell(
        onTap: () {
          if (isSaveButton) {
            if (formKey1!.currentState!.validate() &&
                formKey2!.currentState!.validate()) {
              EmployeeModelData data = EmployeeModelData(
                  id: id,
                  employeeName: nameController?.text.trim() ?? "",
                  role: roleController?.text.trim() ?? "",
                  joinDate: joinDateController?.text.trim() == ""
                      ? DateFormat('d LLL yyyy').format(DateTime.now())
                      : joinDateController?.text.trim(),
                  resignDate: resignDateController?.text.trim() == ""
                      ? "No date"
                      : resignDateController?.text.trim());
              context
                  .read<AddEmployeeBloc>()
                  .add(AddEmployeeEvent.editEmployee(data));
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                    "Updated",
                    style: TextStyle(color: blueColor),
                  ),
                  dismissDirection: DismissDirection.down,
                  backgroundColor: lightButtonBlue));
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenHome(),
                  ));
              context
                  .read<EmployeeListHomeBloc>()
                  .add(const FetchEmployeesEvent());
            }
          } else {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenHome(),
                ));
          }
        },
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
