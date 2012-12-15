//
//  RAFlipReplaceSegue.m
//  Flickr Maps
//
//  Created by Ryan Artecona on 10/12/12.
//  Copyright (c) 2012 Ryan Artecona. All rights reserved.
//

// based on code from http://jrwren.wrenfam.com/blog/2012/02/01/storyboard-custom-segue-for-custom-pushviewcontroller-animation/

#import "RAFlipReplaceSegue.h"

@implementation RAFlipReplaceSegue

-(void) perform
{
	UIViewController *destVC = self.destinationViewController;
	UIViewController *sourceVC = self.sourceViewController;
	[destVC viewWillAppear:YES];
	
	destVC.view.frame = sourceVC.view.frame;
	
	[UIView transitionFromView:sourceVC.view
						toView:destVC.view
					  duration:0.7
					   options:UIViewAnimationOptionTransitionFlipFromLeft
					completion:^(BOOL finished)
					{
						[destVC viewDidAppear:YES];
						
						UINavigationController *nav = sourceVC.navigationController;
						// push the new destVC
						[nav pushViewController:destVC animated:NO];
						// manually pop the sourceVC
						NSMutableArray *newNavVCs = [nav.viewControllers mutableCopy];
						[newNavVCs removeObject:sourceVC];
						nav.viewControllers = newNavVCs;
					}
	 ];
}

@end
