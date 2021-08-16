from datetime import datetime

import pytz
from fastapi import FastAPI

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
