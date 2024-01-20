import 'package:employee_data/core/constant.dart';
import 'package:flutter/material.dart';

class DataTextField extends StatelessWidget {
  const DataTextField({
    super.key,
    required this.isVisible,
    required this.hintString,
    required this.textFieldPrefixIcon,
    required this.controller,
  });
  final bool isVisible;
  final String hintString;
  final Icon textFieldPrefixIcon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return TextField(
      controller: controller,
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
                            separatorBuilder: (context, index) => const Divider(
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
    );
  }
}

class DatePicker extends StatelessWidget {
  const DatePicker({
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
                onPressed: () {},
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  color: blueColor,
                ),
              ),
              hintStyle:
                  const TextStyle(fontSize: 16, color: detailsTextGreyColor),
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
                onPressed: () {},
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  color: blueColor,
                ),
              ),
              hintStyle:
                  const TextStyle(fontSize: 16, color: detailsTextGreyColor),
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
  });
  final String text;
  final Color buttonColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
