//
//  ViewModel.swift
//  testing
//
//  Created by Xiying Fan on 8/4/25.
//

import AVFoundation
import Foundation
import Observation
import XCAOpenAIClient

@Observable
class ViewModel: NSObject{
        
    let client = OpenAIClient(apiKey: "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")
    
    var selectedVoice = VoiceType.alloy
    var state = VoiceChatState.idle {
        didSet { print(state) }
    }
    var isIdle: Bool {
        if case .idle = state {
            return true
        }
        return false
    }
    
    var audioPower = 0.0
}

