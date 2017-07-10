FROM python:3.6.1

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask==0.12.2 uWSGI==2.0.15 requests==2.18.1 redis==2.10.5
WORKDIR /app
COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191
USER uwsgi

#CMD ["python", "identidock.py"]
#CMD ["uwsgi", "--http", "0.0.0.0:9090", "--wsgi-file", "/app/identidock.py", \
#    "--callable", "app", "--stats", "0.0.0.0:9191"]
CMD ["/cmd.sh"]