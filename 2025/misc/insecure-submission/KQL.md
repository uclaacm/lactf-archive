# KQL Writeup
By burturt

## Stage 0: What is going on?
First things first, let's see what's going on. Run the query in the challenge description to see what kind of data we are dealing with:
```
WebLogs
| limit 10
```

| 10.19.254.223  | 2025-02-04T04:47:12Z | GET | /?class=cs31&page=syllabus                               | HTTP/1.1 | 200 | Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36                                                                                     |
|----------------|----------------------|-----|----------------------------------------------------------|----------|-----|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 10.127.135.101 | 2025-02-04T04:47:12Z | GET | /?class=cs32&page=office_hours                           | HTTP/1.1 | 200 | Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36                                                                                      |
| 10.236.234.116 | 2025-02-04T04:47:12Z | GET | /?class=cs32&page=syllabus                               | HTTP/1.1 | 200 | Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) obsidian/1.6.5 Chrome/124.0.6367.243 Electron/30.1.2 Safari/537.36                                  |
| 10.235.229.155 | 2025-02-04T04:47:12Z | GET | /?class=cs35l                                            | HTTP/1.1 | 200 | Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0                                                              |
| 10.61.17.29    | 2025-02-04T04:47:12Z | GET | /?class=cs35l&page=guides                                | HTTP/1.1 | 200 | Mozilla/5.0 (X11; OpenBSD amd64; rv:28.0) Gecko/20100101 Firefox/28.0                                                                                                                      |
| 10.46.103.122  | 2025-02-04T04:47:12Z | GET | /                                                        | HTTP/1.1 | 200 | Mozilla/5.0 (X11; Linux x86_64; rv:133.0) Gecko/20100101 Firefox/133.0                                                                                                                     |
| 10.132.207.222 | 2025-02-04T04:47:12Z | GET | /?class=cs31&page=syllabus                               | HTTP/1.1 | 200 | Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; Tablet PC 2.0) |
| 10.179.33.38   | 2025-02-04T04:47:12Z | GET | /?class=cs32&page=projects                               | HTTP/1.1 | 200 | Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15                                                                      |
| 10.159.18.162  | 2025-02-04T04:47:12Z | GET | /?class=cs33&page=resources                              | HTTP/1.1 | 200 | Mozilla/5.0 (Windows NT 6.1; rv:35.0) Gecko/20100101 Firefox/35.0                                                                                                                          |
| 10.181.205.22  | 2025-02-04T04:47:12Z | GET | /?class=cs31&page=connecting_to_seasnet&userid=100076553 | HTTP/1.1 | 200 | Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36                                                                   |

We can see some source ip, timestamp, method type, url, response status, and user agent. Let's list all distinct Paths:
```
WebLogs
| distinct Endpoint
| extend Path = extract(@"^(.+?)\?", 1, Endpoint)
```
In the free KQL cluster, I had to distinct the Endpoint field before running the extract due to the query exceeding memory limits. We see just 3 paths: `/`, `/submit`, `/submission`. 
```
WebLogs
| distinct Endpoint
| extend Path = extract(@"^(.+?)\?", 1, Endpoint)
| distinct Path
```

## Stage 1: Find the compromised accounts
There are a couple ways to find the attacker:
- The attacker attempted a LFI attack against the server. Searching for `../` would have quickly identified the attacker's IP address
```
WebLogs
| where Endpoint contains '../'
```
- The attacker brute forced student IDs. If you search for sequential IDs or search for repeated errors (401, 403) you will find their attack.
```
WebLogs
| where Status in ("401", "403")
```
- The attacker used `Python-urllib/3.13` to spam the server.
```
WebLogs
| where UserAgent contains "urllib"
| order by Timestamp desc
```

Now that we know the attacker's IP address, we can track their actions:
```
WebLogs
| where IP == '10.228.143.117'
```

Scrolling through, we find that they attacked the server and stole submissions through the `/submissions` endpoint. We also notice that the attacker only downloaded from cs31 - and many submissions get a 400 error. Manually correlating submissions against the first submissions in the log will reveal that the first submission for cs31 was the 5th submission, and the first submission ID to get 200 is the 5th one. As such, we can filter by simply looking for all cs31 submissions, but only submitted before the attacker did their attack:

```
WebLogs
| where Method == 'POST' and Timestamp < todatetime("2025-02-04T04:50:00Z") and Endpoint contains 'cs31' and Status == '200'
| extend UserId = extract(@"userid=(\d+)", 1, Endpoint) | distinct UserId | summarize strcat_array(make_list(UserId), ",")
```

Note: some competitors tried to correlate submissions IDs to submit attempts. However, in order to do this, you have to make sure you only count successful submissions, and take into account that timestamps only have second granularity, so some submissions came in during the same second and you would have to stable-sort the data.

## Stage 2: Find students in multiple classes

Since we have the list of compromised ids, we need to figure out what users are in other classes. We can search by userid for other entries where that user id visited a page that is private for another class. Simply taking the list of ids from the previous query, we can just search for all log entries that contains a userid and a class that is not cs31. We can either try and find the list of all other classes, or we can just find all requests that contain a userid and not cs31.

```
let compromised_ids = WebLogs
| where Method == 'POST' 
    and Timestamp < todatetime("2025-02-04T04:50:00Z") 
    and Endpoint contains "cs31" 
    and Status == "200"
| extend UserId = extract(@"userid=(\d+)", 1, Endpoint) 
| distinct UserId;
WebLogs
| where Endpoint has_any (compromised_ids) 
    and (Endpoint contains "cs32" or Endpoint contains "cs33" or Endpoint contains "cs35l")
    | extend UserId = extract(@"userid=(\d+)", 1, Endpoint) 
    | distinct UserId
    | summarize strcat_array(make_list(UserId), ",")
```
