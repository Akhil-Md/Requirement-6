FROM python

WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .

ENV DB_URL=Dummy_url
ENV ACCESS_KEY=Dummy_key
ENV SECRET_KEY=Dummy_key
#this runs when image is built
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000 

ENTRYPOINT [ "python" ,"app.py" ] 