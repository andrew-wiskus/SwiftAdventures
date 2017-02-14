//
//  DataSourceController.swift
//  DELEGATED
//
//  Created by Andrew Wiskus on 1/17/17.
//  Copyright © 2017 Andrew Wiskus. All rights reserved.
//

import UIKit
protocol DataSource {
    func getData(data: String)
}

struct SongData {
    var artist: String
    var song: String
    var genre: String
}
class DataSourceController {
    var DATASTRING = 0
    
    func checkData(){
    print(DATASTRING)
    }
    
    func changeData(){
        DATASTRING += 1
    }
    
    var songData = [
        SongData(artist: "Kanye", song: "The Good Life", genre: "Rap"),
        SongData(artist: "Jessie A", song: "Heisenburg", genre: "Soft-Rock"),
        SongData(artist: "Spoon", song: "Chili Bowl", genre: "Soft-Rock"),
        SongData(artist: "Forkinhiem", song: "Knives Are Dangerous", genre: "Soft-Rock"),
        SongData(artist: "Beyonce", song: "Put a Ring on Dat", genre: "Rap"),
    ]
    
    func getAllSongNames() -> [String] {
        let songNames: Array<String> = {
            var tempArray = [String]()
            for song in songData {
                tempArray.append(song.song)
            }
            return tempArray
        }()
        return songNames
    }
    
    func getAllArtistNames() -> [String] {
        let songNames: Array<String> = {
            var tempArray = [String]()
            for song in songData {
                tempArray.append(song.artist)
            }
            return tempArray
        }()
        return songNames
    }
    
    func getAllGenreNames() -> [String] {
        let songNames: Array<String> = {
            var tempArray = [String]()
            for song in songData {
                tempArray.append(song.genre)
            }
            return tempArray
        }()
        return songNames
    }
    

}
