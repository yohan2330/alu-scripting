#!/usr/bin/python3
"""
This module provides a function to query the Reddit API and print
the titles of the first 10 hot posts for a specified subreddit.
"""
import requests

def top_ten(subreddit):
    """
    Queries the Reddit API and prints the titles of the first 10 hot posts
    for a given subreddit. Prints None if the subreddit is invalid.

    Args:
        subreddit (str): The name of the subreddit to query
    """
    # Set custom User-Agent to avoid Too Many Requests error
    headers = {'User-Agent': 'Mozilla/5.0 (compatible; MyRedditBot/0.1; +http://localhost)'}
    
    # Construct URL for subreddit hot posts
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    
    try:
        # Make GET request without following redirects
        response = requests.get(url, headers=headers, allow_redirects=False)
        
        # Check if response is successful and not a redirect
        if response.status_code == 200:
            data = response.json()
            posts = data.get('data', {}).get('children', [])
            for post in posts[:10]:
                title = post.get('data', {}).get('title', '')
                print(title)
        else:
            print("None")
    except requests.RequestException:
        print("None")
