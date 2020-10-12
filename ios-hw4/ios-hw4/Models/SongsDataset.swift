//
//  SongsDataset.swift
//  ios-hw4
//
//  Created by Bedour Albshayer on 10/11/20.
//

import Foundation



var arianaSongs: [Song] = [
    .init(name: "7 rings", image: "ariana grande 3", songName: "7 rings.MP4"),
    .init(name: "Thank u Next", image: "ariana grande 4", songName: "Thank u next.MP4")
]

var shawnSongs: [Song] = [
    .init(name: "Wonder", image: "shawn mandes 2", songName: "Wonder.MP4"),
    .init(name: "In My Blood", image: "shawn mandes 1", songName: "In my blood.MP4")
]

var sherineSongs: [Song] = [
    .init(name: "على بالي", image: "شرين ٢", songName: "3ala Bali.MP4"),
    .init(name: "مشاعر", image: "شرين ٣", songName: "Mashaer.MP4")
]

var mjeedSongs: [Song] = [
    .init(name: "حن الغريب", image: "عبد المجيد ٤", songName: "mjeed1.MP4"),
    .init(name: "من مثلك", image: "عبد المجيد ٣", songName: "mjeed2.MP4")
]

var blackpinkSongs: [Song] = [
    .init(name: "Lovesick Girls", image: "lovesick 1", songName: "How you like that.MP4"),
    .init(name: "How You Like That", image: "how you like that 3", songName: "Lovesick girls.MP4")
]

var btsSongs: [Song] = [
    .init(name: "Dynamite", image: "bts3", songName: "Dynamite.MP4"),
    .init(name: "ON", image: "bts on1", songName: "ON.MP4")
]



var artists:  [Artist] = [
    
    .init(name: "Ariana Grande", image: "ariana grande 1", songs: arianaSongs),
    .init(name: "Shawn Mandes", image: "shawn mandes 3", songs: shawnSongs),
    .init(name: "Sherine Abdelwahab", image: "sherine1", songs: sherineSongs),
    .init(name: "Abdelmjeed", image:"abdelmjeed2", songs: mjeedSongs),
    .init(name: "BlackPink", image: "blackpink 3", songs: blackpinkSongs),
    .init(name: "BTS", image: "bts2", songs: btsSongs)
]
