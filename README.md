# BonusBarView

## About BonusBarView
____
This package contains a view for displaying client data from the server

## Installation
____

BonusBarView must be installed using Swift Package Manager.

1. In Xcode open **File/Swift Packages/Add Package Dependency...** menu. 

2. Copy and paste the package URL:

```
 https://github.com/AtabaevaAlina/BonusBarView.git
```
## Usage
____

For add custom fonts in your project :

In your  ProjectApp

`import BonusBarView`

Then in ProjectApp add Appearance.configurePackageUI()
```swift
struct ProjectApp: App {
    init() {
        Appearance.configurePackageUI()
      }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```
### SwiftUI

```swift
import BonusBarView

struct ContentView: View {
    var body: some View {
        \\\
            BonusBarView(info: $info) // add object information client from server
        \\\
    }
}
```
