import 'package:flutter/material.dart';

class CustomButtonPrimary extends StatelessWidget {
  const CustomButtonPrimary({
    Key? key,
    required this.label,
    required this.onTap,
    this.isDisabled = false,
    this.isLoading = false,
    this.sizeHeight,
    this.letterSpacing,
    this.color,
    this.prefix,
    this.style,
    this.borderRadius,
  }) : super(key: key);

  final String label;
  final Function onTap;
  final bool isDisabled;
  final bool isLoading;
  final double? letterSpacing;
  final double? sizeHeight;
  final Color? color;
  final Widget? prefix;
  final TextStyle? style;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isDisabled && !isLoading ? null : () => onTap(),
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(3),
        backgroundColor: MaterialStatePropertyAll(
          isDisabled ? Colors.black.withOpacity(0.8) : color ?? Colors.black,
        ),
        minimumSize: MaterialStatePropertyAll(
          Size(double.infinity, sizeHeight ?? 50),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(99)),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : prefix != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    prefix!,
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      label,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: letterSpacing ?? 1,
                      ).merge(style),
                    ),
                  ],
                )
              : Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: letterSpacing ?? 1,
                  ).merge(style),
                ),
    );
  }
}
