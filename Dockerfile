# Nginx를 베이스 이미지로 사용
FROM nginx:alpine

# Nginx의 기본 HTML 디렉토리로 파일 복사
COPY member/ /usr/share/nginx/html/member/
COPY images/ /usr/share/nginx/html/images/
COPY common/ /usr/share/nginx/html/common/
COPY lectures/ /usr/share/nginx/html/lectures/
COPY registration/ /usr/share/nginx/html/registration/
COPY wishlist/ /usr/share/nginx/html/wishlist/
COPY vendor/ /usr/share/nginx/html/vendor/

COPY css/ /usr/share/nginx/html/css/
# COPY js/ /usr/share/nginx/html/js/


# Nginx 포트 노출
EXPOSE 80

# Nginx 시작
CMD ["nginx", "-g", "daemon off;"]
