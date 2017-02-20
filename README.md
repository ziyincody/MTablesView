# MTablesView

[![CI Status](http://img.shields.io/travis/ziyin1996@gmail.com/MTablesView.svg?style=flat)](https://travis-ci.org/ziyin1996@gmail.com/MTablesView)
[![Version](https://img.shields.io/cocoapods/v/MTablesView.svg?style=flat)](http://cocoapods.org/pods/MTablesView)
[![License](https://img.shields.io/cocoapods/l/MTablesView.svg?style=flat)](http://cocoapods.org/pods/MTablesView)
[![Platform](https://img.shields.io/cocoapods/p/MTablesView.svg?style=flat)](http://cocoapods.org/pods/MTablesView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Need project > iOS 9.0 for NSLayoutAnchor to work

## Installation

MTablesView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MTablesView"
```

## Implementation

```Swift
    var sectionTitles = ["ABC", "BCD", "CDE"]

    var mainData = [["ABC","BCD","CDE"],["ABC","BCD","CDE"]]
    var detailedData = [[["ABC","ABC"],["BCD","BCD"],["CDE","CDE"]],[["ABC","ABC"],["BCD","BCD"],["CDE","CDE"]]]

    lazy var mainView:MTablesView = {
    let mTable = MTablesView(viewTitle: "Hi", sectionTitles: self.sectionTitles, mainData: self.mainData, detailedData: self.detailedData)
        mTable.delegate = self
        mTable.selectingOption = true
        mTable.segueDirection = .top
        return mTable
    }()
```

## ScreenShots


## Author

ziyinw1011@gmail.com

## License

MTablesView is available under the MIT license. See the LICENSE file for more info.
