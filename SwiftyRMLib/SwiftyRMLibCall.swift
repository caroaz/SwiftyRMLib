
import Foundation
import Alamofire


public class SwiftyRMLibCall {

    public enum someError: Error{
        case InvalidData
        
    }
    public init () {
        
    }
    public func request<T1: Decodable> (url : String, expectating: T1.Type,  onCompletion: @escaping (Result <T1, Error>) -> Void){
        AF.request(url, method: .get).validate(statusCode: 200...299).responseDecodable(of: expectating) { response in
            if let characterList = response.value{
                onCompletion(.success(characterList))
            }else {
                onCompletion(.failure(someError.InvalidData))
            }
        }
    }
    
}
