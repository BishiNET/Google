 

# Google IP Script



## How to use

For example, you want to set the nexthop ip of all the google ip to 172.16.0.1**(In the most common case, Cloudflare warp nexthop IP is 172.16.0.1.This setting is required to be set manually.)**

```
bash google.sh 172.16.0.1
```

The script will skip the 8.8.8.8/8.8.4.4, which will not make a influence on your Google DNS.

The script will return the combined result of google IPs, which is used for Wireguard allow IPs, etc.
