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
    Photo(imageName: "V2", title: "TEXTURE ART", description: "It is a course by Noor Design, where you will learn how to see, understand, and capture the effects and shadows of texture brush art and how to incorporate theme and color into the rules of interior design.",description2: "13-SEPTEMBER-22,From 3 to 6 pm" , Eby:"By Noor Design",place: "Al-Tijaria Tower, 19th floor in gladsome cafe"),
    
    Photo(imageName: "V1-1", title: "CROCHET EMBROIDERY ART", description: "A comprehensive foundation course with crochet embroidery, and you can invest in this course, exchange ideas and experiences, and start your own project",description2: "Four classes, as every Friday is a class" ,Eby: "By art_workshops3",place: "j"),
    
    Photo(imageName: "V1-2", title: "Technical personality analysis workshop", description: "Identifying the motives and importance of drawing, discovering the personality style through drawing, discovering the meanings of line and colors in drawings, patterns of geometric shapes and their qualities", description2: "On Wednesday 21-9-2022", Eby: "By Esraa Al-Anzi",place: "Al-Tijaria Tower, 19th floor")
    
    ]
    
    static let Opening = [
    Photo(imageName: "V2-1", title: "SUNSHINE", description: "Sunshine Restaurant and Café, Sunshine Restaurant provides all kinds, including sweets and appetizers, all kinds of drinks and other items, and you can also find them in Talabat and Deliveroo.", description2: "6:00 AM TO 12:00 AM", Eby: "Restaurant and Cafe", place: "Mahboula - Main street"),
    
    Photo(imageName: "V2-2", title: "PINOLO", description: "Pinolo Restaurant, an Italian restaurant where they have all kinds of Italian and also have more than one kind of desserts", description2: "12:30 PM - 11:30 PM", Eby: "Italian Restaurant", place: "Kuwait City"),
    
    Photo(imageName: "V2-3", title: "Inject me", description: "Inject Me Restaurant and Cafe, the restaurant is characterized by all kinds of food and main dishes, where you will find all kinds of salads, appetizers, burgers, pastas and desserts as well, but they also inserted the needle in most of their dishes and this was the reason for their distinction", description2: "12:00 PM - 12:00 AM", Eby: "Resturant and Cafe", place: "Abu Alhasani - Tasters Mall")
    ]
    
    
    static let Exhibitions = [
    Photo(imageName: "V3-3", title: "Kuwait International Book Fair" , description: "The 45th Kuwait International Book Fair, where all publishing houses display their books, and most of the publishing houses in Kuwait and the Gulf are present in this annual exhibition organized by the National Council for Culture and Arts.", description2: "From 16 - 26 November 2022", Eby: "By NCCAL", place: "Kuwait International Fairground"),
    
    Photo(imageName: "V3-4", title: "Egyptian visions exhibition", description: "The exhibition includes the product of 46 Egyptian artists residing on the land of Kuwait, and the artwork in the exhibition was 160 diverse paintings in the house of painting and photography as an expressive field, as well as the field of sculpture and formation.  Ceramics, which had a prominent role in the exhibition, as well as mixed media paintings and the introduction of resin art as a new expressive field in the formation of applied works as well as molding through different metals and molding them into innovative artistic molds, there were many art schools that artists used in their artworks", description2: "Wednesday 15 - December 2021 at 6 pm", Eby: "By NCCAL", place: "Alfunun hall - Abdullah Al-Salem District"),
    
    Photo(imageName: "V3-2", title: "Arabic Calligraphy Exhibition", description: "", description2: "11-September 2022, at 7 pm", Eby: "By NCCAL", place: "Museum of Modern Art")
    ]
}
