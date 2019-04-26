# Jupyter Notebook/Lab jkernel Docker-Image

The Docker-Image source for **martinsaurer/jlang:jkernel**

## Jump start

If you want to test the Jupyter Notebook/Lab J integration, without installing Anaconda or Miniconda or J,
just pull the prconfigured Docker-Image:

**docker pull martinsaurer/jlang:jkernel**

and run it:

**docker run -p 127.0.0.1:8000:8000 martinsaurer/jlang:jkernel**

then use your browser to connect to:

**http://127.0.0.1:8000/?token=<the token that is displayed when running the docker image\>**

## If you want to build your own Docker-Image

You may take this repository as a starting point:

* Clone this repository: **git clone https://github.com/martin-saurer/jkernel-docker.git**

* Get Miniconda from: **https://docs.conda.io/en/latest/miniconda.html**

* Install Miniconda to (e.g.) **/home/<user\>/miniconda3**

* Add Jupyter Lab to Miniconda: **conda install -c conda-forge jupyterlab**

* Get J from: **https://code.jsoftware.com/wiki/System/Installation**

* Install J to (e.g.) **/home/<user\>/J807**

* Ensure that the J user directory is under the J807 base installation folder (Edit: J807/bin/profilex.ijs)

* Clone the jkernel repository: **git clone https://github.com/martin-saurer/jkernel.git**

* Install the jkernel into your current Miniconda installation: **python setup.py install**

* Test the installation from command line: **jupyter lab**

* If everything goes well, copy **miniconda3** from your home directory to the Docker-Image directory

* Also copy **J807** from your home directory to the Docker-Image directory

* Your Docker-Image directory should contain two directories **J807**, and **miniconda3**, as well as the **Dockerfile**, and **run.sh**

* Optionally you may copy some example notebooks to the Docker-Image directory

* Go to the Docker-Image directory and perform the following command: **docker build --tag=jkernel .**

* If everything goes well, you have successfully built your own Docker-Image including J, and Jupyter Lab

* Enjoy

