#!/usr/bin/python
# -*- coding: utf-8 -*-

from api.utils.factory import create_app
from api.utils.config import DevelopmentConfig, ProductionConfig
import os

if __name__ == '__main__':
    host, user, password = [os.environ.get('DB_HOST'),
                            os.environ.get('DB_USER'),
                            os.environ.get('DB_PASSWORD')]
    print(f'dbconnect: {user}:{password}@{host}5432/db')

    if os.environ.get('WORK_ENV') == 'PROD':
        app = create_app(ProductionConfig)
        app.run(port=5000, host="0.0.0.0", use_reloader=False)
    else:
        app = create_app(DevelopmentConfig)
        app.run(port=5000, host="0.0.0.0", use_reloader=True)
