This repo is meant to be everything necessary for setting up and running a local development environment and automated VM test builds. It does not contain any code project, but will include a couple vagrantfiles for setting up VMs with a basic infrastructure setup e.g. monitoring and log collection. Those can be used as starting points for setting up development environments for specific application stacks.

Please note that not everything will work on every OS. I will try to note in each directory where it should work, but no promises.

# Windows Builds
To build the windows image, first get your dotfile config in place and run the setup scripts to get your local environment setup.

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

At this point, you should be able to use the `windows-2016-nocm` box in Vagrantfiles, test kitchen, etc. Check the vagrant directory for examples.
