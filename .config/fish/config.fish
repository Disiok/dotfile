set -xU PATH $PATH ~/Development/android-sdk-macosx/platform-tools
set -xU PATH $PATH ~/Development/android-sdk-macosx/tools
set -xU PATH $PATH /usr/local/bin

function showFiles
	defaults write com.apple.finder AppleShowAllFiles YES 
	killall Finder /System/Library/CoreServices/Finder.app
end

function hideFiles
	defaults write com.apple.finder AppleShowAllFiles NO
	killall Finder /System/Library/CoreServices/Finder.app
end

function getScreen
	adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png
end
