    //
//  modalPickerViewController.m
//  modalPicker
//
//  Created by Manuel Betancurt on 23/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import "modalPickerViewController.h"
#import "ventanita.h"

@implementation modalPickerViewController

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
    [super viewDidLoad];
	array = [[NSMutableArray alloc] initWithObjects:@"uno",@"dos",@"tres", @"cuatre", nil];

}


-(IBAction) ventanilla:(id)sender{
	ventanita *modal =[[ventanita alloc] initWithNibName:nil bundle:nil];
	modal.modalPresentationStyle = UIModalPresentationFormSheet;
	[self presentModalViewController:modal animated:YES];
}



#pragma mark tabla
// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [array count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	cell.textLabel.text = [array objectAtIndex:indexPath.row]; 
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
	if ([[array objectAtIndex:indexPath.row] isEqual:@"uno"] )
	{
		NSLog(@"uno");
		ventanita *modal =[[ventanita alloc] initWithNibName:nil bundle:nil];
		modal.modalPresentationStyle = UIModalPresentationFormSheet;
		[self presentModalViewController:modal animated:YES];
		
	}
	
	else if ([[array objectAtIndex:indexPath.row] isEqual:@"dos"] )
	{
		NSLog(@"dos");
	}
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
		interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
		return YES;
	} else return NO;
	
	
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
	[array release];
    [super dealloc];
}


@end
