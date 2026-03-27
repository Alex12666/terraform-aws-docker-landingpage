FROM nginx:alpine
# Limpa a pasta padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*
# Copia o seu site pronto para dentro do servidor
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
