import UIKit

import SnapKit
import Then


class JBTLoginTitleLabel: UILabel {
    let label = UILabel().then {
        $0.text = "안녕"
        $0.numberOfLines = 2
    }
    
//    let label2 = UILabel().then {
//        $0.text = "로그인"
//    }
//    
    init(text: String) {
        super.init(frame: .zero)
        
        label.text = "\(text)하고\nㅈㅂㅌ을 사용해보세요!"
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout() {
        self.addSubview(label)
//        self.addSubview(label2)
//        
        label.snp.makeConstraints {
            $0.leading.equalTo(24)
            $0.top.equalTo(self.safeAreaLayoutGuide).inset(80)
            $0.width.equalTo(221)
            $0.height.equalTo(58)

        }
        
//        label2.snp.makeConstraints {
//            $0.centerX.equalToSuperview()
//            $0.bottom.equalTo(60)
//        }
    }
}
