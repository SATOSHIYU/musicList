//
//  Song.swift
//  musicList
//
//  Created by HSIEH CHIH YU on 2020/8/12.
//

import Foundation

struct SongResults: Codable {
    let resultCount: Int
    let results: [Song]
}

struct Song: Codable {
    let wrapperType: String
    let kind: String
    let artistId: Int
    let collectionId: Int
    let trackId: Int
    let artistName: String
    let collectionName: String
    let trackName: String
    let collectionCensoredName: String
    let trackCensoredName: String
    let artistViewUrl: URL
    let collectionViewUrl: URL
    let trackViewUrl: URL
    let previewUrl: URL
    let artworkUrl30: URL
    let artworkUrl60: URL
    let artworkUrl100: URL
    let collectionPrice: Double?
    let trackPrice: Double?
    let releaseDate: String
    let collectionExplicitness: String
    let trackExplicitness: String
    let discCount: Int
    let discNumber: Int
    let trackCount: Int
    let trackNumber: Int
    let trackTimeMillis: Int
    let country: String
    let currency: String
    let primaryGenreName: String
    let isStreamable: Bool?


}

//struct SongResults: Codable {
//   let resultCount: Int
//   let results: [Song]
//}
//
//struct Song: Codable {
//   let artistName: String
//   let trackName: String
//   let collectionName: String?
//   let previewUrl: URL
//   let artworkUrl100: URL
//   let trackPrice: Double?
//   let releaseDate: Date
//   let isStreamable: Bool?
//}
