import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildAdvantages(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.star,
              color: Colors.white,
              size: 50.0,
            ),
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16.0,
        spacing: 12.0,
        children: [
          _buildAdvantages("+ 45.000 alunos", "Didática garantida"),
          _buildAdvantages("+ 45.000 alunos", "Didática garantida"),
          _buildAdvantages("+ 45.000 alunos", "Didática garantida"),
        ],
      ),
    );
  }
}
