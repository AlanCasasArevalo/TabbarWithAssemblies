import UIKit

final public class CoreAssembly {

    private(set) lazy var homeAssembly = HomeAssembly()
    private(set) lazy var profileAssembly = ProfileAssembly()
    private(set) lazy var mailBoxAssembly = MailBoxAssembly()

    private(set) lazy var homeTabBar = HomeTabAssembly(homeAssembly: homeAssembly, profileAssembly: profileAssembly, mailBoxAssembly: mailBoxAssembly)

    private let navigationController: UINavigationController?
    
    public init(navigationController: UINavigationController? = nil) {
        self.navigationController = navigationController
    }
}
