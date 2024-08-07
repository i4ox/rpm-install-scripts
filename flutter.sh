#!/bin/bash

# Установка fvm
brew tap leoafarias/fvm
brew install fvm

# Установка Flutter
fvm install 3.24.0
fvm global 3.24.0

# Вызываем `flutter doctor`, чтобы установить Dart SDK для Flutter Engine
fvm flutter doctor
