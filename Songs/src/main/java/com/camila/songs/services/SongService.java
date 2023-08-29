package com.camila.songs.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.camila.songs.repositories.SongRepo;
import com.camila.songs.models.Song;

@Service
public class SongService {

private final SongRepo songRepo;
	
	public SongService(SongRepo songRepo) {
		this.songRepo = songRepo;
	}
	
	public List<Song> allSongs(){
		return songRepo.findAll();
	}
	
	public Song addSong(Song song) {
		return songRepo.save(song);
	}
	
	public Song findSong(Long id) {
		Optional<Song> optionalSong = songRepo.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		}else {
			return null;
		}
	}
	
	public List<Song> topTen() {
		return songRepo.getTopTen();
	}
	
	public Song updateSong(Song song) {
		return songRepo.save(song);
	}
	
	public void deleteSong(Song song) {
		songRepo.delete(song);
	}
	
	public List<Song> artistas(String artista){
		return songRepo.findByArtist(artista);
		
	}

}
