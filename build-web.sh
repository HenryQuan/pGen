#!/bin/bash
cd pgen
flutter build web --web-renderer canvaskit --release
mv build/web/* ../docs/
