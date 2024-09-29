import UIKit

class CatsFondView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Создаем UIImageView для фона
        let backgroundImageView = UIImageView()
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.image = UIImage(named: "Lapki")
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.isUserInteractionEnabled = false
        view.addSubview(backgroundImageView)

        // Настраиваем ограничения для backgroundImageView, чтобы он заполнял весь экран
        NSLayoutConstraint.activate([
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        // Создаем UIScrollView
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        // Создаем контейнер для всех элементов
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)

        // Создаем контейнер с белым фоном, черной окантовкой и скругленными углами
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .white
        containerView.layer.borderColor = UIColor.black.cgColor
        containerView.layer.borderWidth = 2
        containerView.layer.cornerRadius = 20
        containerView.clipsToBounds = true
        contentView.addSubview(containerView)

        // Создаем и настраиваем UILabel
        let fondLabel = createBoldLabel(text: "О нашем фонде помощи бездомным и больным кошкам")
        let fondYou = createLabel(text: "Мы — BadCats, некоммерческая организация, созданная с целью оказания помощи бездомным и больным кошкам. Наша миссия — обеспечить этих пушистиков всем необходимым: от медицинского обслуживания до заботы и любви.")
        let fondLabelHelper = createBoldLabel(text: "Как мы помогаем:")
        let fondHelper1 = createAttributedLabel(boldText: "1. Медицинская помощь:", normalText: " Мы сотрудничаем с ветеринарами для проведения необходимых обследований, вакцинаций и лечения больных животных. Каждая кошка, попавшая к нам, получает квалифицированную медицинскую помощь.")
        let fondHelper2 = createAttributedLabel(boldText: "2. Приют и забота:", normalText: " У нас есть временные приюты, где мы размещаем бездомных кошек. Мы обеспечиваем их питанием, уютом и вниманием, пока не найдем им новые дома.")
        let fondHelper3 = createAttributedLabel(boldText: "3. Программы по стерилизации:", normalText: " Мы активно занимаемся стерилизацией бездомных кошек, чтобы сократить их численность и предотвратить дальнейшие страдания животных.")
        let fondHelper4 = createAttributedLabel(boldText: "4. Поиск новых хозяев:", normalText: " Мы проводим акции по поиску ответственных хозяев для наших подопечных. Каждую кошку мы стараемся пристроить в любящие семьи.")

        // Добавляем UILabel в containerView
        containerView.addSubview(fondLabel)
        containerView.addSubview(fondYou)
        containerView.addSubview(fondLabelHelper)
        containerView.addSubview(fondHelper1)
        containerView.addSubview(fondHelper2)
        containerView.addSubview(fondHelper3)
        containerView.addSubview(fondHelper4)

        // Настраиваем автомасштабирование
        NSLayoutConstraint.activate([
            // ScrollView constraints
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            // ContentView constraints
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),

            // ContainerView constraints
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),

            // FondLabel constraints
            fondLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            fondLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            fondLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),

            // FondYou constraints
            fondYou.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            fondYou.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            fondYou.topAnchor.constraint(equalTo: fondLabel.bottomAnchor, constant: 20),

            // FondLabelHelper constraints
            fondLabelHelper.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            fondLabelHelper.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            fondLabelHelper.topAnchor.constraint(equalTo: fondYou.bottomAnchor, constant: 20),

            // FondHelper1 constraints
            fondHelper1.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            fondHelper1.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            fondHelper1.topAnchor.constraint(equalTo: fondLabelHelper.bottomAnchor, constant: 20),

            // FondHelper2 constraints
            fondHelper2.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            fondHelper2.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            fondHelper2.topAnchor.constraint(equalTo: fondHelper1.bottomAnchor, constant: 20),

            // FondHelper3 constraints
            fondHelper3.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            fondHelper3.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            fondHelper3.topAnchor.constraint(equalTo: fondHelper2.bottomAnchor, constant: 20),

            // FondHelper4 constraints
            fondHelper4.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            fondHelper4.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            fondHelper4.topAnchor.constraint(equalTo: fondHelper3.bottomAnchor, constant: 20),
            fondHelper4.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20)
        ])
    }

    func createLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    func createBoldLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    func createAttributedLabel(boldText: String, normalText: String) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        let attributedString = NSMutableAttributedString()

        let boldAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 20),
            .foregroundColor: UIColor.black
        ]
        let normalAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 20),
            .foregroundColor: UIColor.black
        ]

        attributedString.append(NSAttributedString(string: boldText, attributes: boldAttributes))
        attributedString.append(NSAttributedString(string: normalText, attributes: normalAttributes))

        label.attributedText = attributedString
        label.textAlignment = .center

        return label
    }
}
