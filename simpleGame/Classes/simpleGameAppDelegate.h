//
//  simpleGameAppDelegate.h
//  simpleGame
//
//  Created by Nextstep on 15/05/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class simpleGameViewController;

@interface simpleGameAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    simpleGameViewController *viewController,*checkCollision;
	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet simpleGameViewController *viewController;

@end

