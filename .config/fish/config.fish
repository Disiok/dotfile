set -xg PATH $PATH ~/Development/android-sdk-macosx/platform-tools
set -xg PATH $PATH ~/Development/android-sdk-macosx/tools

function showFiles
	defaults write com.apple.finder AppleShowAllFiles YES 
	killall Finder /System/Library/CoreServices/Finder.app
end

function hideFiles
	defaults write com.apple.finder AppleShowAllFiles NO
	killall Finder /System/Library/CoreServices/Finder.app
end
