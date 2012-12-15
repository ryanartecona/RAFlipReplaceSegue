RAFlipReplaceSegue
==================

A simple way to alternate between UIViewControllers in a UINavigationController stack, via a storyboard-compatible custom segue. (Also compatible with view controllers outside a navigation controller stack)

### Usage

Usage in code is the same as for any other segue. To use with storyboards, 

 1. Drag a new view controller into the storyboard, if necessary.
 2. Control-drag to wire up a segue as usual.
 3. In the inspector panel for the segue, choose `Custom` as the segue's type, and type `RAFlipReplaceSegue` as the segue's custom class. 

Done! 

### Customization

To use a different built-in transition style while keeping the segue functionality, in `RAFlipReplaceSegue.m` change `UIViewAnimationOptionTransitionFlipFromLeft` to one of the following ([from the UIView reference](http://developer.apple.com/library/ios/#documentation/uikit/reference/uiview_class/uiview/uiview.html)):
  
  - `UIViewAnimationOptionTransitionNone`
  - `UIViewAnimationOptionTransitionFlipFromLeft`  
  - `UIViewAnimationOptionTransitionFlipFromRight` 
  - `UIViewAnimationOptionTransitionCurlUp`        
  - `UIViewAnimationOptionTransitionCurlDown`      
  - `UIViewAnimationOptionTransitionCrossDissolve` 
  - `UIViewAnimationOptionTransitionFlipFromTop`   
  - `UIViewAnimationOptionTransitionFlipFromBottom`

If you need something more different, read the `.m` implementation—it's only ~30 lines! 

If this helps at all, or is not quite what you need, drop me a tweet [@ryanartecona](http://twitter.com/ryanartecona).