//
//  Networking.swift
//  FeaturesAnna
//
//  Created by Анна Ереськина on 13.06.2021.
//

import Foundation

/// Общение с сетью
open class Networking {
    /// Загрузка картинки в формате Data
    /// - Parameters:
    ///   - url: адрес картинки
    ///   - completion: обработчик завершения
    public static func loadImage(from url: URL?, completion: @escaping (Data?) -> Void)  {
        guard let url = url else {
            completion(nil)
            return
        }
        DispatchQueue.global().async {
            guard let data = try? Data(contentsOf: url) else {
                completion(nil)
                return
            }
            DispatchQueue.main.async {
                completion(data)
            }
        }
    }
}
