import Foundation

class ProfileAssembly {
    public func profileController () -> ProfileViewController {
        let profile = ProfileViewController(nibName: NibName.profileViewController, bundle: nil)
        return profile
    }
}
