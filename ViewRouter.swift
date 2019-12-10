//
//  ViewRouter.swift
//  CustomTabBar
//
//  Created by Levit Kanner on 10/12/2019.
//  Copyright © 2019 Levit Kanner. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ViewRouter: ObservableObject{
    @Published var currentView = "home"
}
