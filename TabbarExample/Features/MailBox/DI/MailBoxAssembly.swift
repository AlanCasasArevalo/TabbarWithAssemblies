import Foundation

class MailBoxAssembly {
    public func mailController () -> MailBoxViewController {
        let mailBox = MailBoxViewController(nibName: NibName.mailBoxViewController, bundle: nil)
        return mailBox
    }

}
