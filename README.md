# AdaptiveSheet
A Sheet that has adaptive size based on its content! 📃

## Setup

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/stateman92/AdaptiveSheet", exact: .init(0, 0, 2))
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app)

## Usage

```swift
VStack(spacing: 16) {
    Button("Show small sheet") {
        showSmallSheet.toggle()
    }
    .adaptiveSheet(isPresented: $showSmallSheet) {
        Rectangle()
            .fill(.blue)
            .frame(height: 100)
    }

    Button("Show big sheet") {
        showBigSheet.toggle()
    }
    .adaptiveSheet(isPresented: $showBigSheet) {
        Rectangle()
            .fill(.blue)
            .frame(height: 1500)
    }
}
```

For details see the Example app.

## Example

<p style="text-align:center;"><img src="https://github.com/stateman92/AdaptiveSheet/blob/main/Resources/screenrecording.gif?raw=true" width="50%" alt="Example"></p>
