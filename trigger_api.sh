#!/bin/bash

function url_encode {
  local string="${1}"
  local strlen=${#string}
  local encoded=""
  local pos c o

  for (( pos=0 ; pos<strlen ; pos++ )); do
    c=${string:$pos:1}
    case "$c" in
      [-_.~a-zA-Z0-9] ) o="${c}" ;;
      * )               printf -v o '%%%02x' "'$c"
    esac
    encoded+="${o}"
  done
  echo "${encoded}"
}



# Define the three variables
title_of_video="Title of Video"
video_discuss="What will we discuss here"
link_to_video="A link to the video"

# Encode the variables using the url_encode function
title_of_video_encoded=$(url_encode "$title_of_video")
video_discuss_encoded=$(url_encode "$video_discuss")
link_to_video_encoded=$(url_encode "$link_to_video")

curl -v "https://api.feedhive.com/triggers/<YOUR API HERE>?title-of-video=$title_of_video_encoded&video-discuss=$video_discuss_encoded&link-to-video=$link_to_video_encoded"
