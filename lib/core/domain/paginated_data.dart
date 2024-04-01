import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_data.freezed.dart';

@freezed
class PaginatedData<T> with _$PaginatedData<T> {
  const PaginatedData._();
  const factory PaginatedData({
    required T entity,
    int? maxPage,
    bool? isNextPageAvailable,
  }) = _PaginatedData<T>;
}
