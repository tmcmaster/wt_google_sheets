// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryImpl _$$DeliveryImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryImpl(
      customer: json['customer'] as String,
      route: json['route'] as String,
      orderType: json['order_type'] as String,
      deliveryDate: Delivery._fromJson(json['delivery_date'] as String?),
      address: json['address'] as String,
      suburb: json['suburb'] as String,
      postcode: json['postcode'] as String,
      billingAddress: json['billing_address'] as String,
      billingSuburb: json['billing_suburb'] as String,
      billingPostcode: json['billing_postcode'] as String,
      orderId: json['order_id'] as String,
      customerId: json['customer_id'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$DeliveryImplToJson(_$DeliveryImpl instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      'route': instance.route,
      'order_type': instance.orderType,
      'delivery_date': Delivery._toJson(instance.deliveryDate),
      'address': instance.address,
      'suburb': instance.suburb,
      'postcode': instance.postcode,
      'billing_address': instance.billingAddress,
      'billing_suburb': instance.billingSuburb,
      'billing_postcode': instance.billingPostcode,
      'order_id': instance.orderId,
      'customer_id': instance.customerId,
      'phone': instance.phone,
      'email': instance.email,
    };
