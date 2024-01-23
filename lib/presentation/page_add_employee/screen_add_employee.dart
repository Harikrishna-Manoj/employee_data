import 'package:employee_data/core/constant.dart';
import 'package:employee_data/presentation/page_add_employee/widget/add_employee.dart';
import 'package:flutter/material.dart';

class ScreenAddEmployee extends StatelessWidget {
  const ScreenAddEmployee({super.key, this.id});

  final int? id;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    TextEditingController employeeNameController = TextEditingController();
    TextEditingController employeeRoleController = TextEditingController();
    TextEditingController joinDateController = TextEditingController();
    TextEditingController resignDateController = TextEditingController();
    GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
    GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Add Employee Details",
          style: TextStyle(
              color: whiteColor, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        backgroundColor: blueColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, top: 24, left: 16),
          child: Column(
            children: [
              DataTextField(
                  formKey: formKey1,
                  isVisible: false,
                  hintString: "Employee name",
                  textFieldPrefixIcon:
                      const Icon(Icons.person_outline, color: blueColor),
                  controller: employeeNameController),
              const SizedBox(
                height: 23,
              ),
              DataTextField(
                  formKey: formKey2,
                  isVisible: true,
                  hintString: "Select role",
                  textFieldPrefixIcon:
                      const Icon(Icons.cases_outlined, color: blueColor),
                  controller: employeeRoleController),
              const SizedBox(
                height: 23,
              ),
              DatePickeCalendar(
                joinDateController: joinDateController,
                resignDateController: resignDateController,
                size: size,
              ),
              const Spacer(),
              const Divider(
                color: dividerGreyColor,
                thickness: 2,
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
              isSaveButton: false,
              formKey1: formKey1,
              formKey2: formKey2,
              text: "Cancel",
              buttonColor: lightButtonBlue,
              textColor: blueColor),
          const SizedBox(
            width: 16,
          ),
          CustomButton(
              nameController: employeeNameController,
              roleController: employeeRoleController,
              joinDateController: joinDateController,
              resignDateController: resignDateController,
              isSaveButton: true,
              formKey1: formKey1,
              formKey2: formKey2,
              text: "Save",
              buttonColor: blueColor,
              textColor: Colors.white),
        ],
      ),
    );
  }
}
