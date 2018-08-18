## 빌드하기
[동영상 보기](https://youtu.be/Sa9zDdk0m9k)
- Configuration
  - ```$ gn args out/Debug```
  - 다음과 같은 빌드 옵션들을 사용합니다.
    ```
    enable_nacl = false
    is_component_build = true
    is_debug = true
    symbol_level = 1
    use_jumbo_build = true
    ```
- Build
  - ```$ ninja -C out/Debug chrome```
