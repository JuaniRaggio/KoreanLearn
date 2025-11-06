import requests
import json

def invoke(action, **params):
    return requests.post('http://localhost:8765', json={
        'action': action,
        'version': 6,
        'params': params
    }).json()

# Agregar una tarjeta
invoke('addNote', note={
    'deckName': 'Korean::Vocabulary',
    'modelName': 'Basic',
    'fields': {
        'Front': '안녕하세요',
        'Back': 'Hello (formal)'
    },
    'tags': ['korean', 'greeting']
})
