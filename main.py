from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "젠킨스 CD 테스트"}
