import 'package:flutter/material.dart';

class GridPreviewCard extends StatelessWidget {
  const GridPreviewCard({
    super.key,
    this.title,
    this.content,
    this.onCardClick,
    this.onCardLongPress,
  });

  final String? title;
  final String? content;
  final Function()? onCardLongPress;
  final Function()? onCardClick;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () => onCardClick?.call(),
        onLongPress: () => onCardLongPress?.call(),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsetsGeometry.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title ?? "", style: Theme.of(context).textTheme.bodyLarge),
              Text(
                content ?? "",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListPreviewCard extends StatelessWidget {
  const ListPreviewCard({
    super.key,
    this.title,
    this.content,
    this.onCardClick,
    this.onCardLongPress,
  });

  final String? title;
  final String? content;
  final Function()? onCardLongPress;
  final Function()? onCardClick;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () => onCardClick?.call(),
        onLongPress: () => onCardLongPress?.call(),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsetsGeometry.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "",
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 2,
              ),
              Text(
                content ?? "",
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
