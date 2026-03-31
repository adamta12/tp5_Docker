# Arrêter et supprimer l'ancien conteneur
try { docker stop flask_app } catch {}
try { docker rm flask_app } catch {}

# Tirer la dernière image
docker pull adamta12/flask_devops_cd:latest

# Lancer le conteneur
docker run -d --name flask_app -p 5000:5000 adamta12/flask_devops_cd:latest
