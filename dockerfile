



# start by pulling the python image
FROM python:latest

# copy the requirements file into the image
WORKDIR /app
COPY . .



# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt





ENTRYPOINT [ "python","app.py" ]

 



