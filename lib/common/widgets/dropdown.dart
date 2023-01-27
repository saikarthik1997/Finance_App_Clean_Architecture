import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> items;
  final String hintText;
  final String? value;
  final Function onChanged;
  const CustomDropdown(
      {super.key,
      required this.items,
      required this.hintText,
      this.value,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      itemHeight: 55,
      iconSize: 0.0,
      hint: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(color: Colors.grey)),
          child: Row(
            children: [
              Expanded(child: Text(hintText)),
              const Icon(Icons.keyboard_arrow_down)
            ],
          )),
      onChanged: (val) => onChanged(val),
      selectedItemBuilder: (context) {
        return items
            .map((e) => Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    Expanded(child: Text(e)),
                    const Icon(Icons.keyboard_arrow_down)
                  ],
                )))
            .toList();
      },
      value: value,
      items: items
          .map(
            (e) => DropdownMenuItem<String>(value: e, child: Text(e)),
          )
          .toList(),
    );
  }
}
