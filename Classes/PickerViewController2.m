    //
//  PickerViewController2.m
//  modalPicker
//
//  Created by Manuel Betancurt on 24/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import "PickerViewController2.h"
#define componentCount 3
#define firstDigit 0
#define secondDigit 1
#define thirdDigit 2

@implementation PickerViewController2

@synthesize thePickerView, delegate;

//pickerview
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return componentCount;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	if (component == firstDigit) {
		return [firstComponent count];
	} else if (component == secondDigit) {
		return [secondComponent count];
	} else {
		return [thirdComponent count];
	}
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
	if (component == firstDigit) {
		return [firstComponent objectAtIndex:row];
	}else if (component == secondDigit) {
		return [secondComponent objectAtIndex:row];
	}else {
		return [thirdComponent objectAtIndex:row];
	}
	
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
	[self didChangeSelectedNumberWithDigits:
	 [firstComponent objectAtIndex:[thePickerView selectedRowInComponent:firstDigit]] 
								  andSecond:[secondComponent objectAtIndex:[thePickerView selectedRowInComponent:secondDigit]] 
								   andThird:[thirdComponent objectAtIndex:[thePickerView selectedRowInComponent:thirdDigit]]
	 ];
}

-(void)didChangeSelectedNumberWithDigits:(NSString *)firstOne andSecond:(NSString *)secondOne andThird:(NSString *)thirdOne {
	[self.delegate numberDidChangeTo2:[NSString stringWithFormat:@"%@%@%@", firstOne, secondOne, thirdOne]];
}
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
    firstComponent = [[NSMutableArray alloc] initWithObjects:@"0", @"1", @"2", nil];
	secondComponent = [[NSMutableArray alloc] initWithObjects:@"A", @"B", @"C", nil];
	thirdComponent = [[NSMutableArray alloc] initWithObjects:@"3", @"4", nil];
	[super viewDidLoad];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
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
