MacForge Plugins
=================
Package list repository for [MacForge](https://github.com/w0lfschild/MacForge), the MacOS Plugin Manager.

To contribute your own package:

- Fork this project
- Add your compiled and zipped plugin to the bundles folder
- Edit [packages_v2.plist](https://github.com/w0lfschild/macplugins/blob/master/packages_v2.plist) to include your submission
- Submit a pull request

Every package uses this format:

```
Dict:
    key: bundleID
        Dict:
            key: apps
            key: author
            key: compat
            key: contact
            key: date
            key: description
            key: donate
            key: filename (required)
            key: homepage
            key: name (required)
            key: package (required)
            key: price
            key: size
            key: target
            key-array: targets
                Dict:
                    key: BundleIdentifier
            key: version (required)
            key: webpage
```

Example:


```plist
<key>org.w0lf.winBuddy</key>
	<dict>
		<key>apps</key>
		<string>System</string>
		<key>author</key>
		<string>Wolfgang Baird</string>
		<key>compat</key>
		<string>macOS 10.9+</string>
		<key>contact</key>
		<string>support@macenhance.com</string>
		<key>date</key>
		<string>Dec 20, 2016</string>
		<key>description</key>
		<string>Removes window shadow, black border and more</string>
		<key>descriptionShort</key>
		<string></string>
		<key>donate</key>
		<string>https://www.paypal.me/w0lfspapa</string>
		<key>filename</key>
		<string>/bundles/winBuddy_0.2.7.zip</string>
		<key>homepage</key>
		<string></string>
		<key>name</key>
		<string>winBuddy</string>
		<key>package</key>
		<string>org.w0lf.winBuddy</string>
		<key>price</key>
		<string>Free</string>
		<key>size</key>
		<string>23087</string>
		<key>target</key>
		<string>null</string>
		<key>targets</key>
		<array>
			<dict>
				<key>BundleIdentifier</key>
				<string>*</string>
			</dict>
		</array>
		<key>version</key>
		<string>0.2.7</string>
		<key>webpage</key>
		<string></string>
	</dict>
```
