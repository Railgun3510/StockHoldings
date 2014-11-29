//
//  main.m
//  StockHoldings
//
//  Created by Cheuk Him Ho on 29/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FHPProfolio.h"
#import "FHPForeignStockHolding.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		FHPProfolio *collection = [[FHPProfolio alloc]init];
		
		FHPStockHolding *xyz = [[FHPStockHolding alloc]init];
		xyz.purchasePrice = 2.30;
		xyz.currentPrice = 4.50;
		xyz.numberOfShares = 40;
		xyz.symbol = @"XYZ";
		[collection addHoldings:xyz];
		
		FHPStockHolding *abc = [[FHPStockHolding alloc]init];
		abc.purchasePrice = 2.30;
		abc.currentPrice = 4.50;
		abc.numberOfShares = 40;
		abc.symbol = @"ABC";
		[collection addHoldings:abc];
		
		FHPForeignStockHolding *lmn = [[FHPForeignStockHolding alloc]init];
		lmn.purchasePrice = 2.30;
		lmn.currentPrice = 4.50;
		lmn.numberOfShares = 40;
		lmn.conversionRate = 0.94;
		lmn.symbol = @"LMN";
		[collection addHoldings:lmn];
		
		// fast enumeration syntax "for (classType variable in array/expression)
		for (FHPForeignStockHolding *i in collection.holdings) {
			NSLog(@"Stock \"%@\", current value $%.2f", [i symbol],[i valueInDollars]);
		}
		
		NSLog(@"Total Value is %.2f", collection.totalValue);
	}
    return 0;
}
