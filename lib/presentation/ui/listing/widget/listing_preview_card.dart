import 'dart:io';

import 'package:flutter/material.dart';

class GridPreviewCard extends StatelessWidget {
  const GridPreviewCard({
    super.key,
    this.title,
    this.content,
    this.images,
    this.onCardClick,
    this.onCardLongPress,
  });

  final String? title;
  final String? content;
  final List<String>? images;
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
              if (title != null && title!.isNotEmpty) ...[
                Text(title!, style: Theme.of(context).textTheme.bodyLarge),
              ],
              if (content != null && content!.isNotEmpty) ...[
                Text(content!, style: Theme.of(context).textTheme.bodyMedium),
              ],
              if (images != null && images!.isNotEmpty) ...[
                Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 4.0),
                  child: Row(
                    spacing: 4.0,
                    children: [
                      for (final (index, image) in images!.take(2).indexed)
                        SizedBox(
                          width: 64,
                          height: 64,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.file(
                                  File(image),
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.fill,
                                  errorBuilder: (_, _, _) {
                                    return Container(
                                      alignment: Alignment.center,
                                      color: Colors.grey,
                                      child: Icon(Icons.error_outline),
                                    );
                                  },
                                ),
                              ),
                              if (index == 1 && images!.length > 2) ...[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    color: Colors.grey.withAlpha(200),
                                    child: Text("+${images!.length - 2}"),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
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
    this.images,
    this.onCardClick,
    this.onCardLongPress,
  });

  final String? title;
  final String? content;
  final List<String>? images;
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
          padding: const EdgeInsetsGeometry.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null && title!.isNotEmpty) ...[
                Padding(
                  padding: const EdgeInsetsGeometry.symmetric(horizontal: 8.0),
                  child: Text(
                    title!,
                    style: Theme.of(context).textTheme.bodyLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
              if (content != null && content!.isNotEmpty) ...[
                Padding(
                  padding: const EdgeInsetsGeometry.symmetric(horizontal: 8.0),
                  child: Text(
                    content!,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
              if (images != null && images!.isNotEmpty) ...[
                LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                      padding: const EdgeInsetsGeometry.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      scrollDirection: Axis.horizontal,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: constraints.maxWidth,
                        ),
                        child: Row(
                          spacing: 8.0,
                          children: [
                            for (final image in images!)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.file(
                                  File(image),
                                  height: 64,
                                  width: 64,
                                  fit: BoxFit.fill,
                                  errorBuilder: (_, _, _) {
                                    return Container(
                                      width: 64,
                                      height: 64,
                                      alignment: Alignment.center,
                                      color: Colors.grey,
                                      child: Icon(Icons.error_outline),
                                    );
                                  },
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
