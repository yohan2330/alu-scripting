#!/usr/bin/python3
"""
This module contains a function to query the Reddit API
and return the number of subscribers for a given subreddit.
"""
import requests

def number_of_subscribers(subreddit):
    """
    Queries the Reddit API and returns the number of subscribers for a subreddit.
    
    Args:
        subreddit (str): The name of the subreddit to query
        
    Returns:
        int: Number of subscribers, or 0 if subreddit is invalid
    """
    # Set custom User-Agent to avoid Too Many Requests error
    headers = {'User-Agent': 'Mozilla/5.0 (compatible; MyRedditBot/0.1; +http://localhost)'}
    
    # Construct URL for subreddit about info
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    
    try:
        # Make GET request without following redirects
        response = requests.get(url, headers=headers, allow_redirects=False)
        
        # Check if response is successful and not a redirect
        if response.status_code == 200:
            data = response.json()
            # Return subscriber count from data
            return data.get('data', {}).get('subscribers', 0)
        else:
            return 0
    except requests.RequestException:
        return 0
