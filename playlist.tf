resource "spotify_playlist" "playlist1" {
    name = "My Favorite Songs"
    tracks = ["75p6BrziB5urmwPCeXl3y7", "0loZn1c5heXie7OAtvK6nH", "3t3wsY5IdLVzB9WidegJSU"]
}

data "spotify_search_track" "SMW" {
    artist = "Sidhu Moose Wala"
}

resource "spotify_playlist" "playlist2" {
    name = "My Fav Singer"
    tracks = [data.spotify_search_track.SMW.tracks[1].id,
    data.spotify_search_track.SMW.tracks[4].id,
    data.spotify_search_track.SMW.tracks[9].id]
}

data "spotify_search_track" "SM" {
    artist = "Shawn Mendes"
    limit = 5
}

resource "spotify_playlist" "playlist3" {
    name = "My Fav International Singer"
    tracks = flatten([data.spotify_search_track.SM.tracks[*].id])
}