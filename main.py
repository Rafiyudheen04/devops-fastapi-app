from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from my DevOps FastAPI app!"}

@app.get("/health")
def health_check():
    return {"status": "ok"}
