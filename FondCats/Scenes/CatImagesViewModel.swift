import Foundation
import Combine

class CatImagesViewModel {
    private let catImageService = CatImageService()
    private var cancellables = Set<AnyCancellable>()

    @Published var catImages: [CatImage] = []

    func fetchCatImages() {
        catImageService.fetchCatImages()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error: \(error)")
                }
            }, receiveValue: { [weak self] catImages in
                self?.catImages = catImages
            })
            .store(in: &cancellables)
    }
}
