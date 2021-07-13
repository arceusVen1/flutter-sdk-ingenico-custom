// Autogenerated from Pigeon (v0.3.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

class SessionRequest {
  String? clientSessionId;
  String? customerId;
  String? clientApiUrl;
  String? assetBaseUrl;
  bool? environmentIsProduction;
  String? applicationIdentifier;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['clientSessionId'] = clientSessionId;
    pigeonMap['customerId'] = customerId;
    pigeonMap['clientApiUrl'] = clientApiUrl;
    pigeonMap['assetBaseUrl'] = assetBaseUrl;
    pigeonMap['environmentIsProduction'] = environmentIsProduction;
    pigeonMap['applicationIdentifier'] = applicationIdentifier;
    return pigeonMap;
  }

  static SessionRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return SessionRequest()
      ..clientSessionId = pigeonMap['clientSessionId'] as String?
      ..customerId = pigeonMap['customerId'] as String?
      ..clientApiUrl = pigeonMap['clientApiUrl'] as String?
      ..assetBaseUrl = pigeonMap['assetBaseUrl'] as String?
      ..environmentIsProduction = pigeonMap['environmentIsProduction'] as bool?
      ..applicationIdentifier = pigeonMap['applicationIdentifier'] as String?;
  }
}

class SessionResponse {
  String? sessionId;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['sessionId'] = sessionId;
    return pigeonMap;
  }

  static SessionResponse decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return SessionResponse()
      ..sessionId = pigeonMap['sessionId'] as String?;
  }
}

class PaymentContextRequest {
  String? sessionId;
  double? amountValue;
  String? currencyCode;
  String? countryCode;
  bool? isRecurring;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['sessionId'] = sessionId;
    pigeonMap['amountValue'] = amountValue;
    pigeonMap['currencyCode'] = currencyCode;
    pigeonMap['countryCode'] = countryCode;
    pigeonMap['isRecurring'] = isRecurring;
    return pigeonMap;
  }

  static PaymentContextRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PaymentContextRequest()
      ..sessionId = pigeonMap['sessionId'] as String?
      ..amountValue = pigeonMap['amountValue'] as double?
      ..currencyCode = pigeonMap['currencyCode'] as String?
      ..countryCode = pigeonMap['countryCode'] as String?
      ..isRecurring = pigeonMap['isRecurring'] as bool?;
  }
}

class GetPaymentProductRequest {
  String? sessionId;
  String? paymentProductId;
  double? amountValue;
  String? currencyCode;
  String? countryCode;
  bool? isRecurring;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['sessionId'] = sessionId;
    pigeonMap['paymentProductId'] = paymentProductId;
    pigeonMap['amountValue'] = amountValue;
    pigeonMap['currencyCode'] = currencyCode;
    pigeonMap['countryCode'] = countryCode;
    pigeonMap['isRecurring'] = isRecurring;
    return pigeonMap;
  }

  static GetPaymentProductRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return GetPaymentProductRequest()
      ..sessionId = pigeonMap['sessionId'] as String?
      ..paymentProductId = pigeonMap['paymentProductId'] as String?
      ..amountValue = pigeonMap['amountValue'] as double?
      ..currencyCode = pigeonMap['currencyCode'] as String?
      ..countryCode = pigeonMap['countryCode'] as String?
      ..isRecurring = pigeonMap['isRecurring'] as bool?;
  }
}

class PaymentContextResponse {
  List<Object?>? basicPaymentProduct;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['basicPaymentProduct'] = basicPaymentProduct;
    return pigeonMap;
  }

  static PaymentContextResponse decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PaymentContextResponse()
      ..basicPaymentProduct = pigeonMap['basicPaymentProduct'] as List<Object?>?;
  }
}

class DisplayHintsPaymentItem {
  int? displayOrder;
  String? label;
  String? logoUrl;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['displayOrder'] = displayOrder;
    pigeonMap['label'] = label;
    pigeonMap['logoUrl'] = logoUrl;
    return pigeonMap;
  }

  static DisplayHintsPaymentItem decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return DisplayHintsPaymentItem()
      ..displayOrder = pigeonMap['displayOrder'] as int?
      ..label = pigeonMap['label'] as String?
      ..logoUrl = pigeonMap['logoUrl'] as String?;
  }
}

class PaymentProduct {
  String? id;
  String? paymentMethod;
  String? paymentProductGroup;
  double? minAmount;
  double? maxAmount;
  bool? allowsRecurring;
  bool? allowsTokenization;
  bool? usesRedirectionTo3rdParty;
  DisplayHintsPaymentItem? displayHints;
  List<Object?>? fields;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['id'] = id;
    pigeonMap['paymentMethod'] = paymentMethod;
    pigeonMap['paymentProductGroup'] = paymentProductGroup;
    pigeonMap['minAmount'] = minAmount;
    pigeonMap['maxAmount'] = maxAmount;
    pigeonMap['allowsRecurring'] = allowsRecurring;
    pigeonMap['allowsTokenization'] = allowsTokenization;
    pigeonMap['usesRedirectionTo3rdParty'] = usesRedirectionTo3rdParty;
    pigeonMap['displayHints'] = displayHints == null ? null : displayHints!.encode();
    pigeonMap['fields'] = fields;
    return pigeonMap;
  }

  static PaymentProduct decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PaymentProduct()
      ..id = pigeonMap['id'] as String?
      ..paymentMethod = pigeonMap['paymentMethod'] as String?
      ..paymentProductGroup = pigeonMap['paymentProductGroup'] as String?
      ..minAmount = pigeonMap['minAmount'] as double?
      ..maxAmount = pigeonMap['maxAmount'] as double?
      ..allowsRecurring = pigeonMap['allowsRecurring'] as bool?
      ..allowsTokenization = pigeonMap['allowsTokenization'] as bool?
      ..usesRedirectionTo3rdParty = pigeonMap['usesRedirectionTo3rdParty'] as bool?
      ..displayHints = pigeonMap['displayHints'] != null
          ? DisplayHintsPaymentItem.decode(pigeonMap['displayHints']!)
          : null
      ..fields = pigeonMap['fields'] as List<Object?>?;
  }
}

class PaymentRequest {
  Map<Object?, Object?>? values;
  String? paymentProductId;
  bool? tokenize;
  String? sessionId;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['values'] = values;
    pigeonMap['paymentProductId'] = paymentProductId;
    pigeonMap['tokenize'] = tokenize;
    pigeonMap['sessionId'] = sessionId;
    return pigeonMap;
  }

  static PaymentRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PaymentRequest()
      ..values = pigeonMap['values'] as Map<Object?, Object?>?
      ..paymentProductId = pigeonMap['paymentProductId'] as String?
      ..tokenize = pigeonMap['tokenize'] as bool?
      ..sessionId = pigeonMap['sessionId'] as String?;
  }
}

class PreparedPaymentRequest {
  String? encryptedFields;
  String? encodedClientMetaInfo;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['encryptedFields'] = encryptedFields;
    pigeonMap['encodedClientMetaInfo'] = encodedClientMetaInfo;
    return pigeonMap;
  }

  static PreparedPaymentRequest decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return PreparedPaymentRequest()
      ..encryptedFields = pigeonMap['encryptedFields'] as String?
      ..encodedClientMetaInfo = pigeonMap['encodedClientMetaInfo'] as String?;
  }
}

class _ApiCodec extends StandardMessageCodec {
  const _ApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is GetPaymentProductRequest) {
      buffer.putUint8(127);
      writeValue(buffer, value.encode());
    }
    else if (value is PaymentContextRequest) {
      buffer.putUint8(126);
      writeValue(buffer, value.encode());
    }
    else if (value is PaymentContextResponse) {
      buffer.putUint8(125);
      writeValue(buffer, value.encode());
    }
    else if (value is PaymentProduct) {
      buffer.putUint8(124);
      writeValue(buffer, value.encode());
    }
    else if (value is PaymentRequest) {
      buffer.putUint8(123);
      writeValue(buffer, value.encode());
    }
    else if (value is PreparedPaymentRequest) {
      buffer.putUint8(122);
      writeValue(buffer, value.encode());
    }
    else if (value is SessionRequest) {
      buffer.putUint8(121);
      writeValue(buffer, value.encode());
    }
    else if (value is SessionResponse) {
      buffer.putUint8(120);
      writeValue(buffer, value.encode());
    }
    else {
      super.writeValue(buffer, value);
    }
  }
  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 127:       
        return GetPaymentProductRequest.decode(readValue(buffer)!);
      
      case 126:       
        return PaymentContextRequest.decode(readValue(buffer)!);
      
      case 125:       
        return PaymentContextResponse.decode(readValue(buffer)!);
      
      case 124:       
        return PaymentProduct.decode(readValue(buffer)!);
      
      case 123:       
        return PaymentRequest.decode(readValue(buffer)!);
      
      case 122:       
        return PreparedPaymentRequest.decode(readValue(buffer)!);
      
      case 121:       
        return SessionRequest.decode(readValue(buffer)!);
      
      case 120:       
        return SessionResponse.decode(readValue(buffer)!);
      
      default:      
        return super.readValueOfType(type, buffer);
      
    }
  }
}

class Api {
  /// Constructor for [Api].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  Api({BinaryMessenger? binaryMessenger}) : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _ApiCodec();

  Future<SessionResponse> initClientSession(SessionRequest arg) async {
    final Object encoded = arg.encode();
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.initClientSession', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return SessionResponse.decode(replyMap['result']!);
    }
  }

  Future<PaymentContextResponse> getBasicPaymentItems(PaymentContextRequest arg) async {
    final Object encoded = arg.encode();
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.getBasicPaymentItems', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return PaymentContextResponse.decode(replyMap['result']!);
    }
  }

  Future<PaymentProduct> getPaymentProduct(GetPaymentProductRequest arg) async {
    final Object encoded = arg.encode();
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.getPaymentProduct', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return PaymentProduct.decode(replyMap['result']!);
    }
  }

  Future<PreparedPaymentRequest> preparePaymentRequest(PaymentRequest arg) async {
    final Object encoded = arg.encode();
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.Api.preparePaymentRequest', codec, binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(encoded) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
        details: null,
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error = (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return PreparedPaymentRequest.decode(replyMap['result']!);
    }
  }
}
