import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:okr_os/app/shared/auth/repositories/auth_repository.dart';

class MockClient extends Mock implements Dio {}

void main() {
  AuthRepository repository;
  MockClient client;

  setUp(() {
    repository = AuthRepository();
    client = MockClient();
  });

  group('AuthRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<AuthRepository>());
    });

    test('returns a Post if the http call completes successfully', () async {
      // when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
      //     .thenAnswer((_) async => Response(data: {'title': 'Test'}, statusCode: 200));
      // Map<String, dynamic> data = await repository.fetchPost(client);
      // expect(data['title'], 'Test');
    });
  });
}
