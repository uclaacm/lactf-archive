from app.utils import serialize_image
import sqlite3
import uuid
posts = [
    {
        'metadata': ["'Test Post'", "'This is the REAL first post, designed only to test the inactive post featrure. lactf{sixty_four_is_greater_than_eigthy_five_a434d1c0e0425c3f}'", "'Rory'", "'Feb 6th 2023'", "FALSE"],
        'images': ['images/apple.png'],
        'comments': [],
    },
    {
        'metadata': ["'First Post!'", "'This is the first post on the blog.'", "'Anonymous Writer'", "'Feb 7th 2023'", "TRUE"],
        'images': ["images/check.png"],
        'comments': [("'Skeptic'", "'I cant believe it'"), ("'Gamerboy80'", "'epic'")],
    },
    {
        'metadata': ["'Bird and starship collision reported on campus'", "'In an interview with a bystander, the called the crash \"ironic\" as the two new technologies collided spectacularly.'", "'Anonymous Writer'", "'Feb 8th 2023'", "TRUE"],
        'images': ["images/bird.png", "images/starship.png"],
        'comments': [("'Starship Industries'", "'we are suing'"), ("'Bird Rider'", "'it was wild'")],
    },
    {
        'metadata': ["'Fire alarm in De Neve broken'", "'De Neve residents infuriated as they were evicted from their dorms at 2am during midterms week'", "'De Neve Resident'", "'Feb 9th 2023'", "TRUE"],
        'images': ["images/deneve.png", "images/bplate.png"],
        'comments': [("'Olympic Resident'", "'Common De Neve L'"), ("'Hederick Resident'", "'At least it was only for ONE week'"), ("'De Neve Hater'", "'B-Plate is better anyway'")],
    },
    {
        'metadata': ["'Centennial Elevator Still Broken'", "'After 7 weeks of inactivity, the Centennial Elevator is still broken. \"You would think they could have fixed it over winter break, but apparently not\" said a Centennial Resident during an interview earlier today'", "'Anonymous Writer'", "'Feb 10th 2023'", "TRUE"],
        'images': ["images/centennial.png", "images/elevator.png"],
        'comments': [("'Centennial Resident'", "'wtf'"), ("'De Neve Resident'", "'Common Centennial L'")],
    }
]


con = sqlite3.connect('app/app.db')
cur = con.cursor()

for post in posts:
    post_id = str(uuid.uuid4())
    metadata = f"('{post_id}',{','.join(post['metadata'])})"
    cur.execute(f"INSERT INTO posts (id, title, content, author, date, active) VALUES {metadata}")

    for image_path in post['images']:
        image_id = str(uuid.uuid4())
        with open(image_path, 'rb') as f:
            b85image = serialize_image(f.read())
            cur.execute(f"INSERT INTO images (id, b85_image, parent) VALUES ('{image_id}','{b85image}','{post_id}')")

    for comment_metadata in post['comments']:
        comment_id = str(uuid.uuid4())
        comment_metadata = f"('{comment_id}',{','.join(comment_metadata)},'{post_id}')"
        cur.execute(f"INSERT INTO comments (id, author, comment, parent) VALUES {comment_metadata}")


con.commit()
