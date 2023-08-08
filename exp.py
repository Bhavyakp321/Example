import requests

def get_data_from_url(url):

        response = requests.get(url)
        print("Success! Response Content")

if __name__ == "__main__":
    url = "https://www.google.com"
    get_data_from_url(url)
