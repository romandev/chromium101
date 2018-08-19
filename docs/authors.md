## AUTHORS 파일 업데이트
[동영상 보기](https://youtu.be/2OGS9Bl87Uk)
- Create a new branch
  - ```$ git new-branch first_commit```
- Configuration GIT user
  - ```$ git config user.email "your@email.com"```
  - ```$ git config user.name "Your Name"```
- Update AUTHORS file (in alphabetical order)
  - AUTHORS 파일에 여러분의 이름과 이메일을 추가합니다(이때 CLA때 사용한 이메일과 같아야 합니다)
- Make a commit
  - ```$ git commit -a```
- Upload patch
  - 패치를 올리려면 여러분의 환경과 Chromium Gerrit을 연결해야합니다.
    - 여기에 접속해서 로그인 https://chromium.googlesource.com/new-password
    - 사이트에 있는 내용을 복사해서 여러분의 쉘에 그대로 붙여넣고 실행합니다.
  - 패치 올리기
    - ```$ git cl upload ```
    - 만약 로그인을 요구하는 경우 로그인 아이디와 패스워드를 넣으시면 됩니다.
