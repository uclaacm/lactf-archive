from flask import Flask, request, send_file, render_template, jsonify
from functools import wraps
import os, random

app = Flask(__name__)

# Mock database - in production use a real database

def is_valid(id_val):
    id_val = int(id_val)
    potential_ids = list(range(100000000, 100099999))
    random.seed(42)  # Set random seed for reproducibility
    random_remove = random.sample(potential_ids, len(potential_ids) // 4)
    return id_val not in random_remove and id_val > 100000000 and id_val < 100099999

submissions = {}
valid_users = {
    # TAs
    "100000040": {"role": "ta"},
    "100000064": {"role": "ta"},
}
valid_classes = ["cs31", "cs32", "cs33", "cs35l"]

def require_auth(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        userid = request.args.get('userid')
        if not userid or (not is_valid(userid) and userid not in valid_users):
            return jsonify({"error": "Invalid user ID"}), 401
        return f(*args, **kwargs)
    return decorated

def require_ta(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        userid = request.args.get('userid')
        if not userid or userid not in valid_users or valid_users[userid]["role"] != "ta":
            return jsonify({"error": "TA access required"}), 403
        return f(*args, **kwargs)
    return decorated

@app.route('/')
def index():
    class_name = request.args.get('class')
    if class_name:
        if class_name not in valid_classes:
            return jsonify({"error": "Invalid class"}), 400
        return jsonify({"class": class_name, "info": f"Information for {class_name}"})
    return """Welcome to the submission system.
    Please select a class:<br>
    <a href="?class=cs31">CS31</a><br>
    <a href="?class=cs32">CS32</a><br>
    <a href="?class=cs33">CS33</a><br>
    <a href="?class=cs35l">CS35L</a>"""

@app.route('/submit', methods=['POST'])
@require_auth
def submit():
    userid = request.args.get('userid')
    class_name = request.args.get('class')
    
    if not class_name or class_name not in valid_classes:
        return jsonify({"error": "Invalid class"}), 400

    # Handle file upload here
    if 'file' not in request.files:
        return jsonify({"error": "No file provided"}), 400
    
    file = request.files['file']
    if file.filename == '':
        return jsonify({"error": "No file selected"}), 400

    submission_id = len(submissions) + 1
    submissions[submission_id] = {
        "userid": userid,
        "class": class_name,
        "filename": file.filename
    }
    
    # Save file logic would go here
    return jsonify({"submission_id": submission_id}), 200

@app.route('/submissions')
@require_auth
def get_submissions():
    userid = request.args.get('userid')
    class_name = request.args.get('class')
    submission_id = request.args.get('submissionid')

    if not class_name or class_name not in valid_classes:
        return jsonify({"error": "Invalid class"}), 400

    if not userid or userid not in valid_users:
        return jsonify({"error": "Unauthorized"}), 403

    # If submission_id is provided, return specific submission
    if submission_id:
        submission_id = int(submission_id)
        if submission_id not in submissions:
            return jsonify({"error": "Invalid submission ID"}), 404
        # Return submission file logic would go here
        submission = submissions[submission_id]
        if submission["class"] != class_name:
            return jsonify({"error": "Submission is for a different class"}), 400
        return jsonify({"message": "Submission download"}), 200

    # List all submissions (TA only)
    if not submission_id:
        if valid_users[userid]["role"] != "ta":
            return jsonify({"error": "TA access required"}), 403
        class_submissions = [s for s in submissions.values() if s["class"] == class_name]
        return jsonify({"submissions": class_submissions}), 200

if __name__ == '__main__':
    app.run(debug=True)