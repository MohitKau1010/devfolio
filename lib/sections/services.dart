import 'package:devfolio/components/service_card.dart';
import 'package:devfolio/models/service_data.dart';
import 'package:jaspr/jaspr.dart';

class ServicesSection extends StatelessComponent {
  final List<ServiceData> services;
  const ServicesSection({
    super.key,
    required this.services,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'services-section', [

      span(classes: 'title', [
        text('What I can do?'),
      ]),
      span(classes: 'subtitle', [
        text(" * Develop high-performance Flutter applications for Android & iOS."),
      ]),span(classes: 'subtitle', [
        text(" * Integrate secure payment gateways like Razorpay, Stripe, and PayPal."),
      ]),span(classes: 'subtitle', [
        text(" * Implement live tracking & geofencing for real-time location-based services."),
      ]),span(classes: 'subtitle', [
        text(" * Work with Firebase, Google Maps API, and backend services to build robust applications."),
      ]),span(classes: 'subtitle', [
        text(" * Collaborate with teams to create scalable and maintainable mobile solutions."),
      ]),
      div(classes: 'section-body', id: 'services', [
        for (final service in services)
          ServiceCard(
            icon: service.icon,
            label: service.title,
          ),
      ])
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.services-section')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          padding: EdgeInsets.symmetric(vertical: 5.vh),
        ),
    css('.section-body')
        .flexbox(
          direction: FlexDirection.row,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
          wrap: FlexWrap.wrap,
        )
        .box(
          margin: EdgeInsets.only(top: 50.px),
          width: 100.percent,
        ),
  ];
}
