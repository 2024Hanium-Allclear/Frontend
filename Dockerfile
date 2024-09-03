# Nginx를 베이스 이미지로 사용
FROM nginx:alpine

# Nginx의 기본 HTML 디렉토리로 파일 복사
COPY member/ /usr/share/nginx/html/member/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/

# Nginx 포트 노출
EXPOSE 80

# Nginx 시작
CMD ["nginx", "-g", "daemon off;"]
