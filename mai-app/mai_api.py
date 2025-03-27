from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class ChatRequest(BaseModel):
    message: str

@app.post("/chat")
async def chat_endpoint(request: ChatRequest):
    user_message = request.message.lower()

    # Réponse basique
    if "bonjour" in user_message:
        bot_response = "Salut ! Comment puis-je t'aider ?"
    elif "ça va" in user_message:
        bot_response = "Je vais bien, merci ! Et toi ?"
    else:
        bot_response = "Désolé, je ne comprends pas encore cette demande."

    return {"response": bot_response}
