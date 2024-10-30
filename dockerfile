



# start by pulling the python image
FROM python:latest

# copy the requirements file into the image
WORKDIR /app
COPY . .



# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image


# configure the container to run in an executed manner
ENTRYPOINT [ "python","app.py" ]

 



