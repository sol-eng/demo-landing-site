FROM alpine
RUN apk add git && \
  git clone https://github.com/sol-eng/demo-landing-site /tmp/demo-landing-site && \
  rm -rf /tmp/demo-landing-site/.git

FROM nginx:1.24-alpine
COPY --from=0 /tmp/demo-landing-site/ /usr/share/nginx/html
