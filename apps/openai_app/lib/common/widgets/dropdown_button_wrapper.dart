import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

typedef DisplayValue<T> = String Function(T?);

class DropdownButtonWrapper<T> extends StatelessWidget {
  const DropdownButtonWrapper({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.value,
    this.displayValue,
    this.decoration,
    this.dropdownWidth = 160,
    this.buttonHeight = 36,
  }) : super(key: key);

  final List<T> items;
  final Function(T?) onChanged;
  final T value;
  final DisplayValue<T>? displayValue;
  final BoxDecoration? decoration;
  final double dropdownWidth;
  final double buttonHeight;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        isExpanded: true,
        items: items
            .map(
              (item) => DropdownMenuItem<T>(
                value: item,
                child: Text(
                  displayValue == null ? item.toString() : displayValue!(item),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
            .toList(),
        value: value,
        onChanged: onChanged,
        icon: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Theme.of(context).hintColor,
        ),
        iconSize: 14,
        iconEnabledColor: Theme.of(context).colorScheme.background,
        iconDisabledColor: Colors.grey,
        buttonHeight: buttonHeight,
        buttonWidth: 140,
        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        buttonDecoration: decoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary,
                width: 1,
              ),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
        buttonElevation: 0,
        itemHeight: 45,
        itemPadding: const EdgeInsets.only(left: 16, right: 16),
        dropdownMaxHeight: 235,
        dropdownWidth: dropdownWidth,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        dropdownElevation: 4,
        scrollbarRadius: const Radius.circular(40),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(-10, -12),
      ),
    );
  }
}
