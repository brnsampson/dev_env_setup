This repo is meant to be everything necessary for setting up and running a windows and linux development environment. It does not contain any code project, but will include a couple vagrantfiles for setting up VMs with a basic infrastructure setup e.g. monitoring and log collection. Those can be used as starting points for setting up development environments for specific application stacks.

Please note that this was written on and for linux. I would be surprised if anything works as-is on mac or windows.

# Prereqs

Before any other steps here, you need all of the tools of the right versions installed. I have supplied individual scripts for each tool in the setup directory, as well as an all_install.sh script that just executes each of the other scripts. If for some reason you don't want to run all of them, you will have to run each that you _do_ want to run.

cd setup
chmod +x all_install.sh
sudo ./all_install.sh

# Windows Builds
To build the windows image, first run the install script to get your local environment setup:

After that, you will need to clone the boxcutter windows repo:

git clone https://github.com/boxcutter/windows.git

If you are using bash, the install script will have already added these variables to your bashrc file, but if you use zsh or anything else you will want to set them or the packer builds might fail:

export TMPDIR=<Whereever you have space. /tmp is not large enough for windows boxes for most systems>
export HEADLESS=true

Next, build the image by navigating into the boxcutter repo and running the makefile. I suggest using the eval-windows-2016-ssh image build right now.

cd windows
make virtualbox/eval-win2016-standard-ssh
<This will take quite a while. Around an hour probably>
vagrant box add windows-2016-nocm ./box/virtualbox/eval-win2016-standard-ssh-nocm-*.box

At this point, you should be able to use the `windows-2016-nocm` box in Vagrantfiles, test kitchen, etc.
