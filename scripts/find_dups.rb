#!/bin/bash
find . -type f -exec fsize '{}' \; | sort | uniq -d
# $stdout << `ls -al | grep -e ' \\(#{File.open('.dups.txt').read.strip.gsub("\n","\\|")}\\) '`

 