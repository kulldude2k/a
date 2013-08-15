//
//  simpleGameViewController.m
//  simpleGame
//
//  Created by Nextstep on 15/05/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "simpleGameViewController.h"

@implementation simpleGameViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	pos=CGPointMake(10.0, 20.0);
	}
-(IBAction)start
{
    pos=CGPointMake(10.0, 20.0);
	[startButton setHidden:YES];
	randomMain=[NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
	
}
-(void)onTimer
{
	[self checkCollision];

	enemy.center=CGPointMake(enemy.center.x+pos.x, enemy.center.y+pos.y);
	if (enemy.center.x>320||enemy.center.x<0) {
		pos.x=-pos.x;
	}

	if (enemy.center.y>480||enemy.center.y<0) {
		pos.y=-pos.y;
	}
}
-(void)checkCollision
{
	if (CGRectIntersectsRect(player.frame, enemy.frame)) {
		[randomMain invalidate];
		[startButton setHidden:NO];
		pos=CGPointZero;
		CGRect frame=player.frame;
		frame.origin.x=137.0f;
		frame.origin.y=326.0;
		[player setFrame:frame];
		
		CGRect frame2=enemy.frame;
		frame2.origin.x=137.0f;
		frame2.origin.y=20.0;
		[enemy setFrame:frame2];
		UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"you lost" message:[NSString stringWithFormat:@"you were hit try again"] delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
		[alert show];
		[alert release];
		
		
	}
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	
	
	UITouch *mytouch=[[event allTouches]anyObject];
	player.center=[mytouch locationInView:self.view];
	
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
