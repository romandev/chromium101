## 소스받기
[동영상 보기](https://youtu.be/QTBpBYm3ogY)
- Python 2.7이 설치가 안되어있다면 설치합니다.
  - ```$ sudo apt-get install python```
- depot_tools를 다운로드 합니다. depot_tools는 Chromium 관련 프로젝트의
소스를 받고 빌드를 하는데 사용되는 Tool들의 모음입니다.
  - ```$ git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git```
- 다운로드 받은 depot_tools를 PATH환경 변수에 등록합니다.
(.bashrc와 같은 곳에 등록해두면 편합니다)
  - ```$ export PATH="$PATH:${HOME}/depot_tools"```
- 원하는 위치에서(예: /home/zino/chromium), 소스코드를 다운로드합니다.
  - ```$ fetch —no hooks chromium```
