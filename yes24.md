# [Team Project] Yes24 홈페이지 가상 리뉴얼
## 💙프로젝트 소개
### Team Member
- 이상아
- 김지혜
- 백승우
- 선수민
- 안재혁
- 장진수
### 프로젝트 목표
YES24 홈페이지의 회원가입, 로그인, 로그아웃, 게시판 CRUD 기능 구현
### 사용 프로그램
- 서버환경 : tomcat 9.0
- JSP : 2.3 / servlet3.1 / JDK 1.8.0
- 언어 : Java, JavaScript
- DB : Oracle 11g (로컬)
- O/S : Windows
- Tool : Eclipse
### 정보 구조 설계
![정보구조설계](https://github.com/sangah97/sangah97.github.io/blob/main/yes24_diagram.png "정보구조설계이미지")
### DB 설계
![ERD](https://github.com/sangah97/sangah97.github.io/blob/main/yes24_erd.png "Entity Relationship Diagram")
<br><br>
## 💙기능소개
### 로그인
<p align=center><img src="https://private-user-images.githubusercontent.com/25915110/313909597-7d6842c0-3195-480a-b2fa-559640655c44.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTA4MjAyNzIsIm5iZiI6MTcxMDgxOTk3MiwicGF0aCI6Ii8yNTkxNTExMC8zMTM5MDk1OTctN2Q2ODQyYzAtMzE5NS00ODBhLWIyZmEtNTU5NjQwNjU1YzQ0LmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMTklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzE5VDAzNDYxMlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWUyM2E1OWI3MmNiNzU2OGE5ZWI5M2FlYjQ1NTUyZTgzOGJiOTVlNzQxODMxMjdiOTNiMTA1MjM3OWUyOGFmYzUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.I4hxUlnLp0wkMzOFMriHNHqmIt7MQ6NY6EMVZyTU54Y"></p>

### 회원가입
<p align=center><img src="https://private-user-images.githubusercontent.com/25915110/313913098-62fb92fe-a22d-4e1f-ab4b-f79b2673e3b1.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTA4MjA2NTYsIm5iZiI6MTcxMDgyMDM1NiwicGF0aCI6Ii8yNTkxNTExMC8zMTM5MTMwOTgtNjJmYjkyZmUtYTIyZC00ZTFmLWFiNGItZjc5YjI2NzNlM2IxLmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMTklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzE5VDAzNTIzNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTBmYTgxNWI2NDI4ZmU1YzA5MjkzNjE3ODcwMDZmMWFlM2U5MzUzZmJjZDQ0NjMxMDBiYTM1YWQwN2RkY2RhMGQmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.cTVaZCCLFsk2uHMd7_bq19aRG1-tnurUmigG6NsPENg"></p>

### 1:1문의
<p align=cneter><img src="https://private-user-images.githubusercontent.com/25915110/313925571-e8b9db86-1bd0-46d9-bd08-cf6f9fb1c962.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTA4MjQ1MzUsIm5iZiI6MTcxMDgyNDIzNSwicGF0aCI6Ii8yNTkxNTExMC8zMTM5MjU1NzEtZThiOWRiODYtMWJkMC00NmQ5LWJkMDgtY2Y2ZjlmYjFjOTYyLmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAzMTklMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMzE5VDA0NTcxNVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTQ4M2RjOWM3MzY0ZmFjZjZmMTVlNmNjMWFlYzcwMzM3OWQ3Y2IyNWM1YjdhYzE5YzgxNmEzYTdkYzk1ZjYzZGYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.wRuL3C_XF3KjXw9GUlgfvSV3DTtU3b5RbIeviTp4RM8"></p>

<br><br>
## 💙기능소개 .mp4
https://github.com/sangah97/sangah97/assets/25915110/0139e22a-1114-404e-adbc-4880aecac997

