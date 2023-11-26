import UIKit

final class TwoViewController: UIViewController {
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 80, height: 160))
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(cancelTapped), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        
        view.addSubview(cancelButton)
    }
    
    @objc private func cancelTapped() {
        dismiss(animated: true)
    }
}
