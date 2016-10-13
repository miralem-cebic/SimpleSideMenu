import UIKit

// MARK: - UIViewController+SideMenu

extension UIViewController {
    
    var sideMenuViewController: SideMenu? {
        get {
            var iter : UIViewController = self.parent!

            while (iter.nibName != nibName) {
                if iter.isKind(of: SideMenu.classForCoder()) {
                    return (iter as! SideMenu)
                } else if (iter.parent != nil && iter.parent != iter) {
                    iter = iter.parent!
                }
            }
            return nil
        }
        set(newValue) {
            self.sideMenuViewController = newValue
        }
    }
    
    // MARK: - Public
    // MARK: - IB Action Helper methods
    
    @IBAction public func presentLeftMenuViewController(sender: AnyObject) {
        self.sideMenuViewController!.presentLeftMenuViewController()
    }
    
    @IBAction public func presentRightMenuViewController(sender: AnyObject) {
        self.sideMenuViewController!.presentRightMenuViewController()
    }
}
