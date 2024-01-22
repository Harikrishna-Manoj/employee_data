// ignore_for_file: prefer_final_fields

import 'package:employee_data/core/constant.dart';
import 'package:employee_data/presentation/page_add_employee/widget/date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataTextField extends StatelessWidget {
  const DataTextField({
    super.key,
    required this.isVisible,
    required this.hintString,
    required this.textFieldPrefixIcon,
    required this.controller,
    required this.formKey,
  });
  final bool isVisible;
  final String hintString;
  final Icon textFieldPrefixIcon;
  final TextEditingController controller;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
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
  const DatePickeCalendar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 140,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {
                  showCustomDatePicker(
                    isDateStartingCalendar: true,
                    fieldLabelText: "hwll",
                    initialEntryMode: DatePickerEntryMode.calendarOnly,
                    confirmText: "Save",
                    initialDate: DateTime.now(),
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                  );
                },
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  color: blueColor,
                ),
              ),
              hintText: "Today",
              hintStyle: const TextStyle(fontSize: 14, color: Colors.black),
              contentPadding: const EdgeInsets.all(8),
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
        ),
        const Icon(
          Icons.arrow_forward_outlined,
          size: 20,
          color: blueColor,
        ),
        SizedBox(
          width: 140,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {
                  showCustomDatePicker(
                    isDateStartingCalendar: false,
                    fieldLabelText: "hwll",
                    // initialEntryMode: DatePickerEntryMode.calendarOnly,
                    confirmText: "Save",
                    initialDate: DateTime.now(),
                    context: context,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                  );
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
  });
  final String text;
  final Color buttonColor;
  final Color textColor;
  final GlobalKey<FormState>? formKey1;
  final GlobalKey<FormState>? formKey2;
  final bool isSaveButton;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isSaveButton) {
          if (formKey1!.currentState!.validate() &&
              formKey2!.currentState!.validate()) {}
        } else {
          Navigator.pop(context);
        }
      },
      child: Container(
        height: 40,
        width: 73,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
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
