#!/bin/bash
mongoexport --db cs_comments_service_development --collection contents --csv --fields title,body,author_username --query '{ $query: {"created_at": { $gte : new Date(1432231200000)}}, $orderby: { author_username : 1 }}' --out /home/ubuntu/participation/week1_participation.csv
