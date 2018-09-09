## Hello World 모듈 구현하기
- **hello_world 디렉토리 생성**
  - ```$ cd third_party/blink/renderer/modules && mkdir hello_world```
- **hello_world.idl 작성**
  ```webidl
  // Copyright 2018 The Chromium Authors. All rights reserved.
  // Use of this source code is governed by a BSD-style license that can be
  // found in the LICENSE file.

  [
    Exposed=Window
  ] interface HelloWorld {
    static readonly attribute DOMString hello;
  };
  ```
- **hello_world.h 작성**
  ```c++
  // Copyright 2018 The Chromium Authors. All rights reserved.
  // Use of this source code is governed by a BSD-style license that can be
  // found in the LICENSE file.

  #ifndef THIRD_PARTY_BLINK_RENDERER_MODULES_FILE_HELLO_WORLD_H_
  #define THIRD_PARTY_BLINK_RENDERER_MODULES_FILE_HELLO_WORLD_H_

  #include "third_party/blink/renderer/modules/modules_export.h"
  #include "third_party/blink/renderer/platform/bindings/script_wrappable.h"
  #include "third_party/blink/renderer/platform/heap/handle.h"
  #include "third_party/blink/renderer/platform/wtf/text/wtf_string.h"

  namespace blink {

  class MODULES_EXPORT HelloWorld final : public ScriptWrappable {
    DEFINE_WRAPPERTYPEINFO();

   public:
    static String hello();

    void Trace(blink::Visitor* visitor) override;
  };

  }  // namespace blink

  #endif  // THIRD_PARTY_BLINK_RENDERER_MODULES_FILE_HELLO_WORLD_H_
  ```
- **hello_world.cc 작성**
  ```c++
  // Copyright 2018 The Chromium Authors. All rights reserved.
  // Use of this source code is governed by a BSD-style license that can be
  // found in the LICENSE file.

  #include "third_party/blink/renderer/modules/hello_world/hello_world.h"

  namespace blink {

  // static
  String HelloWorld::hello() {
    return String("World!");
  }

  void HelloWorld::Trace(blink::Visitor* visitor) {
    ScriptWrappable::Trace(visitor);
  }

  }  // namespace blink
  ```
- **BUILD.gn 작성**
  ```python
  # Copyright 2018 The Chromium Authors. All rights reserved.
  # Use of this source code is governed by a BSD-style license that can be
  # found in the LICENSE file.

  import("//third_party/blink/renderer/modules/modules.gni")

  blink_modules_sources("hello_world") {
    sources = [
      "hello_world.cc",
      "hello_world.h",
    ]
  }
  ```
- **module 추가**
  ```
  # //third_party/blink/renderer/modules/BUILD.gn에서 deps를 수정
  "//third_party/blink/renderer/modules/hello_world",
  ```
- **idl 추가**
  ```
  # //third_party/blink/renderer/modules/modules_idl_files.gni에서 modules_idl_files를 수정
  "hello_world/hello_world.idl",
  ```

- **빌드하기**
  - ```$ gn args out/Debug```
  - ```$ ninja -C out/Debug chrome```
- **실행해서 테스트**
  - ```$ ./out/Debug/chrome```
