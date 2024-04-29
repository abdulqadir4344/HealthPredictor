
# # install dependencies
# RUN pip install --upgrade pip
# COPY ./requirements.txt /app/
# RUN pip install -r requirements.txt

# COPY . /app

# ENTRYPOINT [ "waitress-serve app:app"]


RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask

WORKDIR /app

COPY . .

ENTRYPOINT [ "waitress-serve app:app"]