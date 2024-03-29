import UIKit

class GuesserViewController: UIViewController {

    // Guesser screen UI elements
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Guess the Dinosaur"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()

    let dinosaurImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dinosaur")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    let guessLabel: UILabel = {
        let label = UILabel()
        label.text = "Is it a T-Rex?"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        return label
    }()

    let guessLowerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Lower", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(guessLowerButtonTapped), for: .touchUpInside)
        return button
    }()

    let guessHigherButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Higher", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(guessHigherButtonTapped), for: .touchUpInside)
        return button
    }()

    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(dinosaurImageView)
        stackView.addArrangedSubview(guessLabel)
        stackView.addArrangedSubview(guessLowerButton)
        stackView.addArrangedSubview(guessHigherButton)
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dinosaurImageView.widthAnchor.constraint(equalToConstant: 200),
            dinosaurImageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }

    @objc func guessLowerButtonTapped() {
        // Handle guess lower button tap
    }

    @objc func guessHigherButtonTapped() {
        // Handle guess higher button tap
    }

}

class DinosaurDetailViewController: UIViewController {

    // Dinosaur detail screen UI elements
    
    var dinosaur: Dinosaur?

    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()

    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .justified
        return label
    }()

    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func