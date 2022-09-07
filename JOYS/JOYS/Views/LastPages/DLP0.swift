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
    let description2: String
    let Eby: String
    let place: String
}
struct PhotoList {
     
    static let Courses = [
    Photo(imageName: "V2", title: "TEXTURE ART", description: "It is a course by Noor Design, where you will learn how to see, understand, and capture the effects and shadows of texture brush art and how to incorporate theme and color into the rules of interior design.",description2: "B" , Eby:"By Noor Design",place: "h"),
    
    Photo(imageName: "V1-1", title: "CROCHET EMBROIDERY ART", description: "A comprehensive foundation course with crochet embroidery, and you can invest in this course, exchange ideas and experiences, and start your own project",description2: "Four classes, as every Friday is a class" ,Eby: "By art_workshops3",place: "j"),
    
    Photo(imageName: "V1-2", title: "Technical personality analysis workshop", description: "Identifying the motives and importance of drawing, discovering the personality style through drawing, discovering the meanings of line and colors in drawings, patterns of geometric shapes and their qualities", description2: "On Wednesday 21-9-2022", Eby: "By Esraa Al-Anzi",place: "Al-Tijaria Tower, 19th floor")
    
    ]
}
