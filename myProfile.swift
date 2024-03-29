import UIKit

class ContextItem {
    var title: String
    var subtitle: String
    var description: String
    
    init(title: String, subtitle: String, description: String) {
        self.title = title
        self.subtitle = subtitle
        self.description = description
    }
}

class ViewController: UIViewController {
    
    let ninjaImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ninja")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "America Ninja"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let roleLabel: UILabel = {
        let label = UILabel()
        label.text = "Role: Ninja Warrior"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "Location: USA"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let funFactLabel: UILabel = {
        let label = UILabel()
        label.text = "Fun Fact: American Ninja Warrior is a sports entertainment competition spin-off of the Japanese television series Sasuke."
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let contextItemsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let detailButton: UIButton = {
        let button = UIButton()
        button.setTitle("View Details", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(detailButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.backgroundColor = .white
        navigationItem.title = "Profile"
        
        view.addSubview(ninjaImageView)
        view.addSubview(nameLabel)
        view.addSubview(roleLabel)
        view.addSubview(locationLabel)
        view.addSubview(funFactLabel)
        view.addSubview(contextItemsStackView)
        view.addSubview(detailButton)
        
        NSLayoutConstraint.activate([
            ninjaImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            ninjaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ninjaImageView.widthAnchor.constraint(equalToConstant: 200),
            ninjaImageView.heightAnchor.constraint(equalToConstant: 200),
            
            nameLabel.topAnchor.constraint(equalTo: ninjaImageView.bottomAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            roleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
            roleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            roleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            locationLabel.topAnchor