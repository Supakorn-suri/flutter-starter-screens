import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData leadingIcon;

  final VoidCallback onTap;

  const ListTileCard({
    super.key,
    required this.onTap,
    required this.title,
    this.subtitle,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(color: const Color(0xFFD9D9D9)),
        ),
        margin: const EdgeInsets.only(bottom: 8, top: 8),
        width: double.infinity,
        child: InkWell(
          highlightColor: Colors.transparent,
          radius: 16,
          onTap: onTap,
          child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
            leading: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.all(16),
              child: Icon(
                leadingIcon,
                color: Colors.black,
                size: 24,
              ),
            ),
            title: Text(title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFF333333),
                )),
            subtitle: subtitle != null
                ? Text(
                    subtitle ?? '',
                    style: const TextStyle(color: Color(0xFF8E8F91)),
                  )
                : null,
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xFF7A7A7A),
              size: 20,
            ),
          ),
        ));
  }
}
