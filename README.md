# hello-world
Hello world repository

/* From here to the botton I've made the changes */
Making the first commit.

On GitHub, saved changes are called commits. Each commit has an associated commit message, which is a description explaining why a particular change was made. Commit messages capture the history of your changes, so other contributors can understand what you’ve done and why.


-------------------
Testing push and commit from new PC
-------------------

---------------------
Add test for docker
--------------------
// clone the repo

//inside the repo, build the image based in debian
$ docker build -t dockertest .
[...]
Successfully tagged dockertest:latest

// when finished, there will be a docker image available with the name dockertest
$ docker images
dockertest          latest              725e91964e08        4 minutes ago       244MB
[...]

// run the docker image and use the enviroment variable of the github repo so it can clone it
$ docker run -e github='https://github.com/juanitoetc/hello-world.git' -it --name mytestimage dockertest

// at start the image will run the startscript and run itr run
Cloning into 'hello-world'...
remote: Enumerating objects: 17, done.
remote: Counting objects: 100% (7/7), done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 17 (delta 0), reused 6 (delta 0), pack-reused 10
Receiving objects: 100% (17/17), done.
Resolving deltas: 100% (2/2), done.
Hello from makefile

// after running the command the image will exit (it will exited), remove it from the list of process
docker rm mytestimage
