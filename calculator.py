# coding: utf-8

# In[2]:

from flask import Flask

app = Flask(__name__)

"""
Calculator library containing basic math operations.
"""


def add(first_term, second_term):
    return first_term + second_term


def subtract(first_term, second_term):
    return first_term - second_term


def multiply(first_term, second_term):
    return first_term * second_term


def wrap_html(message):
    html = """
        <html>
        <body>
            <div style='font-size:120px;'>
            <center>
               <br>
                {0}<br>
            </center>
            </div>
        </body>
        </html>""".format(message)
    return html


@app.route('/calculate')
def hello_world():
    message = 'Hello Novartis Calculator! 2+3 = '
    calcuate = str(add(2, 3))
    html = wrap_html(message+calcuate)
    return html


if __name__ == '__main__':
    app.run(host='35.188.94.16', port=5000)
