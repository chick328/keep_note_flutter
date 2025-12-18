// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
sealed class Result<T> {
  const Result();

  /// Creates an instance of Result containing a value
  factory Result.success(T value) => Success(value);

  /// Create an instance of Result containing an error
  factory Result.error(Exception error) => Error(error);

  /// Convenience method to cast to Success
  Success<T> get asSuccess => this as Success<T>;

  /// Convenience method to cast to Error
  Error<T> get asError => this as Error<T>;
}

/// Subclass of Result for values
final class Success<T> extends Result<T> {
  const Success(this.value);

  /// Returned value in result
  final T value;

  @override
  String toString() => 'Result<$T>.Success($value)';
}

/// Subclass of Result for errors
final class Error<T> extends Result<T> {
  const Error(this.error);

  /// Returned error in result
  final Exception error;

  @override
  String toString() => 'Result<$T>.error($error)';
}