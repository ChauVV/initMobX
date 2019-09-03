ENV ?= uat
MODE ?= Debug
PROJECT_NAME = initMobX

setup-env:
	cp ./src/env/$(ENV)/.env .env

start:
	make setup-env
	react-native start --reset-cache

run-ios:
	ENVFILE=.env react-native run-ios --simulator="iPhone X" --scheme="${PROJECT_NAME}.$(ENV)"

run-android:
	react-native run-android --variant="$(ENV)$(MODE)"

