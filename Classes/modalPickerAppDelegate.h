//
//  modalPickerAppDelegate.h
//  modalPicker
//
//  Created by Manuel Betancurt on 23/04/11.
//  Copyright 2011 HYPER. All rights reserved.
//

#import <UIKit/UIKit.h>
@class modalPickerViewController;

@interface modalPickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	modalPickerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet modalPickerViewController *viewController;

@end

