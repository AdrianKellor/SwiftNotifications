
protocol NC_BASE {

}

extension NC_BASE {
    
    func send() { NotificationCenter.default.post(name: Self.NC_NAME, object: nil, userInfo: ["data": self]) }

    static var NC_NAME: NSNotification.Name { NSNotification.Name(String(describing: Self.self)) }

    static func parse(_ notification: Notification) -> Self? { return notification.userInfo?["data"] as? Self }

    static func observe(_ obj: Any, _ selector: Selector) {
        NotificationCenter.default.addObserver(obj, selector: selector, name: NC_NAME, object: nil)
    }
    
}

