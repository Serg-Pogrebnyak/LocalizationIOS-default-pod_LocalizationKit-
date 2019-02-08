//
//  ViewController.swift
//  LocalizationProjectTest
//
//  Created by Sergey Pogrebnyak on 2/7/19.
//  Copyright © 2019 Sergey Pogrebnyak. All rights reserved.
//

import UIKit
import LocalizationKit

class ViewController: UIViewController {

    @IBOutlet fileprivate weak var buttonOnlineLocalization: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction(_ sender: Any) {
        let title = NSLocalizedString("Title", tableName: "LocalizationRussian", bundle: Bundle.main, value: "No default value", comment: "")
        let message = NSLocalizedString("Error", tableName: "LocalizationRussian", bundle: Bundle.main, value: "No title", comment: "")
        showAlert(title: title, message: message)
    }

    @IBAction func onlineButtonTranslate(_ sender: UIButton) {
        let title = "Hello".localize
        let message = Localization.get("MessageAlert", alternate: "this is default message")
        showAlert(title: title!, message: message)
    }

    fileprivate func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

