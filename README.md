# Automate-Spotify-Playlist-Creation-With-Terraform

## Project Overview

This project uses Terraform to automatically create different Spotify playlists for various times and events, like morning, evening, and party night. Terraform helps automate and manage these playlists.

## Prerequisites

1. **Terraform Installed**: Ensure Terraform is installed on your machine.
2. **Docker Installed**: Make sure Docker is installed and running.
3. **Spotify Account**: You need a Spotify account (without premium access)
4. **Spotify Developer Account**: Register and create an application to get the Client ID and Client Secret.
5. **Spotify Provider for Terraform**: Install and configure the Spotify provider for Terraform.
6. **VS Code Editor**: Recommended for editing Terraform files.

## Steps to Complete the Project
1. Creating Terraform Code
Start by setting up your Terraform project.
Create a new directory for your Terraform project and navigate to it in your terminal.
Create a file named main.tf.

2. Define Provider
In main.tf, define the Spotify provider:
provider "spotify" {
  api_key = "?"
}

3. Need API Key
To interact with Spotify's API, you need a Client ID and Client Secret.

4. Start with App Creation:

a. Go to the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).

b. Log in with your Spotify account.

c. Click on "Create an App".

5. Fill in the required details and create the app.
    
    
    | Name | Description |
    | --- | --- |
    | My Playlist through Terraform | Create multiple Spotify playlists using Terraform. |
    - *Redirect URIs: [http://localhost:27228/spotify_callback](http://localhost:27228/spotify_callback**)
  
6. Enter Details

Create a file named `.env` to store your Spotify application's Client ID and Secret:

```
SPOTIFY_CLIENT_ID=<your_spotify_client_id>
SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>

```

7. Run the Spotify Auth App and Get the API Key

```
docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
```

a. Make sure Docker Desktop is running, and start the authorization proxy server:

b. You should get “Authorization Successful” Message.

8. Continue Creating Terraform Code

9. Initialize, Plan and Apply Terraform Configuration

a. Initialize the Terraform configuration:
`terraform init`

b. Plan the Terraform configuration:
`terraform plan`

c. Apply the Terraform configuration:
`terraform apply` (You can either skip the confirmation by adding `-auto-approve` to this command or simple type `yes` when the confirmation prompt appears)

10. Verify Playlists on Spotify

After applying the Terraform configuration, open your Spotify account and verify that the playlists have been created and populated with the specified tracks.

## Conclusion

By following these steps, you can use Terraform to automatically create and manage multiple Spotify playlists. This saves you time and makes sure all your playlists are consistent. You can also customize the playlists and tracks to match different occasions.
