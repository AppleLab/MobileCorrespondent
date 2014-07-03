//
//  JustDescription.h
//  MobCor
//
//  Created by Михаил on 03.07.14.
//  Copyright (c) 2014 kpfuitisios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JustDescription : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *TextDescription;
@property (weak, nonatomic) IBOutlet UILabel *AuthorDescription;
@property (weak, nonatomic) IBOutlet UIImageView *ImageDescription;
@property NSString *text;
@end
