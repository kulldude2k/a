//
//  simpleGameViewController.h
//  simpleGame
//
//  Created by Nextstep on 15/05/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface simpleGameViewController : UIViewController {
	IBOutlet UIButton *startButton;
	NSTimer *randomMain;
	CGPoint pos;
	//simpleGameViewController checkCollision;
	IBOutlet UIImageView *player;
	IBOutlet UIImageView *enemy;
}
-(IBAction)start;

@end

