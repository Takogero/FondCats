import UIKit

class MenuView: BackgroundImageView {


override func viewDidLoad() {
    super.viewDidLoad()

    // Функция для создания кнопки с заданными размерами и скругленными углами
    func createButton(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2.0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: 358).isActive = true
        button.heightAnchor.constraint(equalToConstant: 62).isActive = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(.black, for: .normal)
        return button
    }

    // Создаем три кнопки
    let button1 = createButton(title: "О фонде")
    let button2 = createButton(title: "Кошечки")
    let button3 = createButton(title: "Сделать пожертвование")

    // Добавляем кнопки на экран
    view.addSubview(button1)
    view.addSubview(button2)
    view.addSubview(button3)

    // Устанавливаем ограничения для центрирования кнопок
    NSLayoutConstraint.activate([
        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        button1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),

        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        button2.centerYAnchor.constraint(equalTo: view.centerYAnchor),

        button3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        button3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
    ])

    // Добавляем обработчик событий для кнопки "О фонде"
    button1.addTarget(self, action: #selector(goToCatsFondView), for: .touchUpInside)

    // Добавляем обработчик событий для кнопки "Кошечки"
    button2.addTarget(self, action: #selector(goToCatImagesView), for: .touchUpInside)

    // Добавляем обработчик событий для кнопки "Сделать пожертвование"
    button3.addTarget(self, action: #selector(goToHelperView), for: .touchUpInside)
}

@objc func goToCatsFondView() {
    let catsFondView = CatsFondView()
    present(catsFondView, animated: true, completion: nil)
}

@objc func goToCatImagesView() {
    let catImagesViewController = CatImagesViewController()
    present(catImagesViewController, animated: true, completion: nil)
}

@objc func goToHelperView() {
    let helperView = HelperView()
    present(helperView, animated: true, completion: nil)
}
}
