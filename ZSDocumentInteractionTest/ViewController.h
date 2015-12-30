//
//  ViewController.h
//  ZSDocumentInteractionTest
//
//  Created by bv-zheng on 12/29/15.
//  Copyright © 2015 Sera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIDocumentInteractionControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *activityButton;
@property (weak, nonatomic) IBOutlet UIButton *documentInteractionButton;


@end

