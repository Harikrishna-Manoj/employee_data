import 'package:employee_data/core/constant.dart';
import 'package:employee_data/presentation/page_home/widget/home_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            IteamDeleteInstruction(size: size, title: "Swipe left to delete"),
            Column(
              children: [
                EmployeeCategoriesTitle(
                  size: size,
                  title: "Current employees",
                ),
                Flexible(
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => EmployeeDetailTitle(
                          size: size,
                          employeeName: "employeeName",
                          employeeWorkingDomain: "employeeWorkingDomain",
                          employeeWorkingPeriod: "employeeWorkingPeriod"),
                      separatorBuilder: (context, index) =>
                          const Divider(color: dividerGreyColor),
                      itemCount: 3),
                ),
                EmployeeCategoriesTitle(
                    size: size, title: "Previous employees"),
                Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => EmployeeDetailTitle(
                          size: size,
                          employeeName: "employeeName",
                          employeeWorkingDomain: "employeeWorkingDomain",
                          employeeWorkingPeriod: "employeeWorkingPeriod"),
                      separatorBuilder: (context, index) =>
                          const Divider(color: dividerGreyColor),
                      itemCount: 6),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: blueColor,
        elevation: 0,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 18,
          color: whiteColor,
        ),
      ),
    );
  }
}
