#!/bin/bash
# canvaskit or html
mode=html
rm -rf docs/*
cd pgen
flutter build web --web-renderer $mode --release
mv build/web/* ../docs/
