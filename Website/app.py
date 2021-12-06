from flask import Flask, render_template, redirect, url_for, request
import subprocess


app = Flask(__name__)
app.static_folder = 'static'

@app.route('/', methods=['GET', 'POST'])
def hello():
    error = None
    if request.method == 'POST':
        if request.form['username'] != 'root' or request.form['password'] != 'admin' :
            error = 'Invalid Credentials. Please try again'
        else :
            return render_template('login.html')
        return render_template('index.html', error = error)
    if request.method == 'GET':
        return render_template('index.html')


@app.route('/disable', methods=['GET'])
def phpscript():
    subprocess.run(['cd','/ ', '&', './disableWebsite.sh'], shell=True)
    return render_template('login.html')
