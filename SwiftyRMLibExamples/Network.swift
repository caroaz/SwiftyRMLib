
import Foundation
import SwiftyRMLib
struct Characters: Decodable {
    let identifier: Int
    let name: String
    let status: String
    let species: String
    let image: String
    let gender: String
    
    enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case name
        case status
        case species
        case image
        case gender
    }
}

struct CharacterList: Decodable{
    let results: [Characters]
}

struct APIError: Error {
    let message: String
}

class callAPiNetwork {
    func callApiExample () {
        SwiftyRMLibCall().request(url: "https://rickandmortyapi.com/api/character", expectating: CharacterList.self) { result in
            switch result{
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error)
            }
        
        }        
    }
        
    
}
