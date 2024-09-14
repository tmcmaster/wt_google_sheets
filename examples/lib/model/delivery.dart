import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:wt_models/wt_models.dart';

part 'delivery.freezed.dart';
part 'delivery.g.dart';

@freezed
class Delivery extends BaseModel<Delivery> with _$Delivery {
  static final convert = DslConvert<Delivery>(
    titles: [
      'customer',
      'route',
      'order_type',
      'delivery_date',
      'address',
      'suburb',
      'postcode',
      'billing_address',
      'billing_suburb',
      'billing_postcode',
      'order_id',
      'customer_id',
      'phone',
      'email',
    ],
    jsonToModel: Delivery.fromJson,
    none: Delivery.empty(),
  );

  const factory Delivery({
    @JsonKey(name: 'customer') required String customer,
    @JsonKey(name: 'route') required String route,
    @JsonKey(name: 'order_type') required String orderType,
    @JsonKey(name: 'delivery_date', fromJson: Delivery._fromJson, toJson: Delivery._toJson)
    DateTime? deliveryDate,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'suburb') required String suburb,
    @JsonKey(name: 'postcode') required String postcode,
    @JsonKey(name: 'billing_address') required String billingAddress,
    @JsonKey(name: 'billing_suburb') required String billingSuburb,
    @JsonKey(name: 'billing_postcode') required String billingPostcode,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'customer_id') required String customerId,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'email') required String email,
  }) = _Delivery;

  const Delivery._();

  factory Delivery.empty() => const Delivery(
        customer: '',
        route: '',
        orderType: '',
        deliveryDate: null,
        address: '',
        suburb: '',
        postcode: '',
        billingAddress: '',
        billingSuburb: '',
        billingPostcode: '',
        orderId: '',
        customerId: '',
        phone: '',
        email: '',
      );

  factory Delivery.fromJson(Map<String, dynamic> json) => _$DeliveryFromJson(json);

  @override
  String getId() => customer;

  @override
  String getTitle() => customer;

  @override
  List<String> getTitles() => convert.titles();

  static DateTime? _fromJson(String? date) {
    if (date == null || date.isEmpty) return null;
    final days = int.tryParse(date ?? '');
    if (days != null) {
      return DateTime(1900, 1, 1).add(Duration(days: days - 1));
    } else {
      return DateTime.tryParse(date);
    }
  }

  static String? _toJson(DateTime? date) {
    if (date == null) return null;
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }
}
