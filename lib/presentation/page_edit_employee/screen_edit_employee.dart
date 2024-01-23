import 'package:employee_data/application/employee_edit_bloc/employee_edit_bloc.dart';
import 'package:employee_data/application/employee_list_bloc/employee_list_home_bloc.dart';
import 'package:employee_data/core/constant.dart';
import 'package:employee_data/presentation/page_edit_employee/widgets/edit_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenEdiEmployee extends StatelessWidget {
  const ScreenEdiEmployee({super.key, this.id});

  final int? id;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<EmployeeEditBloc>(context).add(FetchDataEvent(id!));
    });
    Size size = MediaQuery.sizeOf(context);
    TextEditingController employeeNameController = TextEditingController();
    TextEditingController employeeRoleController = TextEditingController();
    TextEditingController joinDateController = TextEditingController();
    TextEditingController resignDateController = TextEditingController();
    GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
    GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
    late String oldName;
    late String oldRole;
    late String oldJionDate;
    late String oldResignDate;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Edit Employee Details",
          style: TextStyle(
              color: whiteColor, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.read<EmployeeListHomeBloc>().add(DeleteEmployee(id!));
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                      "Remove",
                      style: TextStyle(color: blueColor),
                    ),
                    dismissDirection: DismissDirection.down,
                    backgroundColor: lightButtonBlue));
              },
              icon: const Icon(
                Icons.delete_outline_rounded,
                color: Colors.white,
              ))
        ],
        backgroundColor: blueColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, top: 24, left: 16),
          child: Column(
            children: [
              BlocBuilder<EmployeeEditBloc, EmployeeEditState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 2,
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 2,
                      ),
                    ),
                    loaded: (employeeModelData) {
                      oldName = employeeModelData.employeeName!;
                      return DataTextField(
                          oldValue: oldName,
                          formKey: formKey1,
                          isVisible: false,
                          hintString: "Employee name",
                          textFieldPrefixIcon: const Icon(Icons.person_outline,
                              color: blueColor),
                          controller: employeeNameController);
                    },
                  );
                },
              ),
              const SizedBox(
                height: 23,
              ),
              BlocBuilder<EmployeeEditBloc, EmployeeEditState>(
                builder: (context, state) {
                  return state.when(
                      initial: () => const Center(
                            child: CircularProgressIndicator.adaptive(
                              strokeWidth: 2,
                            ),
                          ),
                      loading: () => const Center(
                            child: CircularProgressIndicator.adaptive(
                              strokeWidth: 2,
                            ),
                          ),
                      loaded: (employeeModelData) {
                        oldRole = employeeModelData.role!;
                        return DataTextField(
                            oldValue: oldRole,
                            formKey: formKey2,
                            isVisible: true,
                            hintString: "Select role",
                            textFieldPrefixIcon: const Icon(
                                Icons.cases_outlined,
                                color: blueColor),
                            controller: employeeRoleController);
                      });
                },
              ),
              const SizedBox(
                height: 23,
              ),
              BlocBuilder<EmployeeEditBloc, EmployeeEditState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 2,
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 2,
                      ),
                    ),
                    loaded: (employeeModelData) {
                      oldJionDate = employeeModelData.joinDate!;
                      oldResignDate = employeeModelData.resignDate!;
                      return DatePickeCalendar(
                        oldJoinDate: oldJionDate,
                        oldResignDate: oldResignDate,
                        joinDateController: joinDateController,
                        resignDateController: resignDateController,
                        size: size,
                      );
                    },
                  );
                },
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
              id: id!,
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
              id: id!,
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
