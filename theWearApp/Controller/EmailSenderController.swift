import Foundation
import UIKit
import MessageUI
class EmailViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
        override func viewDidLoad() {
               super.viewDidLoad()
               self.sendEmailButtonTapped(sender: self)
           }
    
       @IBAction func sendEmailButtonTapped(sender: AnyObject) {
               let mailComposeViewController = configuredMailComposeViewController()
               if MFMailComposeViewController.canSendMail() {
                      self.present(mailComposeViewController, animated: true, completion: nil)
                  } else {
                       self.showSendMailErrorAlert()
                   }
            }
    
        func configuredMailComposeViewController() -> MFMailComposeViewController {
                let mailComposerVC = MFMailComposeViewController()
                mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
                mailComposerVC.setToRecipients(["theweardevelopers@gmail.com"])
                mailComposerVC.setSubject("An issue to discuss")
                mailComposerVC.setMessageBody("Your problem, question or anything else", isHTML: false)
    
                return mailComposerVC
            }
    
        func showSendMailErrorAlert() {
                let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
                sendMailErrorAlert.show()
            }
    
        // MARK: MFMailComposeViewControllerDelegate Method
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
                controller.dismiss(animated: true, completion: nil)
            }
    }
