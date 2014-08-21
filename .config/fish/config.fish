set -xg PATH ~/Development/android-sdk-macosx/platform-tools $PATH
set -xg PATH ~/Development/android-sdk-macosx/tools $PATH
set -xg PATH /usr/local/bin $PATH

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

function removeOrig
	find ./ -name "*.orig" -exec rm -i "{}" \;
	echo All files removed
end

function ssh-es-master
	ssh ec2-user@ec2-54-200-221-39.us-west-2.compute.amazonaws.com
end

function ssh-es-slave-1
	ssh ec2-user@ec2-54-200-255-167.us-west-2.compute.amazonaws.com
end
