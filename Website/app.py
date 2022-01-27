from flask import Flask, render_template, redirect, url_for, request
import subprocess
import urllib


#request_response = urllib.request.urlopen("http://www2.student223.230.com:8000/cpre230App/")
#status_code = request_response.status_code
#print(status_code)


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


@app.route('/disable', methods=['GET', 'POST'])
def stopservice():
    subprocess.run(['/disableWebsite.sh'])
    return render_template('login.html')

@app.route('/enable', methods=['GET', 'POST'])
def startservice():
    subprocess.run(['/enableWebsite.sh'])
    return render_template('login.html')
