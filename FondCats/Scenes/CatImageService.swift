import Foundation
import Combine

class CatImageService {
    func fetchCatImages() -> AnyPublisher<[CatImage], Error> {
        let urlString = "https://api.thecatapi.com/v1/images/search?limit=10&breed_ids=beng&api_key=live_FHhbZQ0B3UBXGCZ61AejfTxydPNCGUKPAnlAHMdVFXLe1DzFg9qScNAbUavuz2yT"
        guard let url = URL(string: urlString) else {
            fatalError("Invalid URL")
        }

        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [CatImage].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
