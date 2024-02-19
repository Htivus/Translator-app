FROM python:3.8-alpine

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

EXPOSE 5000
# switch working directory

RUN pip install numpy==1.21.5

RUN pip install python-dev-tools

RUN pip install pandas
WORKDIR /app
# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . /app

# configure the container to run in an executed manner
ENTRYPOINT [ "python" ]

CMD [ "python","app.py" ]