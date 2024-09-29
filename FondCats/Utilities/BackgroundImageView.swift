import UIKit

class BackgroundImageView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Создаем UIImageView для фона
        let backgroundImageView = UIImageView(image: UIImage(named: "Lapki"))
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false

        // Добавляем UIImageView на основной view
        view.addSubview(backgroundImageView)

        // Устанавливаем ограничения для UIImageView, чтобы он занимал весь экран
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        // Отправляем UIImageView на задний план
        view.sendSubviewToBack(backgroundImageView)
    }
}
