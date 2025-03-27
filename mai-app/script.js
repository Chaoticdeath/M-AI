const API_URL = "https://9d97-172-166-156-161.ngrok-free.app/chat"; // URL de ton API

async function sendMessage() {
    let userInput = document.getElementById("userInput").value;
    if (!userInput) return;

    // Afficher le message utilisateur
    let messagesDiv = document.getElementById("messages");
    messagesDiv.innerHTML += `<p><strong>Toi:</strong> ${userInput}</p>`;

    // Envoyer à l'API
    let response = await fetch(API_URL, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ message: userInput })
    });

    let data = await response.json();

    // Afficher la réponse de M'AI
    messagesDiv.innerHTML += `<p><strong>M'AI:</strong> ${data.response}</p>`;
    document.getElementById("userInput").value = "";
}
