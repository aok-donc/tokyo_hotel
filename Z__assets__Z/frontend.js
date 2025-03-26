// frontend.js
document.addEventListener("DOMContentLoaded", function () {
    fetch("https://api.example.com/instances") // Remplace par l'URL de ton API
        .then(response => response.json())
        .then(data => {
            const container = document.getElementById("button-container");
            data.forEach(instance => {
                const button = document.createElement("button");
                button.textContent = instance.name;
                button.onclick = () => window.location.href = instance.link;
                container.appendChild(button);
            });
        })
        .catch(error => console.error("Erreur lors de la récupération des données:", error));
});
