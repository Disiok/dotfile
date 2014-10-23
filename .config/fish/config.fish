set -xg PATH ~/Development/android-sdk-macosx/platform-tools $PATH
set -xg PATH ~/Development/android-sdk-macosx/tools $PATH
set -xg PATH /usr/local/bin $PATH

function show-fles
	defaults write com.apple.finder AppleShowAllFiles YES 
	killall Finder /System/Library/CoreServices/Finder.app
end

function hide-files
	defaults write com.apple.finder AppleShowAllFiles NO
	killall Finder /System/Library/CoreServices/Finder.app
end

function get-screen
	adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > screen.png
end

function remove-orig
	find ./ -name "*.orig" -exec rm -i "{}" \;
	echo All files removed
end

function jump-cs246-repo
	cd ~/Dropbox/Waterloo\ 2014-2015/Academics\ 2A/CS246/repo/1149
end

function write-test
	mvim test{$argv}.in
	mvim test{$argv}.out	
end	

function ssh-es-master
	ssh ec2-user@ec2-54-200-221-39.us-west-2.compute.amazonaws.com
end

function ssh-es-slave-1
	ssh ec2-user@ec2-54-200-255-167.us-west-2.compute.amazonaws.com
end

function ssh-waterloo
	ssh -Y sdsuo@linux.student.cs.uwaterloo.ca
end

set fish_function_path $fish_function_path "/usr/local/lib/python2.7/site-packages/powerline/bindings/fish"
powerline-setup
