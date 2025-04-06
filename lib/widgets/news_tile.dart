import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            'https://media.istockphoto.com/id/2176876950/photo/vintage-car-in-lower-east-side-streets-new-york-city.jpg?s=1024x1024&w=is&k=20&c=FHdkwVWgv_mtF3XkKybPer_eiRPvs7JMyJ28ZbMIQmo=',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'New York City stock photo',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
          'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has',
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          ),
      ],
    );
  }
}