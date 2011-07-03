//
//  modalPickerViewController.h
//  modalPicker
//
//  Created by Manuel Betancurt on 23/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface modalPickerViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>{

	NSMutableArray *array;
}

-(IBAction) ventanilla:(id)sender;

@end
