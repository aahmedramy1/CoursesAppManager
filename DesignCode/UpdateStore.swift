//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Ahmed Ramy on 7/25/20.
//  Copyright © 2020 Ahmed Ramy. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
