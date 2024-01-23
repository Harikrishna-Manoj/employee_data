import 'package:employee_data/application/employee_list_bloc/employee_list_home_bloc.dart';
import 'package:employee_data/core/constant.dart';
import 'package:employee_data/presentation/page_add_employee/screen_add_employee.dart';
import 'package:employee_data/presentation/page_home/widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<EmployeeListHomeBloc>(context)
          .add(const EmployeeListHomeEvent.fetchEmployees());
    });
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Employee List",
          style: TextStyle(
              color: whiteColor, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        backgroundColor: blueColor,
      ),
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              BlocBuilder<EmployeeListHomeBloc, EmployeeListHomeState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/no_data.png"),
                          const Text(
                            "No employee recorda found",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 2,
                      ),
                    ),
                    fetched: (currentEmployeeList, previousEmployeeList) {
                      return currentEmployeeList.isEmpty &&
                              previousEmployeeList.isEmpty
                          ? Center(
                              child: Image.asset("assets/images/no_data.png"),
                            )
                          : Column(
                              children: [
                                Visibility(
                                  visible: currentEmployeeList.isNotEmpty,
                                  child: EmployeeCategoriesTitle(
                                    size: size,
                                    title: "Current employees",
                                  ),
                                ),
                                Expanded(
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return EmployeeDetailTitle(
                                            size: size,
                                            employeeName:
                                                currentEmployeeList[index]
                                                    .employeeName!,
                                            employeeWorkingDomain:
                                                currentEmployeeList[index]
                                                    .role!,
                                            employeeWorkingPeriod:
                                                "From ${currentEmployeeList[index].joinDate!}");
                                      },
                                      separatorBuilder: (context, index) =>
                                          const Divider(
                                              color: dividerGreyColor),
                                      itemCount: currentEmployeeList.length),
                                ),
                                Visibility(
                                  visible: previousEmployeeList.isNotEmpty,
                                  child: EmployeeCategoriesTitle(
                                      size: size, title: "Previous employees"),
                                ),
                                Expanded(
                                  child: ListView.separated(
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) =>
                                          EmployeeDetailTitle(
                                              size: size,
                                              employeeName:
                                                  previousEmployeeList[index]
                                                      .employeeName!,
                                              employeeWorkingDomain:
                                                  previousEmployeeList[index]
                                                      .role!,
                                              employeeWorkingPeriod:
                                                  "${previousEmployeeList[index].joinDate} - ${previousEmployeeList[index].resignDate}"),
                                      separatorBuilder: (context, index) =>
                                          const Divider(
                                              color: dividerGreyColor),
                                      itemCount: previousEmployeeList.length),
                                )
                              ],
                            );
                    },
                  );
                },
              ),
              Visibility(
                child: IteamDeleteInstruction(
                    size: size, title: "Swipe left to delete"),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: FloatingActionButton.small(
          backgroundColor: blueColor,
          elevation: 0,
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ScreenAddEmployee(isAddingScreen: true),
          )),
          child: const Icon(
            Icons.add,
            size: 18,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
