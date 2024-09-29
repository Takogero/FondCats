import Foundation
import Combine

struct CatImage: Codable {
    let id: String
    let url: String
    let width: Int
    let height: Int
    let breeds: [Breed]
}

struct Breed: Codable {
    let weight: Weight
    let id: String
    let name: String
    let temperament: String
    let origin: String
    let country_codes: String
    let country_code: String
    let life_span: String
    let wikipedia_url: String
}

struct Weight: Codable {
    let imperial: String
    let metric: String
}


