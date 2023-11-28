//
//  DefaultNetworkService.swift
//  Data
//
//  Created by gnksbm on 2023/11/28.
//

import Foundation

public final class DefaultNetworkService: NetworkService {
    public init() { }
    
    public func request(endPoint: EndPoint) async -> Result<Data, Error> {
        guard let request = endPoint.toRequest() else { return .failure(NetworkError.invalidURL) }
        do {
            let (data, resonse) = try await URLSession.shared.data(for: request)
            guard let httpUrlResponse = resonse as? HTTPURLResponse,
                  200...299 ~= httpUrlResponse.statusCode
            else { return .failure(NetworkError.invalidStatusCode) }
            return .success(data)
        } catch {
            return .failure(NetworkError.transportError(error))
        }
    }
}
