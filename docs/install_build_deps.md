## 빌드를 위한 추가 패키지 설치
[동영상 보기](https://youtu.be/xkTDk649P6o)
- 빌드에 필요한 패키지들을 설치합니다(리눅스의 경우)
  - ```$ ./build/install-build.deps.sh```
- Chromium 빌드에 필요한 hooks들을 추가로 설치합니다
(chromium/src 디렉토리에서 수행)
  - ```$ gclient runhooks```
