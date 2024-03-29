import 'package:employee_data/application/employee_list_bloc/employee_list_home_bloc.dart';
import 'package:employee_data/core/constant.dart';
import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/presentation/page_add_employee/screen_add_employee.dart';

import 'package:employee_data/presentation/page_home/widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<EmployeeListHomeBloc>(context)
          .add(const EmployeeListHomeEvent.fetchEmployeesEvent());
    });
    final Size size = MediaQuery.sizeOf(context);
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    int currentEmployeeLength = 0;
    int previousEmployeeLength = 0;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                          ? Padding(
                              padding: const EdgeInsets.only(bottom: 80),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/no_data.png"),
                                  const Text(
                                    "No employee recorda found",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                currentEmployeeList.isNotEmpty
                                    ? EmployeeCategoriesTitle(
                                        textColor: blueColor,
                                        size: size,
                                        title: "Current employees",
                                      )
                                    : EmployeeCategoriesTitle(
                                        textColor: calendarDividerGreyColor,
                                        size: size,
                                        title: "No urrent employees",
                                      ),
                                Expanded(
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        currentEmployeeLength =
                                            currentEmployeeList.length;
                                        bool isLastItem = index ==
                                            currentEmployeeList.length - 1;
                                        return EmployeeDetailTitle(
                                            scaffoldKey: _scaffoldKey,
                                            isEnd: isLastItem,
                                            index: index,
                                            employeeDataList:
                                                currentEmployeeList,
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
                                previousEmployeeList.isNotEmpty
                                    ? EmployeeCategoriesTitle(
                                        textColor: blueColor,
                                        size: size,
                                        title: "Previous employees")
                                    : EmployeeCategoriesTitle(
                                        textColor: calendarDividerGreyColor,
                                        size: size,
                                        title: "No previous employees"),
                                Expanded(
                                  child: ListView.separated(
                                      physics: const BouncingScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        previousEmployeeLength =
                                            previousEmployeeList.length;
                                        bool isLastItem = index ==
                                            previousEmployeeList.length - 1;
                                        return EmployeeDetailTitle(
                                            scaffoldKey: _scaffoldKey,
                                            isEnd: isLastItem,
                                            index: index,
                                            employeeDataList:
                                                previousEmployeeList,
                                            size: size,
                                            employeeName:
                                                previousEmployeeList[index]
                                                    .employeeName!,
                                            employeeWorkingDomain:
                                                previousEmployeeList[index]
                                                    .role!,
                                            employeeWorkingPeriod:
                                                "${previousEmployeeList[index].joinDate} - ${previousEmployeeList[index].resignDate}");
                                      },
                                      separatorBuilder: (context, index) =>
                                          const Divider(
                                              color: dividerGreyColor),
                                      itemCount: previousEmployeeList.length),
                                ),
                                currentEmployeeLength == 0 &&
                                        previousEmployeeLength == 0
                                    ? IteamDeleteInstruction(
                                        size: size,
                                        title: "Swipe left to delete")
                                    : const SizedBox()
                              ],
                            );
                    },
                  );
                },
              ),
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
          onPressed: () =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const ScreenAddEmployee(),
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
