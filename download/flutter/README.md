본 내용은 스나이퍼팩토리 플러터 앱개발 교육과정용입니다.  
fetchSecrets() 를 통하여 비밀을 불러올 수 있습니다.

## Features

```async Future<List<Secret>?> fetchSecrets```

## Getting started

## Usage
```dart
child: FutureBuilder(
    future: fetchSecrets(),
    builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
            return Text(snapshot.data.toString());
        }
        return CircularProgressIndicator();
    },
)
```

## Additional information

서버 연결 실패시 관계자에게 문의해주세요.