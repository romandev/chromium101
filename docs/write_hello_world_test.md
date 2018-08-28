## 테스트 작성하기
- **hello_world 디렉토리 생성**
  - ```$ cd third_party/WebKit/LayoutTests/external/wpt && mkdir hello_world```
  - WPT(Web Platform Tests): https://github.com/web-platform-tests/wpt
- **hello_world 테스트 작성**
  ```html
  <!doctype html>
  <title>Test for Hello World module</title>
  <script src="/resources/testharness.js"></script>
  <script src="/resources/testharnessreport.js"></script>
  <script>

  test(() => {
    assert_equals(HelloWorld.hello, 'World!');
  }, 'HelloWorld.hello should be "World!"');

  </script>
  ```
- **hello_world 테스트 실행하기**
  - ```$ ninja -C out/Debug blink_tests```
  - ```$ ./third_party/blink/tools/run_web_tests.py external/wpt/hello_world/hello-world-test.html --driver-logging --debug```


