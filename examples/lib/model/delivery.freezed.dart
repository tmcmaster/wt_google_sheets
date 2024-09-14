// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Delivery _$DeliveryFromJson(Map<String, dynamic> json) {
  return _Delivery.fromJson(json);
}

/// @nodoc
mixin _$Delivery {
  @JsonKey(name: 'customer')
  String get customer => throw _privateConstructorUsedError;
  @JsonKey(name: 'route')
  String get route => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type')
  String get orderType => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'delivery_date',
      fromJson: Delivery._fromJson,
      toJson: Delivery._toJson)
  DateTime? get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'suburb')
  String get suburb => throw _privateConstructorUsedError;
  @JsonKey(name: 'postcode')
  String get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'billing_address')
  String get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'billing_suburb')
  String get billingSuburb => throw _privateConstructorUsedError;
  @JsonKey(name: 'billing_postcode')
  String get billingPostcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// Serializes this Delivery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Delivery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res, Delivery>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customer') String customer,
      @JsonKey(name: 'route') String route,
      @JsonKey(name: 'order_type') String orderType,
      @JsonKey(
          name: 'delivery_date',
          fromJson: Delivery._fromJson,
          toJson: Delivery._toJson)
      DateTime? deliveryDate,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'suburb') String suburb,
      @JsonKey(name: 'postcode') String postcode,
      @JsonKey(name: 'billing_address') String billingAddress,
      @JsonKey(name: 'billing_suburb') String billingSuburb,
      @JsonKey(name: 'billing_postcode') String billingPostcode,
      @JsonKey(name: 'order_id') String orderId,
      @JsonKey(name: 'customer_id') String customerId,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'email') String email});
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res, $Val extends Delivery>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Delivery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? route = null,
    Object? orderType = null,
    Object? deliveryDate = freezed,
    Object? address = null,
    Object? suburb = null,
    Object? postcode = null,
    Object? billingAddress = null,
    Object? billingSuburb = null,
    Object? billingPostcode = null,
    Object? orderId = null,
    Object? customerId = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      suburb: null == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      billingSuburb: null == billingSuburb
          ? _value.billingSuburb
          : billingSuburb // ignore: cast_nullable_to_non_nullable
              as String,
      billingPostcode: null == billingPostcode
          ? _value.billingPostcode
          : billingPostcode // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryImplCopyWith<$Res>
    implements $DeliveryCopyWith<$Res> {
  factory _$$DeliveryImplCopyWith(
          _$DeliveryImpl value, $Res Function(_$DeliveryImpl) then) =
      __$$DeliveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customer') String customer,
      @JsonKey(name: 'route') String route,
      @JsonKey(name: 'order_type') String orderType,
      @JsonKey(
          name: 'delivery_date',
          fromJson: Delivery._fromJson,
          toJson: Delivery._toJson)
      DateTime? deliveryDate,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'suburb') String suburb,
      @JsonKey(name: 'postcode') String postcode,
      @JsonKey(name: 'billing_address') String billingAddress,
      @JsonKey(name: 'billing_suburb') String billingSuburb,
      @JsonKey(name: 'billing_postcode') String billingPostcode,
      @JsonKey(name: 'order_id') String orderId,
      @JsonKey(name: 'customer_id') String customerId,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'email') String email});
}

/// @nodoc
class __$$DeliveryImplCopyWithImpl<$Res>
    extends _$DeliveryCopyWithImpl<$Res, _$DeliveryImpl>
    implements _$$DeliveryImplCopyWith<$Res> {
  __$$DeliveryImplCopyWithImpl(
      _$DeliveryImpl _value, $Res Function(_$DeliveryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Delivery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? route = null,
    Object? orderType = null,
    Object? deliveryDate = freezed,
    Object? address = null,
    Object? suburb = null,
    Object? postcode = null,
    Object? billingAddress = null,
    Object? billingSuburb = null,
    Object? billingPostcode = null,
    Object? orderId = null,
    Object? customerId = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$DeliveryImpl(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      suburb: null == suburb
          ? _value.suburb
          : suburb // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      billingSuburb: null == billingSuburb
          ? _value.billingSuburb
          : billingSuburb // ignore: cast_nullable_to_non_nullable
              as String,
      billingPostcode: null == billingPostcode
          ? _value.billingPostcode
          : billingPostcode // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryImpl extends _Delivery {
  const _$DeliveryImpl(
      {@JsonKey(name: 'customer') required this.customer,
      @JsonKey(name: 'route') required this.route,
      @JsonKey(name: 'order_type') required this.orderType,
      @JsonKey(
          name: 'delivery_date',
          fromJson: Delivery._fromJson,
          toJson: Delivery._toJson)
      this.deliveryDate,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'suburb') required this.suburb,
      @JsonKey(name: 'postcode') required this.postcode,
      @JsonKey(name: 'billing_address') required this.billingAddress,
      @JsonKey(name: 'billing_suburb') required this.billingSuburb,
      @JsonKey(name: 'billing_postcode') required this.billingPostcode,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'email') required this.email})
      : super._();

  factory _$DeliveryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryImplFromJson(json);

  @override
  @JsonKey(name: 'customer')
  final String customer;
  @override
  @JsonKey(name: 'route')
  final String route;
  @override
  @JsonKey(name: 'order_type')
  final String orderType;
  @override
  @JsonKey(
      name: 'delivery_date',
      fromJson: Delivery._fromJson,
      toJson: Delivery._toJson)
  final DateTime? deliveryDate;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'suburb')
  final String suburb;
  @override
  @JsonKey(name: 'postcode')
  final String postcode;
  @override
  @JsonKey(name: 'billing_address')
  final String billingAddress;
  @override
  @JsonKey(name: 'billing_suburb')
  final String billingSuburb;
  @override
  @JsonKey(name: 'billing_postcode')
  final String billingPostcode;
  @override
  @JsonKey(name: 'order_id')
  final String orderId;
  @override
  @JsonKey(name: 'customer_id')
  final String customerId;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'Delivery(customer: $customer, route: $route, orderType: $orderType, deliveryDate: $deliveryDate, address: $address, suburb: $suburb, postcode: $postcode, billingAddress: $billingAddress, billingSuburb: $billingSuburb, billingPostcode: $billingPostcode, orderId: $orderId, customerId: $customerId, phone: $phone, email: $email)';
  }

  /// Create a copy of Delivery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryImplCopyWith<_$DeliveryImpl> get copyWith =>
      __$$DeliveryImplCopyWithImpl<_$DeliveryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryImplToJson(
      this,
    );
  }
}

abstract class _Delivery extends Delivery {
  const factory _Delivery(
      {@JsonKey(name: 'customer') required final String customer,
      @JsonKey(name: 'route') required final String route,
      @JsonKey(name: 'order_type') required final String orderType,
      @JsonKey(
          name: 'delivery_date',
          fromJson: Delivery._fromJson,
          toJson: Delivery._toJson)
      final DateTime? deliveryDate,
      @JsonKey(name: 'address') required final String address,
      @JsonKey(name: 'suburb') required final String suburb,
      @JsonKey(name: 'postcode') required final String postcode,
      @JsonKey(name: 'billing_address') required final String billingAddress,
      @JsonKey(name: 'billing_suburb') required final String billingSuburb,
      @JsonKey(name: 'billing_postcode') required final String billingPostcode,
      @JsonKey(name: 'order_id') required final String orderId,
      @JsonKey(name: 'customer_id') required final String customerId,
      @JsonKey(name: 'phone') required final String phone,
      @JsonKey(name: 'email') required final String email}) = _$DeliveryImpl;
  const _Delivery._() : super._();

  factory _Delivery.fromJson(Map<String, dynamic> json) =
      _$DeliveryImpl.fromJson;

  @override
  @JsonKey(name: 'customer')
  String get customer;
  @override
  @JsonKey(name: 'route')
  String get route;
  @override
  @JsonKey(name: 'order_type')
  String get orderType;
  @override
  @JsonKey(
      name: 'delivery_date',
      fromJson: Delivery._fromJson,
      toJson: Delivery._toJson)
  DateTime? get deliveryDate;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'suburb')
  String get suburb;
  @override
  @JsonKey(name: 'postcode')
  String get postcode;
  @override
  @JsonKey(name: 'billing_address')
  String get billingAddress;
  @override
  @JsonKey(name: 'billing_suburb')
  String get billingSuburb;
  @override
  @JsonKey(name: 'billing_postcode')
  String get billingPostcode;
  @override
  @JsonKey(name: 'order_id')
  String get orderId;
  @override
  @JsonKey(name: 'customer_id')
  String get customerId;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of Delivery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryImplCopyWith<_$DeliveryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
