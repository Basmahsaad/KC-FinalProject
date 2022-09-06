//
//  DLP0.swift
//  JOYS
//
//  Created by basmah saad on 06/09/2022.
//

import SwiftUI

struct Photo: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let Eby: String
}
struct PhotoList {
     
    static let Courses = [
    Photo(imageName: "V2", title: "TEXTURE ART", description: "It is a course by Noor Design, where you will learn how to see, understand, and capture the effects and shadows of texture brush art and how to incorporate theme and color into the rules of interior design.", Eby:"By Noor Design")]
}
