# AI-gamer

Dependencies:
    * LuaJIT and Torch 7.0
    * nngraph
    * Xitari (fork of the Arcade Learning Environment (Bellemare et al., 2013))
    * AleWrap (a lua interface to Xitari)

An installation script for these dependencies in install_dependencies.sh

Two run scripts are provided: run_cpu and run_gpu. As the names imply,
the former trains the bot network using regular CPUs, while the latter uses
GPUs (CUDA), which typically results in a significant speed-up.



----- Installation instructions -----

The installation requires Linux with apt-get.

Note: In order to run the GPU version of the bot, you should additionally have the
NVIDIA® CUDA® (version 5.5 or later) toolkit installed prior to the Torch
installation below.
This can be downloaded from https://developer.nvidia.com/cuda-toolkit
and installation instructions can be found in
http://docs.nvidia.com/cuda/cuda-getting-started-guide-for-linux


To train DQN on Atari games, the following components must be installed:
    * LuaJIT and Torch 7.0
    * nngraph
    * Xitari
    * AleWrap

To install all of the above in a subdirectory called 'torch', it should be enough to run

    ./install_dependencies.sh

from the base directory of the package.


Note: The above install script will install the following packages via apt-get:
build-essential, gcc, g++, cmake, curl, libreadline-dev, git-core, libjpeg-dev,
libpng-dev, ncurses-dev, imagemagick, unzip



----- Training the bot on Atari games -----

Prior to running DQN on a game, you should copy its ROM in the 'roms' subdirectory.
It should then be sufficient to run the script

    ./run_cpu <game name>

Or, if GPU support is enabled,

    ./run_gpu <game name>


Note: On a system with more than one GPU, the bot training can be launched on a
specified GPU by setting the environment variable GPU_ID, e.g. by

    GPU_ID=2 ./run_gpu <game name>

If GPU_ID is not specified, the first available GPU (ID 0) will be used by default.


----- Options ------

Options to the bot are set within run_cpu (respectively, run_gpu). You may,
for example, want to change the frequency at which information is output 
to stdout by setting 'prog_freq' to a different value.
