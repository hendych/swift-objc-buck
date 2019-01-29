# swift-objc-buck

This is a sample of mixed swift and objective c using [Buck](https://buckbuild.com/) build system.

### To Install

```bash
# Install Buck
brew tap facebook/fb
brew install buck
# Then the JDK (superset of the JRE)
brew update
brew tap caskroom/cask
brew tap caskroom/versions
brew cask install java8
# Then...
brew install ant python git watchman
```

### Build Target

To build target you can run this command

```bash
# Build app
make build app
```

![](etc/build.gif)

### Test Target

To test target you can run this command

```bash
# Test app
make test app
```

![](etc/test.gif)

# Generating an Xcode Project

To generate Xcode project, you can run this command

```bash
make project app
```

This will create `App.xcodeproj` and `SwiftObjcBuck.xcworkspace` inside `App` folder.

# Known Issues

To support bridging header in Tests, we have to import objective c header files using relative paths. You can track this issue [here](https://github.com/facebook/buck/issues/1932)

