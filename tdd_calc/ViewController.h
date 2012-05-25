//
//  ViewController.h
//  tdd_calc
//
//  Created by Alex Denisov on 22.05.12.
//  Copyright (c) 2012 CoreInvader. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextField *leftTextField;
@property (retain, nonatomic) IBOutlet UITextField *rightTextField;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *subtractButton;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *addButton;
- (IBAction)addButtonTapped:(id)sender;
- (IBAction)subtractButtonTapped:(id)sender;

- (void)showResult:(NSInteger)result;

@end
