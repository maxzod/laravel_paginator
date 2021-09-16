import 'package:equatable/equatable.dart';

class PaginatedResponse<T> extends Equatable {
  final List<T> data;
  final int currentPage;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final int lastPageUrl;
  final String? nextPageUrl;
  final String path;
  final int perPage;
  final String? prevpageUrl;
  final int? to;
  final int total;

  /// *
  bool get canLoadMore => nextPageUrl != null;

  PaginatedResponse({
    required this.data,
    required this.currentPage,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevpageUrl,
    this.to,
    required this.total,
  });

  PaginatedResponse<T> copyWith({
    List<T>? data,
    int? currentPage,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    int? lastPageUrl,
    String? nextPageUrl,
    String? path,
    int? perPage,
    String? prevpageUrl,
    int? to,
    int? total,
  }) {
    return PaginatedResponse<T>(
      data: data ?? this.data,
      currentPage: currentPage ?? this.currentPage,
      firstPageUrl: firstPageUrl ?? this.firstPageUrl,
      from: from ?? this.from,
      lastPage: lastPage ?? this.lastPage,
      lastPageUrl: lastPageUrl ?? this.lastPageUrl,
      nextPageUrl: nextPageUrl ?? this.nextPageUrl,
      path: path ?? this.path,
      perPage: perPage ?? this.perPage,
      prevpageUrl: prevpageUrl ?? this.prevpageUrl,
      to: to ?? this.to,
      total: total ?? this.total,
    );
  }

  factory PaginatedResponse.build(
    List<T> data,
    Map<String, dynamic> map,
  ) {
    return PaginatedResponse<T>(
      data: data,
      currentPage: map['current_page'],
      firstPageUrl: map['first_page_url'],
      from: map['from'],
      lastPage: map['last_page'],
      lastPageUrl: map['last_page_url'],
      nextPageUrl: map['next_page_url'],
      path: map['path'],
      perPage: map['per_page'],
      prevpageUrl: map['prev_page_url'],
      to: map['to'],
      total: map['total'],
    );
  }

  @override
  List<Object?> get props {
    return [
      data,
      currentPage,
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      nextPageUrl,
      path,
      perPage,
      prevpageUrl,
      to,
      total,
    ];
  }
}
