# Doná
**Doná** (means seed in Tajik language) is a library based on Apple's UIKit which helps you to create your own declarative UI.

## Usage Example
For more information use Wiki.
### UImageView Example
```swift

private let imageView = UIImageView()
    .decorated(with: .namedImage("ExampleLogo"))
    .decorated(with: .contentMode(.scaleAspectFit))
    .decorated(with: .disabledAutoresizingMask())
```

### UILabel Example
```swift
private let titleLabel = UILabel()
    .decorated(with: .text("Hello, World!"))
    .decorated(with: .textColor(.systemOrange))
    .decorated(with: .textAlignment(.center))
    .decorated(with: .font(.systemFont(ofSize: 16, weight: .medium, width: .standard, design: .default)))
    .decorated(with: .disabledAutoresizingMask())

```

## How to make your own custom ViewDecorator?
You can extened decorators with `extension` for `ViewDecorator` struct for implementing your own design system ([learn what is design system](https://uxdesign.cc/everything-you-need-to-know-about-design-systems-54b109851969)). In example:
```swift
import DonaCore

extension DonaViewDecorator {
    static var largeTitle: DonaViewDecorator<UILabel> {
        DonaViewDecorator<UILabel> {
            $0.decorated(with: .disabledAutoresizingMask())
                .decorated(with: .font(.systemFont(ofSize: 29, weight: .bold)))
                .decorated(with: .textColor(.primary))
                .decorated(with: .numberOfLines(0))
        }
    }
}
```
