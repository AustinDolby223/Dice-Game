import SwiftUI



struct ContentView: View {
    
    @State var num1 = 0
    @State var num2 = 0
    @State var sum = 0
    @State var wins = 0
    @State var losses = 0
    @State var value = 4
    @State var roll = 0
    
    var body: some View {
       
        VStack {
            HStack{
                
                Image(systemName: "die.face.\(num1)")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                    .padding()
                
                Image(systemName: "die.face.\(num2)")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .center)
                    .padding()
            }
            
           
                HStack{
                    Spacer()
                    
                    Text("Wins: \(wins)")
                        .foregroundColor(.green)
                        .font(.title)
                    
                    Spacer()
                    
                    Text("Losses: \(losses)")
                        .foregroundColor(.red)
                        .font(.title)
                    
                    Spacer()
            }
            
            
            Text("Sum: \(num1 + num2)")
                .font(.largeTitle)
            
            Button(action: {
                
                num1 = Int.random(in: 1...6)
                num2 = Int.random(in: 1...6)
                roll += 1
                sum = num1 + num2
                
                if sum == 2 || sum == 3 || sum == 12 {
                    losses += 1
                }
                
                else if sum == 7 || sum == 11 {
                    wins += 1
                }
                
                
            }, label: {
                
                Text("Roll Dice")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
                    .padding()
            })
            
            Text("You have rolled \(roll) times")

        }
        
    }
    
}
