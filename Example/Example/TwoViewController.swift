import UIKit
import ZLImageEditor

final class TwoViewController: UIViewController, PreviewableViewController {
    
    var backCallback: (() -> Void)?
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 200, y: 100, width: 80, height: 160))
        button.setTitle("Cancel", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(cancelTapped), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var backButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 80, height: 160))
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        
        view.addSubview(cancelButton)
        view.addSubview(backButton)
    }
    
    @objc private func cancelTapped() {
        dismiss(animated: true)
    }
    
    @objc private func backTapped() {
        backCallback?()
    }
}
