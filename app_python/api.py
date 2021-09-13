from datetime import datetime

import pytz
from fastapi import FastAPI
from prometheus_fastapi_instrumentator import Instrumentator

app = FastAPI()


@app.get("/")
async def time():
    """Shows Moscow local datetime"""
    utc_moment = datetime.utcnow()
    utc_moment = utc_moment.replace(tzinfo=pytz.utc)
    formatting = "%Y-%m-%d %H:%M:%S"
    timezone = "Europe/Moscow"
    timezone_dt = utc_moment.astimezone(pytz.timezone(timezone))
    dt_str = timezone_dt.strftime(formatting)
    return {"Moscow datetime": dt_str}

instrumentator = Instrumentator()
instrumentator.instrument(app)
instrumentator.expose(app, endpoint="/metrics",
        include_in_schema=False, should_gzip=True)