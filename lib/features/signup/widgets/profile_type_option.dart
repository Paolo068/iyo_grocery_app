import 'package:flutter/material.dart';

import '../../../core/pallete.dart';

class ProfileTypeOption extends StatelessWidget {
  final String text, value;
  final Function(String value) onTap;

  const ProfileTypeOption({
    super.key,
    required this.text,
    required this.onTap,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = value == text;
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => onTap(text),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(color: isSelected ? Pallete.primary : Pallete.btnBorder),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: textTheme.headlineSmall),
              DecoratedBox(
                  position: DecorationPosition.foreground,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: isSelected ? Pallete.primary : Pallete.btnBorder,
                      ),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundColor: isSelected ? Pallete.primary : Colors.transparent,
                    child: isSelected
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : const SizedBox.shrink(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
