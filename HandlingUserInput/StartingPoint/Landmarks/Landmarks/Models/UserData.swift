//
//  UserData.swift
//  Landmarks
//
//  Created by Patrick Gatewood on 6/14/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData : BindableObject {
    let didChange = PassthroughSubject<UserData, Never>() // passes values to its subscribers
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
