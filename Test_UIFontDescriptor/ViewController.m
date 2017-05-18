//
//  ViewController.m
//  Test_UIFontDescriptor
//
//  Created by tomfriwel on 24/11/2016.
//  Copyright © 2016 tomfriwel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    Font trait modification
    UIFontDescriptor *fontDescriptor =
    [UIFontDescriptor preferredFontDescriptorWithTextStyle: UIFontTextStyleBody];
    UIFontDescriptor *boldFontDescriptor =
    [fontDescriptor fontDescriptorWithSymbolicTraits: UIFontDescriptorTraitBold];
    UIFont *boldFont = [UIFont fontWithDescriptor: boldFontDescriptor size: 0.0];
}

- (IBAction)logAction:(id)sender {
    if ([self.textField hasText]) {
        // Font family name matching
        UIFontDescriptor *fontDescriptor = [UIFontDescriptor fontDescriptorWithFontAttributes:@{UIFontDescriptorFamilyAttribute:self.textField.text}];
        
        NSArray *matches = [fontDescriptor matchingFontDescriptorsWithMandatoryKeys: nil];
        
//        NSString *fontName = @"Arialmt";
        NSLog(@"matches:%@", matches);
        
        fontDescriptor = [fontDescriptor fontDescriptorWithFamily:@"helvetica"];
        matches = [fontDescriptor matchingFontDescriptorsWithMandatoryKeys: nil];
        NSLog(@"matches:%@", matches);
        
//        for (UIFontDescriptor *fd in matches) {
//            NSString *name = fd.postscriptName;
//            NSLog(@"fontAttributes:%@", fd.fontAttributes);
//            NSLog(@"hehe:%ld", (long)[name compare:fontName options:NSCaseInsensitiveSearch]);
//        }
    }
}


@end
