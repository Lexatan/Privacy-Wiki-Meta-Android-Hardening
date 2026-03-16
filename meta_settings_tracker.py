import requests
import time
from bs4 import BeautifulSoup

# URLs of the help pages for monitoring
urls = {
    "Instagram": "https://help.instagram.com/",
    "Facebook": "https://www.facebook.com/help/"
}

# Function to fetch the content of the help pages
def fetch_content(url):
    response = requests.get(url)
    return response.text

# Monitor function
def monitor_changes():
    previous_contents = {platform: fetch_content(url) for platform, url in urls.items()}
    while True:
        time.sleep(3600)  # Check every hour
        for platform, url in urls.items():
            current_content = fetch_content(url)
            if current_content != previous_contents[platform]:
                print(f"Change detected on {platform}'s help page!")
                previous_contents[platform] = current_content

if __name__ == "__main__":
    monitor_changes()