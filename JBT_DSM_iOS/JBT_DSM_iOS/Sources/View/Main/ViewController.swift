import UIKit

import SnapKit
import Then

class ViewController: UIViewController {
    
    private let label1 = UILabel().then {
        $0.text = "안녕하세요!"
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        
        [label1].forEach { view.addSubview($0) }
        
        label1.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}

