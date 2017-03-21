FROM python:3.6

EXPOSE 8000

COPY ./ /usr/src/
RUN pip install -r /usr/src/requirements.txt
RUN pip install /usr/src/django-polls/dist/django-polls-0.1.tar.gz

CMD python /usr/src/toplevel/manage.py runserver
