# From Idea to App Store in 30 Minutes

This guide shows you exactly how to take your app idea to the App Store using AppMaker.

## Prerequisites

1. **Apple Developer Account** ($99/year)
   - Sign up at https://developer.apple.com
   - Wait for approval (usually same day)

2. **Development Environment**
   ```bash
   # Install Xcode from Mac App Store
   # Install XcodeGen
   brew install xcodegen
   
   # Install AppMaker
   curl -fsSL https://raw.githubusercontent.com/joelklabo/appmaker/main/install.sh | bash
   source ~/.zshrc
   ```

## Step 1: Create Your App (1 minute)

```bash
# Let's build a habit tracker
appmaker HabitTracker
cd HabitTracker
```

## Step 2: Customize Your App (10 minutes)

```bash
# Open in Xcode
make dev
```

### Quick Customizations:

1. **Change the app name** in `Views/ContentView.swift`:
   ```swift
   .navigationTitle("My Habits")  // was "Items"
   ```

2. **Update the model** in `Models/Item.swift`:
   ```swift
   // Rename file to Habit.swift and update:
   @Model
   final class Habit {
       var name: String
       var streak: Int
       var lastCompleted: Date?
       var createdAt: Date
       
       init(name: String = "") {
           self.name = name
           self.streak = 0
           self.lastCompleted = nil
           self.createdAt = Date()
       }
   }
   ```

3. **Add app icon**:
   - Create a 1024x1024 PNG icon
   - Drag it into `Assets.xcassets` → `AppIcon`

4. **Customize colors**:
   - Add your brand colors to `Assets.xcassets`
   - Update the UI to use them

## Step 3: Test Your App (5 minutes)

```bash
# Run on simulator
# Press Cmd+R in Xcode

# Test on your iPhone
# 1. Connect iPhone via cable
# 2. Select your device in Xcode
# 3. Press Cmd+R
```

## Step 4: Prepare for App Store (10 minutes)

### 1. Update Info.plist
Add these keys to `Info.plist`:
```xml
<key>ITSAppUsesNonExemptEncryption</key>
<false/>
<key>CFBundleShortVersionString</key>
<string>1.0</string>
<key>CFBundleVersion</key>
<string>1</string>
```

### 2. Set Development Team
1. Open project in Xcode
2. Select project → Target → Signing & Capabilities
3. Add your Apple Developer Team
4. Let Xcode manage signing automatically

### 3. Create App Store Assets
You need:
- **App Icon**: 1024x1024 PNG (no transparency)
- **Screenshots**: 
  - iPhone 6.7" (1290 × 2796)
  - iPhone 6.1" (1179 × 2556)
  - iPad 13" (2048 × 2732)
- **App Preview** (optional): 15-30 second video

### 4. Write App Store Description
- **App Name**: HabitTracker (30 chars max)
- **Subtitle**: Build better habits daily (30 chars max)
- **Description**: Focus on what sells your app
- **Keywords**: habit,tracker,daily,routine,goals
- **Category**: Productivity or Health & Fitness

## Step 5: Archive and Upload (5 minutes)

1. **Archive the app**:
   ```bash
   # In Xcode:
   # 1. Select "Any iOS Device" as destination
   # 2. Product → Archive
   # 3. Wait for build to complete
   ```

2. **Upload to App Store Connect**:
   - In Organizer window → Distribute App
   - App Store Connect → Upload
   - Use automatic signing
   - Upload your app

## Step 6: Submit for Review (5 minutes)

1. Go to https://appstoreconnect.apple.com
2. Create new app with your bundle ID
3. Fill in all metadata
4. Upload screenshots
5. Select the build you uploaded
6. Submit for review

## Common Issues & Fixes

### "No account for team" error
- Add your Apple ID in Xcode → Settings → Accounts

### "Bundle ID already exists"
- Change in `project.yml`:
  ```yaml
  PRODUCT_BUNDLE_IDENTIFIER: com.yourname.HabitTracker
  ```

### App rejected for "minimum functionality"
- Add more features before submitting
- Ensure app provides real value
- Don't submit basic CRUD apps

## Making It App Store Ready

Transform the basic app into something valuable:

```swift
// Add these features to make it store-worthy:
// 1. Notifications for habit reminders
// 2. Statistics and charts
// 3. Different habit types (daily, weekly)
// 4. Sharing achievements
// 5. Widget for home screen
```

## Timeline

- **Day 1**: Create and customize app (30 min)
- **Day 2**: Test with friends via TestFlight
- **Day 3-5**: Polish based on feedback  
- **Day 6**: Submit to App Store
- **Day 7-14**: App Store review
- **Day 14**: Live on App Store! 🎉

## Pro Tips

1. **Start simple**: Get v1.0 approved first
2. **Use TestFlight**: Test with 100 users before launch
3. **Plan updates**: Regular updates improve rankings
4. **Monitor reviews**: Respond to user feedback
5. **Market your app**: App Store optimization matters

## What's Next?

After your first app is live:
- Add premium features with in-app purchases
- Implement CloudKit for sync
- Create a widget extension
- Build a watchOS companion app

Remember: The hardest part is starting. AppMaker gets you there in 1 minute.

```bash
appmaker YourBigIdea
# You're already closer to the App Store than 99% of people
```