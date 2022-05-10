from pathlib import Path
from random import Random

from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def hello_whale():
    value = Random().randint(0, 1000)
    demo_var = f"This is dynamic: {value}"

    secrets_dir = Path("/vault/secrets/")

    secrets = {}
    if secrets_dir.exists():
        for file in secrets_dir.iterdir():
            secrets[file.name] = file.open().read()

    if not secrets_dir.exists():
        secrets = None

    return render_template('index.html', demo_var=demo_var, secrets_dir=secrets_dir, secrets=secrets)


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
