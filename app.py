from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def get_reversed_ip():
    # Get the IP address of the client making the request
    ip_address = request.remote_addr
    
    # Reverse the IP address
    reversed_ip = '.'.join(ip_address.split('.')[::-1])
    
    # Return the reversed IP address as the response
    return f"Reversed IP: {reversed_ip}"

if __name__ == '__main__':
    app.run(debug=True)
