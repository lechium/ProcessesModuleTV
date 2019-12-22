#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <TVSystemMenuUI/TVSMButtonViewController.h>
#include "CCPMProcessesModule.h"

@implementation CCPMProcessesModule

+(long long)buttonStyle {
    return 1;
}

-(id)contentViewController {
    
    TVSMButtonViewController *buttonController = (TVSMButtonViewController*)[super contentViewController];
    NSString *packageFile = [[self bundle] pathForResource:@"Package" ofType:@"png"];
    [buttonController setImage:[[UIImage imageWithContentsOfFile:packageFile] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];

    return buttonController;
}

-(void)handleAction {

    NSLog(@"handleAction");
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"nitotv://view/settings.processes"] options:@{} completionHandler:nil];
}

-(BOOL)dismissAfterAction {
    return TRUE;
}

@end
