# 최신 Nginx 이미지 사용
FROM nginx:latest  

# 현재 폴더 내 모든 파일을 Nginx 기본 HTML 폴더로 복사
COPY . /usr/share/nginx/html

# 컨테이너 시작 시 Nginx 실행
CMD ["nginx", "-g", "daemon off;"]
