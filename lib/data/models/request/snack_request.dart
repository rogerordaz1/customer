import 'package:freezed_annotation/freezed_annotation.dart';

part 'snack_request.freezed.dart';
part 'snack_request.g.dart';

@freezed
class SnackRequest with _$SnackRequest {
  factory SnackRequest({
    required List<ProductsRequest> products,
    required String paymentMethod,
    required int ticketId,
  }) = _SnackRequest;

  factory SnackRequest.fromJson(Map<String, dynamic> json) =>
      _$SnackRequestFromJson(json);
}

@freezed
class ProductsRequest with _$ProductsRequest {
  factory ProductsRequest({
    required int productId,
    required int quantity,
  }) = _ProductsRequest;

  factory ProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductsRequestFromJson(json);
}
