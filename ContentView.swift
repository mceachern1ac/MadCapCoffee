import SwiftUI
import Playgrounds

struct ContentView: View {
    
    @Environment(Cart.self) private var cart
    let coffees: [Coffee] =
    
    [Coffee(name: "VANILLA LATTE", assetName: "latte", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "LATTE", assetName: "latte", picture: "latteIced", description: "LATTE WITH DOUBLE HOUSE ESPRESSO AND STEAMED WHOLE MILK", price: 6.25, isBeverage: .isBeverage),
     
     Coffee(name: "HARVEST MOON", assetName: "coffee", picture: "coffeePicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "AMERICANO", assetName: "latte", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "REKO", assetName: "glass", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "HOPPER'S POND", assetName: "specialdrink", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage)]
    
    let filter: [Coffee] =
    [Coffee(name: "DAY DREAM", assetName: "glass", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "REKO", assetName: "coffee", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "ALIRIO UÑOZ ORTEGA", assetName: "coffee", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "PLACEBO DECAF", assetName: "coffee", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 5.00, isBeverage: .isBeverage)]
    
    let espresso: [Coffee] =
    [Coffee(name: "ELEFANTE", assetName: "espresso", picture: "espressoPicture", description: "DOUBLE SHOT OF ESPRESSO", price: 0.50, isBeverage: .isBeverage),
        
     Coffee(name: "ESPRESSO", assetName: "espresso", picture: "espressoPicture", description: "DOUBLE SHOT OF ESPRESSO", price: 4.25, isBeverage: .isBeverage),
     
     Coffee(name: "MACCHIATO", assetName: "macchiato", picture: "macchiatoPicture", description: "2OZ DRINK WITH DOUBLE HOUSE ESPRESSO AND STEAMED WHOLE MILK", price: 5.00, isBeverage: .isBeverage),
        
     Coffee(name: "CORTADO", assetName: "glass", picture: "cortadoPicture", description: "DOUBLE HOUSE ESPRESSO AND STEAMED WHOLE MILK", price: 5.25, isBeverage: .isBeverage),
     
     Coffee(name: "CAPPUCCINO", assetName: "latte", picture: "cappuccinoPicture", description: "6OZ DRINK WITH DOUBLE HOUSE ESPRESSO AND STEAMED WHOLE MILK", price: 5.00, isBeverage: .isBeverage),
        
     Coffee(name: "AMERICANO", assetName: "coffee", picture: "americanoPicture", description: "DOUBLE HOUSE ESPRESSO WITH HOT WATER", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "LATTE", assetName: "latte", picture: "latteIced", description: "LATTE WITH DOUBLE HOUSE ESPRESSO AND STEAMED WHOLE MILK", price: 6.25, isBeverage: .isBeverage),
     
     Coffee(name: "MIEL", assetName: "latte", picture: "lattepicture", description: "LATTE WITH HONEY AND CINNAMON", price: 7.00, isBeverage: .isBeverage),
     
     Coffee(name: "MOCHA", assetName: "latte", picture: "mochaPicture", description: "LATTE WITH DARK CHOCOLATE GANACHE", price: 7.00, isBeverage: .isBeverage),
    
     Coffee(name: "VANILLA LATTE", assetName: "latte", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 7.00, isBeverage: .isBeverage),
     
    ]
    
    let brewedCoffee: [Coffee] =
    
    [
        Coffee(name: "HARVEST MOON", assetName: "coffee", picture: "coffeePicture", description: "SEASONAL BLEND WITH COCOA NIBS, RED APPLE AND NOUGAT", price: 6.00, isBeverage: .isBeverage),
        
        Coffee(name: "REKO", assetName: "glass", picture: "coffeePicture", description: "SEASONAL BLEND WITH COCOA NIBS", price: 6.50, isBeverage: .isBeverage),
        
        Coffee(name: "RIANJAGI", assetName: "coffee", picture: "coffeePicture", description: "KENYA BLEND WITH POMELO, STAR FRUIT AND GOLDEN RAISIN", price: 6.75, isBeverage: .isBeverage),
        
        Coffee(name: "FRACTION", assetName: "glass", picture: "coffeePicture", description: "KENYA BLEND WITH POMELO, STAR FRUIT AND GOLDEN RAISIN", price: 6.75, isBeverage: .isBeverage),
        
        Coffee(name: "PLACEBO (DECAF)", assetName: "glass", picture: "coffeePicture", description: "COLOMBIA BLEND WITH ORANGE ZEST, RAISIN AND MOLASSES", price: 6.75, isBeverage: .isBeverage),
    ]
    
    let featureditems: [Coffee] =
    
    [Coffee(name: "VANILLA LATTE", assetName: "latte", picture: "lattepicture", description: "CAFE LATTE WITH HOUSE MADE VANILLA SYRUP", price: 7.00, isBeverage: .isBeverage),
     
     Coffee(name: "AMERICANO", assetName: "coffee", picture: "americanoPicture", description: "DOUBLE HOUSE ESPRESSO WITH HOT WATER", price: 5.00, isBeverage: .isBeverage),
     
     Coffee(name: "ESPRESSO", assetName: "espresso", picture: "espressoPicture", description: "DOUBLE SHOT OF ESPRESSO", price: 5.00, isBeverage: .isBeverage),
     ]
    
    let tea: [Coffee] =
    [
        Coffee(name: "MATCHA LATTE", assetName: "latte", picture: "matchaLattePicture", description: "PREMIUM MATCHA FROM KETTL PREPARED AS A LATTE WITH WHOLE MILK", price: 7.00, isBeverage: .isBeverage),
        
        Coffee(name: "MATCHA TEA", assetName: "tea", picture: "matchaPicture", description: "PREMIUM MATCHA FROM KETTL PREPARED AS TEA", price: 6.00, isBeverage: .isBeverage),
        
        Coffee(name: "SHAN LIN XI WINTER SPROUT", assetName: "tea", picture: "teaPicture", description: "SWEET, CARAMELIZED FLAVORED LIGHT OOLONG", price: 6.50, isBeverage: .isBeverage),
        
        Coffee(name: "MEADOW", assetName: "tea", picture: "teaPicture", description: "BOTANICAL WITH FLAVORS OF PANDAN, MINT AND GREEN TEA", price: 4.50, isBeverage: .isBeverage),
        
        Coffee(name: "MARSHMALLOW", assetName: "tea", picture: "teaPicture", description: "BOTANICAL WITH FLAVORS OF CHAMOMILE, ORANGE, WHITE TEA", price: 4.50, isBeverage: .isBeverage),
        
        Coffee(name: "CASCARA", assetName: "tea", picture: "teaPicture", description: "COFFEE CHERRY WITH FLAVORS OF HIBISCUS, PEACH, VANILLA", price: 4.50, isBeverage: .isBeverage),
        
        Coffee(name: "CAI CHA", assetName: "tea", picture: "teaPicture", description: "GREEN WITH GLAVORS OF EDAMAME, ENGLISH PEA AND LOTUS ROOT", price: 5.00, isBeverage: .isBeverage),
        
        Coffee(name: "A DIFFERENT EIGHTEEN", assetName: "tea", picture: "teaPicture", description: "RED TEA WITH FLACORS OF MANUKA HONEY, HIBISCUS AND BLACK CURRANT", price: 6.00, isBeverage: .isBeverage),
        ]
    
    let ontap: [Coffee] =
    [
        Coffee(name: "NITRO COLD COFFEE", assetName: "nitro", picture: "nitroPicture", description: "BLENDED WITH NOTES OF NOUGAT, CHOCOLATE AND RAISIN", price: 5.50, isBeverage: .isBeverage),
    ]
    
    let seasonal: [Coffee] =
    [
        Coffee(name: "KETTLE ON THE COB - LATTE", assetName: "glass", picture: "kettlePicture", description: "HOUSE MADE SWEET CORN SYRUP, ESPRESSO AND SWEET CORN FOAM", price: 9.00, isBeverage: .isBeverage),
        
        Coffee(name: "KETTLE ON THE COB - MATCHA", assetName: "glass", picture: "kettleMatchaPicture", description: "HOUSE MADE SWEET CORN SYRUP, MATCHA AND SWEET CORN FOAM", price: 10.00, isBeverage: .isBeverage),
        
        Coffee(name: "THE S'MORELETTE", assetName: "latte", picture: "smorlettePicture", description: "CHOCOLATE GRAHAM CRACKER SYRUP WITH ESPRESSO, MILK, VEGAN MARSHMALLOW FOAM", price: 9.00, isBeverage: .isBeverage),
        
        Coffee(name: "THE NIGHTSHADE", assetName: "specialdrink", picture: "nightshadePicture", description: "KENYAN INSPIRED WITH FLAVORS OF BLACKBERRY, LEMON AND TOMATO", price: 7.00, isBeverage: .isBeverage),
        
    ]
    
    let baggedCoffee : [Coffee] =
    
    [
        Coffee(name: "BOLT (RETAIL)", assetName: "boltPicture", picture: "boltPicture", description: "HOUSE BLEND - DEEP, CHOCOLATE, SYRUPY", price: 18.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "EUREKA (RETAIL)", assetName: "eurekaPicture", picture: "eurekaPicture", description: "HOUSE ESPRESSO BLEND WITH FLAVORS OF CHOCOLATE, ORANGE ZEST, AND BLACK CHERRY", price: 18.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "DAY DREAM (RETAIL)", assetName: "daydreamPicture", picture: "daydreamPicture", description: "SIGNATURE BLEND WITH FLAVORS OF FLORAL, RASPBERRY, AND CITRUS", price: 21.50, isBeverage: .isNotBeverage),
        
        Coffee(name: "HARVEST MOON (RETAIL)", assetName: "harvestMoonPicture", picture: "harvestMoonPicture", description: "FALL BLEND WITH FLAVORS OF FIG, TOFFEE AND CLOVE", price: 23.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "PLACEBO - DECAF (RETAIL)", assetName: "placeboPicture", picture: "placeboPicture", description: "DECAF WITH NOTES OF CREAMY, SWEET AND DEEP FLAVORS", price: 21.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "RIANJAGI (RETAIL)", assetName: "rianjagiPicture", picture: "rianjagiPicture", description: "KENYA INSPIRED WITH FLAVORS OF POMELO, PEACH AND HONEYCOMB", price: 27.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "ANAYIBE ORTIZ (RETAIL)", assetName: "anayibePicture", picture: "anayibePicture", description: "COLUMBIA BLEND WITH FLAVORS OF PRICKLY PEAR, LAVENDAR AND LYCHEE", price: 34.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "NELSON MORENO (RETAIL)", assetName: "nelsonPicture", picture: "nelsonPicture", description: "HONDURAS BLEND WITH HONEYDEW, LYCHEE AND HIBISCUS", price: 23.50, isBeverage: .isNotBeverage),
        
        Coffee(name: "IRVIN IZAGUIRRE (RETAIL)", assetName: "irvinPicture", picture: "irvinPicture", description: "HONDURAS BLEND WITH FLAVORS OF CHERRY CANDY, HONEYSUCKLE, AND STRAWBERRY JAM", price: 29.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "ELEFANTE (RETAIL)", assetName: "elefantePicture", picture: "elefantePicture", description: "EL SALVADOR BLEND WITH NOTES OF RED GRAPE, PEACH AND HONEY", price: 32.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "ELEFANTE EXTENDED FERMENTATION (RETAIL)", assetName: "elefanteExtendedPicture", picture: "elefanteExtendedPicture", description: "EL SALVADOR BLEND WITH NOTES OF MANGO, KUMQUAT AND COTTON CANDY", price: 32.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "MAURICIO BRAVO (RETAIL)", assetName: "mauricioPicture", picture: "mauricioPicture", description: "GUATEMALA BLEND WITH NOTES OF WATERMELON, ROSE AND RASPBERRY", price: 32.00, isBeverage: .isNotBeverage),
        
        Coffee(name: "CASCARA (RETAIL)", assetName: "cascaraPicture", picture: "cascaraPicture", description: "COFFEE CHERRY BLEND TEA", price: 15.00, isBeverage: .isNotBeverage),
    ]
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 25) { // Keeps spacing uniform between sections
                        
                        VStack {
                            Image("madcapLogo")
                                .resizable()        // 1. Allows the image to be resized
                                .scaledToFit()       // 2. Maintains aspect ratio without stretching
                                .frame(height: 50)   // 3. Adjust this height to match your design
                            VStack {
                                Text("ORDER MENU")
                                    .foregroundStyle(.white)
                                    .font(.custom("Blender Bold Bold", size: 35))
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(
                                        Rectangle()
                                            .frame(maxWidth: .infinity)
                                            .ignoresSafeArea(edges: .horizontal)
                                    )
                                
                                
                                Image("banner")

                                    .resizable()
                                    .scaledToFit()
                                
                                Text("Your store: 1413 Farmer St, Detroit, MI 48226")
                                    .frame(height: 30)                     .font(.custom("Blender Bold Bold", size: 20))
                                    .multilineTextAlignment(.center)
                                     
                                
                            }.background(
                                RoundedRectangle(cornerRadius: 0)
                                    .fill(Color.black)
                                    .opacity(0.1)
                            )
                            .frame(maxWidth: .infinity)
                            
                            
                            
                            // most ordered
                            Text("FEATURED ITEMS             >")
                                .foregroundStyle(.black)
                                .font(.custom("Blender Bold Bold", size: 35))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .underline()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15){
                                    ForEach(featureditems, id: \.self) { coffee in
                                        NavigationLink {
                                            CustomizationOptions(coffee: coffee)
                                        } label: {
                                            CoffeeTileView(coffee: coffee)
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                        
                        // end of row 1
                        VStack {
                            
                            Text("ESPRESSO                        >")
                                .foregroundStyle(.black)
                                .font(.custom("Blender Bold Bold", size: 35))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .underline()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15){
                                    ForEach(espresso, id: \.self) { coffee in
                                        NavigationLink {
                                            CustomizationView(coffee: coffee)
                                        } label: {
                                            CoffeeTileView(coffee: coffee)
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                        
                        // end of row 2
                        VStack {
                            Text("BREWED COFFEE             >")
                                .foregroundStyle(.black)
                                .font(.custom("Blender Bold Bold", size: 35))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .underline()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15){
                                    ForEach(brewedCoffee, id: \.self) { coffee in
                                        NavigationLink {
                                            CustomizationView(coffee: coffee)
                                        } label: {
                                            CoffeeTileView(coffee: coffee)
                                        }
                                    }
                                }
                                .padding()
                            }
                            
                            //end of row 3
                            
                            Text("TEA                                    >")
                                .foregroundStyle(.black)
                                .font(.custom("Blender Bold Bold", size: 35))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .underline()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15){
                                    ForEach(tea, id: \.self) { coffee in
                                        NavigationLink {
                                            CustomizationView(coffee: coffee)
                                        } label: {
                                            CoffeeTileView(coffee: coffee)
                                        }
                                    }
                                }
                                .padding()
                            } /// END OF ROW 4
                            Text("ON TAP                              >")
                                .foregroundStyle(.black)
                                .font(.custom("Blender Bold Bold", size: 35))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .underline()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15){
                                    ForEach(ontap, id: \.self) { coffee in
                                        NavigationLink {
                                            CustomizationView(coffee: coffee)
                                        } label: {
                                            CoffeeTileView(coffee: coffee)
                                        }
                                    }
                                }
                                .padding()
                            } // end of row 5
                            
                            Text("SEASONAL                        >")
                                .foregroundStyle(.black)
                                .font(.custom("Blender Bold Bold", size: 35))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .underline()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15){
                                    ForEach(seasonal, id: \.self) { coffee in
                                        NavigationLink {
                                            CustomizationView(coffee: coffee)
                                        } label: {
                                            CoffeeTileView(coffee: coffee)
                                        }
                                    }
                                }
                                .padding()
                            } // end of row 6
                            
                            Text("BAGGED COFFEE             >")
                                .foregroundStyle(.black)
                                .font(.custom("Blender Bold Bold", size: 35))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .underline()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 15){
                                    ForEach(baggedCoffee, id: \.self) { coffee in
                                        NavigationLink {
                                            CustomizationOptions(coffee: coffee)
                                        } label: {
                                            CoffeeTileView(coffee: coffee)
                                        }
                                    }
                                }
                                .padding()
                            } // end of row 5
                        }
                    } // End of inner VStack
                } // End of ScrollView
            }
            NavigationLink(destination: CartView()) {
                VStack {
                    Text("VIEW ORDER")
                        .font(.custom("Blender Medium Regular", size: 30))
                    
                    Text("SUBTOTAL: $ \(cart.subtotal, specifier: "%.2f")")
                        .frame(alignment: .trailing)
                        .font(.custom("Blender Bold Bold", size: 30))
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(Capsule().fill(Color.black))
            }
            .buttonStyle(.plain)
            .padding(.horizontal)
        } // End of NavigationStack
    }
}

#Preview {
    ContentView()
        .environment(Cart())
}
