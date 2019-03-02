//
//  main.m
//  Hangman
//
//  Created by Denis Nefedov on 02/03/2019.
//  Copyright © 2019 X. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 Function prints the current state of the game.

 @param word the current word to be guessed
 @param usedLetters the array of letters that have already been used
 */
void printWord(NSString *word, NSArray<NSString*> *usedLetters) {
    //TODO
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *word = @"RHYTHM";
        NSMutableArray <NSString*> *usedLetters = [NSMutableArray arrayWithCapacity:8];
        
        printf("Welcome to the game!\n");
        printf("Press a letter to guess, or Ctrl+C to quit.\n");
        printWord(word, usedLetters);
        
        /// game loop
        while(1) {
            char userInput[256];
            scanf("%256s",userInput);
            
            NSString *input = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
            
            if ([input length] != 1) {
                printf("Please type exectly only one char!");
            } else {
                //this letter is new
                unichar letter = [input characterAtIndex:0];
                NSString *letterString = [[NSString stringWithFormat:@"%C", letter]uppercaseString];
                
                if ([usedLetters containsObject:letterString]) {
                    printf("You used this letter allready!\n");
                } else {
                    [usedLetters addObject:letterString];
                }
            }
            
            printWord(word, usedLetters);
        }
    }
    return 0;
}
