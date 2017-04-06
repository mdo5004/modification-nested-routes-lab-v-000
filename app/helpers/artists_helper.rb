module ArtistsHelper
    def display_artist(song)
        song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
    end

    def artist_select(song,artist=nil)
        if artist.nil?
            collection_select song, :artist_id, Artist.all, :id, :name 
        else 
             hidden_field_tag "song[artist_id]", song.artist_id
        end
    end
end
