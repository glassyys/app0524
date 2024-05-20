package search;

public class Album {
	private String title;
	private String author;
	private String genre;
	private String image;
	private Song[] songs;
	public Album() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Album(String title, String author, String genre, String image, Song[] songs) {
		super();
		this.title = title;
		this.author = author;
		this.genre = genre;
		this.image = image;
		this.songs = songs;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Song[] getSongs() {
		return songs;
	}
	public void setSongs(Song[] songs) {
		this.songs = songs;
	}
	
}
