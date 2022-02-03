//MARK: Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer,  composer and type of song
class Song {
    
    var songName: String
    init(songName: String) {
        self.songName = songName
    }
    
}

class Music: Song {
    
    var singerName: String = ""
    var composerName: String = ""
    var songType: String =  ""
    
    init(songName: String, singerName: String, composerName: String, songType: String) {
        super.init(songName: songName)
        self.singerName = singerName
        self.composerName = composerName
        self.songType = songType
    }
    
}

class HipHop: Music {
    
    init(songName: String, songType: String, singerName: String, composerName: String) {
        super.init(songName: songName, singerName: singerName, composerName: composerName, songType: songType)
    }
    
    func details() {
        print("\nHipHop :")
        print("Song name: \(songName)\nSong type: \(songType)\nSinger name: \(singerName)\nComposer name: \(composerName)")
    }

}

class Classical: Music {
    
    init(songName: String, songType: String, singerName: String, composerName: String) {
        super.init(songName: songName, singerName: singerName, composerName: composerName, songType: songType)
    }
    
    func details() {
        print("\nClassical :")
        print("Song name: \(songName)\nSong type: \(songType)\nSinger name: \(singerName)\nComposer name: \(composerName)")
    }

}

//OBJECT OF HIPHOP
let hipHop = HipHop(songName: "Closer", songType: "Hip-Hop", singerName: "Justin biber", composerName: "Reena Esmail")
hipHop.details()

//OBJECT OF CLASSICAL
let classical = Classical(songName: "Perfect", songType: "SLow-reverb", singerName: "ED sheran", composerName: "Selena gomez")
classical.details()
