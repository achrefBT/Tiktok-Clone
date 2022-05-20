//
//  Video.swift
//  TikTok Clone
import AVKit

// sample video for video playing...

struct Video : Identifiable {
    
    var id : Int
    var player : AVPlayer
    var replay : Bool
}
