# flask-api-starter

This project provides a boilerplate for building a Rest API using flask.

Other modules used are listed below; 
- sqlalchemy
- marshmallow
- sqlalchemy marshmallow
- flask sqlalchemy
- flask swagger

![alt text][screenshot]

[screenshot]: https://github.com/cdagli/flask-api-starter/blob/master/swagger.png
_*swagger documentation visualized with Swagger UI Console [Chrome extension](https://chrome.google.com/webstore/detail/swagger-ui-console/ljlmonadebogfjabhkppkoohjkjclfai)_

###To run locally:

```
git clone https://github.com/cdagli/flask-api-starter
cd flask-api-starter
virtualenv venv
source venv/bin/activate
cd src
pip install -r requirements.txt
python -m run 
```

Run tests:
```
nose2 -v
```