#!/bin/bash

BASE_URL=achilles.local:/media/achilles/Backup/Lars

rsync -au --progress ~/ $BASE_URL
