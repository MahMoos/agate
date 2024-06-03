part of 'widgets.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    this.photoUrl,
    this.name,
    this.size = 24,
  });

  final String? photoUrl;
  final String? name;
  final double size;

  @override
  Widget build(BuildContext context) {
    return AvatarImage(
      key: key,
      backgroundImage:
          photoUrl != null ? CachedNetworkImageProvider(photoUrl!) : null,
      backgroundColor: (name ?? 'a').hashToColor(),
      size: size,
      child: photoUrl == null && name != null && name!.isNotEmpty
          ? FittedBox(
              child: Padding(
                padding: EdgeInsets.all(size / 3),
                child: Text(
                  name!.trim().split(' ').length > 1
                      ? name![0] + name!.split(' ').elementAt(1)[0]
                      : name![0],
                  style: TextStyle(
                    fontSize: size,
                    color: context.scaffoldBackgroundColor,
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
