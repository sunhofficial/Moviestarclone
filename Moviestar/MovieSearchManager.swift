//
//  MovieSearchManager.swift
//  Moviestar
//
//  Created by 235 on 2023/05/29.
//

import Foundation
import Alamofire
protocol MovieSearchManagerProtocol {
    func request(from keyword: String, completionHander: @escaping (([Movie]) -> Void))
}
struct MovieSearchManger{
    func request(from keyword: String, completionHander: @escaping (([Movie]) -> Void)){
    guard let url = URL(string: "https://openapi.naver.com/v1/search/movie.json") else{ return}
      let param = RequestMovieModel(query: keyword)
      let headers: HTTPHeaders = [
        "X-Naver-Client-Id" : "BHQcJy3Pv49qtBgmG1jr",
          "X-Naver-Client-Secret" : "suCikMnfYU"
        ]
      AF.request(url, method: .get, parameters: param, headers: headers).responseDecodable(of: ResponseMovieModel.self){
          response in
          switch response.result{
          case .success(let result):
              completionHander(result.items)
          case .failure(let err):
              print(err.errorDescription)
          }
      }
    }
}
