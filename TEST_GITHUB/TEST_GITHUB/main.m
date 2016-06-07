//
//  main.m
//  TEST_GITHUB
//
//  Created by GengMAX on 16/6/7.
//  Copyright © 2016年 GengMAX. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, GITHUB!");
        
        
        //------------------------NSString-------------------------
        NSString *str1 = @"this is string A";
        NSString *search, *replace;
        NSMutableString *mstr;
        
        NSRange range;
        
        
        //-----------
        mstr = [NSMutableString stringWithString:str1];
        NSLog(@"%@",mstr);
        
        [mstr insertString:@"mutable " atIndex:8];
        NSLog(@"%@",mstr);
        
        
        [mstr insertString:@" string B" atIndex:[mstr length]];
        NSLog(@"%@",mstr);
        
        [mstr appendString:@" by using appendString method directly!"];
        NSLog(@"%@",mstr);
        
        range = NSMakeRange(8, 17);
        [mstr deleteCharactersInRange:range];
        NSLog(@"%@",mstr);
        
        range = [mstr rangeOfString:@" directly"];
        if (range.location != NSNotFound){
            [mstr deleteCharactersInRange:range];
            NSLog(@"%@",mstr);
        }
        else
            NSLog(@"DO NOT FOUND 'directly'");
        //-----------
        NSLog(@"-----------NEXT-----------");
        //-----------

        [mstr setString:@"this is string a"];
        [mstr replaceCharactersInRange:NSMakeRange(14, 2) withString:@" b"];
        NSLog(@"%@",mstr);
        
        search = @"this";
        replace = @"that";
        
        range = [mstr rangeOfString:search];
        if (range.location != NSNotFound){
            [mstr replaceCharactersInRange:range withString:replace];
            NSLog(@"%@",mstr);
        }
        else
            NSLog(@"DO NOT FOUND '%@'",replace);
        
        search = @"i";
        replace = @"I";
        range = [mstr rangeOfString:search];
        while (range.location != NSNotFound){
            [mstr replaceCharactersInRange:range withString:replace];
            range = [mstr rangeOfString:search];
        }
        NSLog(@"%@",mstr);
        
        
        
        //----------------NSMutableArray------------------------
        
        
    }
    return 0;
}
