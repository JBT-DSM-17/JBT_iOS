import UIKit

import SnapKit
import Then

class JBTLoginViewController: UIViewController {
    
//    private let label1 = JBTLoginTitleLabel(text: "hello!")
    
    private let label10 = JBTLoginTitleLabel(text: "로그인")
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        [label10].forEach { view.addSubview($0) }
    
        
        label10.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.width.equalToSuperview()
            $0.height.equalTo(50)
        }
    }
}

