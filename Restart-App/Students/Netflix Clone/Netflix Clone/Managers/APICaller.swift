//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Ho Wang Leung on 13/3/2022.
//

import Foundation

struct Constants{
    static let API_KEY = "e937521ad0820150abbf70ebad5eaf49"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIERROR: Error{
    case failedTogetData
}

class APICaller{
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        print(url)
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data , error == nil else{
                return
            }
            
            do{
                let results =  try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                 print(results)
                completion(.success(results.results))
                
            }catch{
                completion(.failure(error))
            }
     
            
        }
        task.resume()
    }
    

}
