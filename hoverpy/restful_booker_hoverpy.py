from hoverpy import capture, simulate
import requests


@capture("requests.db")
def capture_auth(username="admin", password="password123"):
    auth_data ={
    "username": username,
    "password": password
    }
    response = requests.post(url="https://restful-booker.herokuapp.com/auth", data=auth_data)
    return response
    
@simulate("requests.db")
def simulated_auth(username="admin", password="password123"):
    auth_data ={
    "username": username,
    "password": password
    }
    response = requests.post(url="https://restful-booker.herokuapp.com/auth", data=auth_data)
    return response

if __name__ == "__main__":

    real_response = capture_auth()
    #mock_response = simulated_auth()




    

    
    


