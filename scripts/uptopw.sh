#!/bin/bash

curl "http://i.givemeyour.pw/upload" -H "token: Some Lovingly Long Auth Token String To Prevent Stuff" --data-binary "@$1"
