//
//  ViewController.m
//  ZSDocumentInteractionTest
//
//  Created by bv-zheng on 12/29/15.
//  Copyright © 2015 Sera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIDocumentInteractionController *documentController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark IBAction method

/** 'NSInternalInconsistencyException', reason: 'UIDocumentInteractionController has gone away prematurely!'

 - (IBAction)presentPDFDocumentInteraction:(id)sender {
 
 UIDocumentInteractionController *documentController = [UIDocumentInteractionController interactionControllerWithURL:[[NSBundle mainBundle] URLForResource:@"Steve" withExtension:@"pdf"]];
 [documentController presentOpenInMenuFromRect:self.view.bounds inView:self.view animated:YES];
 }

 */


- (IBAction)presentPDFDocumentInteraction:(id)sender {
    
    _documentController = [UIDocumentInteractionController interactionControllerWithURL:[[NSBundle mainBundle] URLForResource:@"Steve" withExtension:@"pdf"]];
    _documentController.delegate = self;
    
//    [self presentOpenInMenu];
    
    [self presentOptionsMenu];
    
//    [self presentPreview];
}

#pragma mark -
#pragma mark private

- (void)presentPreview
{
    // display PDF contents by Quick Look framework
    [self.documentController presentPreviewAnimated:YES];
}

- (void)presentOpenInMenu
{
    // display third-party apps
    [self.documentController presentOpenInMenuFromRect:self.view.bounds inView:self.view animated:YES];
}

- (void)presentOptionsMenu
{
    // display third-party apps as well as actions, such as Copy, Print, Save Image, Quick Look
    [_documentController presentOptionsMenuFromRect:self.view.bounds inView:self.view animated:YES];
}

#pragma mark -
#pragma mark UIDocumentInteractionControllerDelegate

- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller
{
    return self;
}

@end
