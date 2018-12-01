Backup :-

Automate route53 backup using S3, cloudwatch and lambda function.

1. Create cloud formation templet using route53backup.json

2. Create stack - required parameters
    - S3 bucket Name
    - RoleName

Restore :- 

ubuntu 

#apt-get install python python-pip

#sudo pip install cli53

#sh route53restore.sh Z2I6BYO40BTLNR_2018113008.txt Z2I6BYO40BTLNR
