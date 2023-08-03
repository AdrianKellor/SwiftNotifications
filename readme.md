Usage:

1. Define a new type:

```swift
struct NC_FOO: NC_BASE {
   let bar: String
}
```

2. Observe the notification type

```swift
NC_FOO.observe(self, #selector(receiveFoo(notification:)))
```

3. Create a handler method

```swift
@objc func receiveAccelReading(notification: Notification) {
    if let foo = NC_FOO.parse(notification)? {
        print(foo.bar)
    }
}
```

4. Send a notification

```swift
NC_FOO(bar: "bar").send()
```
