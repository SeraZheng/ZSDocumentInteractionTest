# ZSDocumentInteractionTest
Test to preview and share `Steve Jobs by waiter lsaacson` to friends within iOS apps

#Using UIDocumentInteractionController
###1. Preview 

```
- (BOOL)presentPreviewAnimated:(BOOL)animated;

```

![Preview](https://github.com/SeraZheng/ZSDocumentInteractionTest/blob/master/ScreenShots/Screen%20Shot%202015-12-30%20at%2019.42.49.png)

###2. Third-party apps

```
- (BOOL)presentOpenInMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated;
```

![Third-party apps](https://github.com/SeraZheng/ZSDocumentInteractionTest/blob/master/ScreenShots/Screen%20Shot%202015-12-30%20at%2018.42.30.png)

###3. Third-party apps as well as actions

```
- (BOOL)presentOptionsMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated;
```

![Third-party apps as well as actions](https://github.com/SeraZheng/ZSDocumentInteractionTest/blob/master/ScreenShots/Screen%20Shot%202015-12-30%20at%2019.33.52.png)

#Using UIActivityViewController
###1. Display UIActivityViewController with AirDrop hidden
![Display UIActivityViewController with AirDrop hidden ](https://github.com/SeraZheng/ZSDocumentInteractionTest/blob/master/ScreenShots/Screen%20Shot%202016-01-04%20at%2014.12.32.png)

###2. Display custom UIActivity
![ZS Custom](https://github.com/SeraZheng/ZSDocumentInteractionTest/blob/master/ScreenShots/Simulator%20Screen%20Shot%20Jan%204%2C%202016%2C%2017.38.15.png)
