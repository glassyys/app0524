package search;

import java.util.ArrayList;

public class SongData {
	public ArrayList<Song> songdata = new ArrayList<Song>();
	public ArrayList<Album> albumdata = new ArrayList<Album>();
	
	public SongData(){
		songdata.add(new Song("DASH", "NMIXX", "K-POP", "앨범이미지/k-pop- 앨범/엔믹스 - fe304.jpg"));
		
		albumdata.add(new Album("Idol", "YOASOBI", "J-POP", "앨범이미지/j-pop-앨범/요아소비 - idol.jpg",
				new Song[] {new Song("Idol", "YOASOBI", "J-POP", "앨범이미지/j-pop-앨범/요아소비 - idol.jpg")
			})
			);
		songdata.add(albumdata.get(0).getSongs()[0]);
	}
}
