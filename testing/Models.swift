//
//  Models.swift
//  testing
//
//  Created by Xiying Fan on 8/4/25.
//

import Foundation

enum VoiceType: String, Codable, Hashable, Sendable, CaseIterable {
    case alloy
    case echo
    case fable
    case onyx
    case nova
    case shimmer
}

enum VoiceChatState{
    case idle
    case recordingSpeech
    case processingSpeech
    case playingSpeech
    case error(Error)
}
