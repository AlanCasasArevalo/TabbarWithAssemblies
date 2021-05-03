import UIKit

class HomeTabAssembly {

    let homeAssembly: HomeAssembly
    let profileAssembly: ProfileAssembly
    let mailBoxAssembly: MailBoxAssembly

    init(homeAssembly: HomeAssembly, profileAssembly: ProfileAssembly, mailBoxAssembly: MailBoxAssembly) {
        self.homeAssembly = homeAssembly
        self.profileAssembly = profileAssembly
        self.mailBoxAssembly = mailBoxAssembly
    }

    public func homeTabbarController () -> HomeTabViewController {
        let tabViewController = HomeTabViewController(nibName: NibName.tabViewController, bundle: nil)

        let homeView = homeAssembly.homeController()
        let profile = profileAssembly.profileController()
        let mailBox = mailBoxAssembly.mailController()

        let homeTabbarItem = UITabBarItem(title: ImagesAndIconsConstants.homeTabbarItemTitle, image: UIImage(named: ImagesAndIconsConstants.homeTabbarItemImageName), selectedImage: UIImage(named: ImagesAndIconsConstants.homeTabbarItemImageName))
        let profileTabbarItem = UITabBarItem(title: ImagesAndIconsConstants.profileTabbarItemTitle, image: UIImage(named: ImagesAndIconsConstants.profileTabbarItemImageName), selectedImage: UIImage(named: ImagesAndIconsConstants.profileTabbarItemImageName))
        let mailBoxTabbarItem = UITabBarItem(title: ImagesAndIconsConstants.mailBoxTabbarItemTitle, image: UIImage(named: ImagesAndIconsConstants.mailBoxTabbarItemImageName), selectedImage: UIImage(named: ImagesAndIconsConstants.mailBoxTabbarItemImageName))

        homeView.tabBarItem = homeTabbarItem
        profile.tabBarItem = profileTabbarItem
        mailBox.tabBarItem = mailBoxTabbarItem

        tabViewController.viewControllers = [homeView, profile, mailBox]

        return tabViewController
    }
    
}
