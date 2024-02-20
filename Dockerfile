FROM python:3.6-slim

WORKDIR /app

COPY . ./

EXPOSE 5000

# install the dependencies and packages in the requirements file
RUN pip install --no-cache-dir -r requirements.txt
RUN python -m pip install --upgrade pip



CMD [ "python","api/index.py" ]