from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "jenkins CD test 수정사항 반영 테스트"}
