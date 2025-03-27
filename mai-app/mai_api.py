from fastapi import FastAPI
from pydantic import BaseModel
import random

app = FastAPI()

# Modèle de données pour recevoir un message
class Message(BaseModel):
    message: str

# Exemple de réponses de M'AI
responses = [
    "Salut ! Comment puis-je t'aider ?",
    "Bonjour, que puis-je faire pour toi ?",
    "Salut, comment ça va ?",
    "Bienvenue, comment puis-je être utile ?"
]

@app.post("/chat")
async def chat(message: Message):
    # Répondre avec une réponse aléatoire
    response = random.choice(responses)
    return {"response": response}