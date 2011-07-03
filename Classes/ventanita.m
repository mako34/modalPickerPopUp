    //
//  ventanita.m
//  modalPicker
//
//  Created by Manuel Betancurt on 23/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import "ventanita.h"


@implementation ventanita

@synthesize pickerViewController, txt, txt2;
@synthesize pickerViewController2;

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	pickerViewController = [[PickerViewController alloc] init];
	pickerViewController.delegate = self;
	popOverControllerWithPicker = [[UIPopoverController alloc] initWithContentViewController:pickerViewController];
	//popOverController.popoverContenSize = CGSizeMake(300, 216);
	
	pickerViewController2 = [[PickerViewController2 alloc] init];
	pickerViewController2.delegate = self;
	popOverControllerWithPicker2 = [[UIPopoverController alloc] initWithContentViewController:pickerViewController2];
	
    [super viewDidLoad];
}


-(IBAction) displayPickerPopover {
	[txt resignFirstResponder];
	//[txt2 resignFirstResponder];
	CGSize sizeofPopover =CGSizeMake(300, 110);
	CGPoint positionOfPopover = CGPointMake(332, 315);//132 290
	[popOverControllerWithPicker presentPopoverFromRect:CGRectMake(positionOfPopover.x, positionOfPopover.y, sizeofPopover.width, sizeofPopover.height) 
												 inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES]; //cambiar popover direction pa ver que pasa!
}

-(IBAction) displayPickerPopover2 {
	[txt2 resignFirstResponder];
	//[txt2 resignFirstResponder];
	CGSize sizeofPopover =CGSizeMake(300, 110);
	CGPoint positionOfPopover = CGPointMake(332, 315);//132 290
	[popOverControllerWithPicker2 presentPopoverFromRect:CGRectMake(positionOfPopover.x, positionOfPopover.y, sizeofPopover.width, sizeofPopover.height) 
												 inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES]; //cambiar popover direction pa ver que pasa!
}

-(IBAction) quitala:(id)sender {
	UIAlertView *alert = [[[UIAlertView alloc] initWithTitle:@"Save data" message:@"all data ok?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil] autorelease];
    // optional - add more buttons:
    [alert addButtonWithTitle:@"Yes"];
    [alert show];
	
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        // do stuff
		[self dismissModalViewControllerAnimated:YES];
    }
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
		interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
		return YES;
	} else return NO;
	
}


-(void)numberDidChangeTo:(NSString *)newNumber {
	txt.text = newNumber;
}

-(void)didChangeSelection:(NSString *)newValue {
	txt.text = newValue;
}

-(void)numberDidChangeTo2:(NSString *)newNumber {
	txt2.text = newNumber;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
