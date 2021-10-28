import SwiftUI

struct PokemonDetails: View {
    
    var body: some View {
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("1")
                    .resizable()
                    .offset(y: 25)
                    .frame(width: 150, height: 150)
                    .zIndex(1)
                
                VStack(alignment: .leading) {
                    
                    VStack(spacing: 15) {
                        
                        Text("#" + String("1"))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .padding(.top, 20)
                        
                        Text("Name")
                            .font(.largeTitle)
                        
                        Text("Type")
                            .font(.title2).bold()
                            .frame(width: 150, height: 40)
                            .background(Color.green)
                            .cornerRadius(20)
                            .shadow(color: .green, radius: 5)
                        
                        HStack {
                            
                            VStack {
                                
                                HStack(alignment: .center, spacing: 5) {
                                    
                                    Text("Data")
                                        .font(.title)
                                    
                                    Text("KG")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.gray)
                                }
                                
                                Text("Weight")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                            }
                            
                            VStack {
                                
                                HStack(alignment: .center, spacing: 5) {
                                    
                                    Text("Data")
                                        .font(.title)
                                    
                                    Text("METER")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.gray)
                                }
                                
                                Text("Height")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        
                        .padding(.vertical, 15)
                        .frame(maxWidth: .infinity)
                        
                        Text("Description")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(.gray))
                            .padding(.horizontal, 15)
                        
                        VStack {
                            
                            HStack {
                                
                                Text("STATS")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .padding(.top, 10)
                                    .padding(.horizontal, 20)
                                
                            }
                        }
                    }

                    Spacer()

            }
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .cornerRadius(50.0)
                .edgesIgnoringSafeArea(.bottom)


            }

        }

    }

}


struct PokemonDetails_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetails()
    }
}   
