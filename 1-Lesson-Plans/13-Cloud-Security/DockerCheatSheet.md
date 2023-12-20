## Docker Commands and Examples 

### Docker Command Cheat Sheet

1. **docker pull**
   - **Purpose:** Fetches an image from a Docker registry.
   - **Command:** `docker pull nginx`
   - **Response Example:**
     ```
     Using default tag: latest
     latest: Pulling from library/nginx
     Digest: sha256:xyz123abc...
     Status: Downloaded newer image for nginx:latest
     ```
   - **When to use:** To download a new image or update an existing one from a registry like Docker Hub.

2. **docker run**
   - **Purpose:** Creates a new container from an image and starts it.
   - **Command:** `docker run nginx`
   - **Response Example:**
     ```
     1a2b3c4d5e6f7g8
     ```
   - **When to use:** To start a container from an image. If the image isn't available locally, Docker will first pull it.

3. **docker start**
   - **Purpose:** Starts an existing, stopped container.
   - **Command:** `docker start my_container`
   - **Response Example:**
     ```
     my_container
     ```
   - **When to use:** To restart a previously created and stopped container.

4. **docker stop**
   - **Purpose:** Stops a running container.
   - **Command:** `docker stop my_container`
   - **Response Example:**
     ```
     my_container
     ```
   - **When to use:** To stop a container that is currently running.

5. **docker attach**
   - **Purpose:** Attaches to a running container.
   - **Command:** `docker attach my_container`
   - **Response Example:**
     ```
     root@1a2b3c4d5e:/#
     ```
   - **When to use:** To interact with a running container, typically to view its ongoing output.

6. **docker rename**
   - **Purpose:** Renames an existing container.
   - **Command:** `docker rename old_container_name new_container_name`
   - **Response Example:** No output, but the container name is changed.
   - **When to use:** To change the name of a container for organizational purposes.

7. **docker rm (remove)**
   - **Purpose:** Deletes a stopped container.
   - **Command:** `docker rm my_container`
   - **Response Example:**
     ```
     my_container
     ```
   - **When to use:** To clean up and remove a container that is no longer needed.

### Key Differences and Use Cases

- **Pull vs Run:** `pull` is for downloading images. `run` is for creating and starting containers from those images.
- **Run vs Start/Stop:** `run` is used to create and start a new container. `start` and `stop` are used to control the execution of existing containers.
- **Attach:** Used to interact with a container that's already running, often for troubleshooting.

**NOTES:** Remember 
- `pull` downloads a Docker image
- `run` creates a local container from the downloaded image
    - **Only use `run` to create a new container the first time**
    - **Each time you use the `run` command, a new container is created**
- `start` starts an existing container
- `attach` connects you to a running container

**Removing extra containers**
- If you use `run` instead of start, you will create new containers.  The extra containers can be removed using `docker rm my_container`