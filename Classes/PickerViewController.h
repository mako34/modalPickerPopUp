//
//  PickerViewController.h
//  modalPicker
//
//  Created by Manuel Betancurt on 23/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NumberPickedDelegate <NSCoding>
			
-(void)numberDidChangeTo:(NSString *)newNumber;

@end


@interface PickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
	NSMutableArray *firstComponent, *secondComponent, *thirdComponent;
	IBOutlet UIPickerView *thePickerView;
	id delegate;

}

@property (nonatomic, retain) UIPickerView *thePickerView;
@property (nonatomic, assign) id<NumberPickedDelegate> delegate;

-(void)didChangeSelectedNumberWithDigits:(NSString *)firstOne andSecond:(NSString *)secondOne andThird:(NSString *)thirdOne;

@end
