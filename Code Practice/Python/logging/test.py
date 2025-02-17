from logger import logging

def addition(a,b):
    logging.debug('The addition operation is taking place')
    return a+b

logging.debug('The addition function is called')
addition(10,15)