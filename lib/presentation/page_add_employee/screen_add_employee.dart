import 'package:employee_data/core/constant.dart';
import 'package:employee_data/presentation/page_add_employee/widget/add_employee.dart';
import 'package:flutter/material.dart';

class ScreenAddEmployee extends StatelessWidget {
  const ScreenAddEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    TextEditingController employeeNameController = TextEditingController();
    TextEditingController employeeRoleController = TextEditingController();

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
                  isVisible: false,
                  hintString: "Employee name",
                  textFieldPrefixIcon:
                      const Icon(Icons.person_outline, color: blueColor),
                  controller: employeeNameController),
              const SizedBox(
                height: 23,
              ),
              DataTextField(
                  isVisible: true,
                  hintString: "Select role",
                  textFieldPrefixIcon:
                      const Icon(Icons.cases_outlined, color: blueColor),
                  controller: employeeRoleController),
              const SizedBox(
                height: 23,
              ),
              DatePicker(size: size),
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
      floatingActionButton: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
              text: "Cancel",
              buttonColor: lightButtonBlue,
              textColor: blueColor),
          SizedBox(
            width: 16,
          ),
          CustomButton(
              text: "Save", buttonColor: blueColor, textColor: Colors.white),
        ],
      ),
    );
  }
}
