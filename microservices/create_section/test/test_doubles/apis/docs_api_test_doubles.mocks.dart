// Mocks generated by Mockito 5.0.0-nullsafety.7 from annotations
// in create_section/test/test_doubles/apis/docs_api_test_doubles.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:googleapis/docs/v1.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeDocumentsResource extends _i1.Fake implements _i2.DocumentsResource {
}

class _FakeBatchUpdateDocumentResponse extends _i1.Fake
    implements _i2.BatchUpdateDocumentResponse {}

class _FakeDocument extends _i1.Fake implements _i2.Document {}

/// A class which mocks [DocsApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockDocsApi extends _i1.Mock implements _i2.DocsApi {
  MockDocsApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.DocumentsResource get documents =>
      (super.noSuchMethod(Invocation.getter(#documents),
          returnValue: _FakeDocumentsResource()) as _i2.DocumentsResource);
}

/// A class which mocks [DocumentsResource].
///
/// See the documentation for Mockito's code generation for more information.
class MockDocumentsResource extends _i1.Mock implements _i2.DocumentsResource {
  MockDocumentsResource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i2.BatchUpdateDocumentResponse> batchUpdate(
          _i2.BatchUpdateDocumentRequest? request, String? documentId,
          {String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #batchUpdate, [request, documentId], {#$fields: $fields}),
              returnValue: Future.value(_FakeBatchUpdateDocumentResponse()))
          as _i3.Future<_i2.BatchUpdateDocumentResponse>);
  @override
  _i3.Future<_i2.Document> create(_i2.Document? request, {String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#create, [request], {#$fields: $fields}),
              returnValue: Future.value(_FakeDocument()))
          as _i3.Future<_i2.Document>);
  @override
  _i3.Future<_i2.Document> get(String? documentId,
          {String? suggestionsViewMode, String? $fields}) =>
      (super.noSuchMethod(
              Invocation.method(#get, [
                documentId
              ], {
                #suggestionsViewMode: suggestionsViewMode,
                #$fields: $fields
              }),
              returnValue: Future.value(_FakeDocument()))
          as _i3.Future<_i2.Document>);
}
