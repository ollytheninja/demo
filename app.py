# Special thanks to https://codefresh.io/docker-tutorial/hello-whale-getting-started-docker-flask/ for the code

from flask import Flask, render_template
from random import Random


app = Flask(__name__)


@app.route("/")
def hello_whale():
    value = Random().randint(0,1000)
    demo_var = f"This is dynamic: {value}"
    return render_template('index.html', demo_var = demo_var)

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
