part of 'widgets.dart';

class AdSlider extends StatelessWidget {
  const AdSlider({
    required this.slides,
    super.key,
  });

  final List<Slide> slides;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ImageSlideshow(
        autoPlayInterval: 3000,
        isLoop: true,
        children: slides
            .map(
              (e) => AdSlide(
                imageUrl: e.imageUrl,
                url: e.actionUrl,
              ),
            )
            .toList(),
        // children: [
        //   AdSlide(imageUrl: "https://tarkeys.net/images/course/رياضيات.jpg"),
        //   AdSlide(imageUrl: "https://www.m3aarf.com/storage/images/20880636280.505412001573168747.jpg"),
        //   AdSlide(imageUrl: "https://i.ytimg.com/vi/cLjCz_sCAes/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC_S6wGyfhSKnTqeqsFrcIQbwrlmw"),
        // ],
      ),
    );
  }
}
