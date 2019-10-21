### Build the Docker image
`docker build -t my-vuecli-app .`

### Scaffold the Vue cli app
`docker run -it -v ${PWD}:/home/node my-vuecli-app vue create .`

### Run the project!
`docker run -it -v ${PWD}:/home/node -p 8080:8080 my-vuecli-app`
