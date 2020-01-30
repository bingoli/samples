//
//  RegularExpressionTestViewController.swift
//  performace
//
//  Created by libin on 2020/1/29.
//  Copyright © 2020 cn.bingoli. All rights reserved.
//

import UIKit

class RegularExpressionTestViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var sendTextView: UITextView!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        textField.placeholder = "输入消息内容"
        textField.returnKeyType = UIReturnKeyType.send
        textField.enablesReturnKeyAutomatically  = true
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow(_:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide(_:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc
    func keyboardWillShow(_ notify: Notification) {
        guard let userInfo = notify.userInfo else {
            return
        }
        
        let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let keyboardBounds = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        let deltaY = keyboardBounds.size.height
        
        UIView.animate(withDuration: duration) {
            self.view.transform = CGAffineTransform(translationX: 0,y: -deltaY)
        }
    }
    
    @objc
    func keyboardWillHide(_ notify: Notification) {
        guard let userInfo = notify.userInfo else {
            return
        }
        
        let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        
        UIView.animate(withDuration: duration) {
            self.view.transform = CGAffineTransform(translationX: 0, y: 0)
        }
    }
    
    func sendText() {
        var newString = sendTextView.text ?? ""
        newString += "\n\n"
        newString += textField.text ?? ""
        let attributedString = NSMutableAttributedString(string: newString);
        
        let detector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue | NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
        
        let matches = detector?.matches(in: newString, options: NSRegularExpression.MatchingOptions.reportProgress, range: NSMakeRange(0, newString.count))
        
        for match in matches ?? [] {
            switch match.resultType {
            case NSTextCheckingResult.CheckingType.link:
                let url = match.url!
                NSLog(url.absoluteString)
                NSLog("%d %d", match.range.lowerBound, match.range.length)
                attributedString.addAttribute(.link, value: url, range: match.range)
            case NSTextCheckingResult.CheckingType.phoneNumber:
                let phoneNumber = match.phoneNumber ?? ""
                NSLog(phoneNumber)
                NSLog("%d %d", match.range.lowerBound, match.range.length)
                attributedString.addAttribute(.link, value: "tel://" + phoneNumber, range: match.range)
            default:
                break;
            }

        }

        sendTextView.attributedText = attributedString;
        textField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(false)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        sendText()
        self.view.endEditing(false)
        return true;
    }
}
