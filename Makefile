# vim: set noet:

package:
	7z a app/src/embed/assets/game.love ../loveputer/src/*

build: package
	./gradlew assembleEmbedRecordDebug

debug-install: build
	adb install ./app/build/outputs/apk/embedRecord/debug/app-embed-record-debug.apk

clean:
	./gradlew clean
