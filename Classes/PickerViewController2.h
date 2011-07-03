//
//  PickerViewController2.h
//  modalPicker
//
//  Created by Manuel Betancurt on 24/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NumberPickedDelegate2 <NSCoding>

-(void)numberDidChangeTo2:(NSString *)newNumber2;

@end

@interface PickerViewController2 : UIViewController { 

	NSMutableArray *firstComponent, *secondComponent, *thirdComponent;
	IBOutlet UIPickerView *thePickerView;
	id delegate;
	
	
}

@property (nonatomic, retain) UIPickerView *thePickerView;
@property (nonatomic, assign) id<NumberPickedDelegate2> delegate;

-(void)didChangeSelectedNumberWithDigits:(NSString *)firstOne andSecond:(NSString *)secondOne andThird:(NSString *)thirdOne;

@end
