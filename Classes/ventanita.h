//
//  ventanita.h
//  modalPicker
//
//  Created by Manuel Betancurt on 23/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PickerViewController.h" //lo pongo aqui o en la m!
#import "PickerViewController2.h"

@interface ventanita : UIViewController <NumberPickedDelegate, NumberPickedDelegate2>{

	UIPopoverController *popOverControllerWithPicker;
	PickerViewController *pickerViewController;
	
	UIPopoverController *popOverControllerWithPicker2;
	PickerViewController2 *pickerViewController2;
	
	IBOutlet UITextField *txt;
	IBOutlet UITextField *txt2;
}

@property (nonatomic, retain) PickerViewController *pickerViewController;
@property (nonatomic, retain) PickerViewController2 *pickerViewController2;
@property (nonatomic, retain) UITextField *txt;
@property (nonatomic, retain) UITextField *txt2;

-(IBAction) quitala:(id)sender;
-(IBAction) displayPickerPopover;
-(IBAction) displayPickerPopover2;

@end
