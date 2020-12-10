import 'dart:io';
import 'dart:math';

void main(){
    int computer_score = 0;
    int challenger_score = 0;
    
    print("Enter number of rounds:");
   int number_of_rounds = int.parse(stdin.readLineSync());
    
   //loop for the number of rounds
    for (var i = 1; i <= number_of_rounds; i++)
   {
   print("Round $i : Papel, Gunting, Bato! What's your Pick? ");
   String challenger_choice = stdin.readLineSync().toUpperCase();
   print("$challenger_choice");
  
  //BOT 
  var computer = ['PAPEL', 'GUNTING', 'BATO'];
  var answer = (computer[new Random().nextInt(computer.length)]);
  
  //if the player chooses bato
  if(challenger_choice == "BATO")
  {
      if(answer == "PAPEL")
      {
           print("🤖 Bot: 📄 - You Lose!");
           computer_score++;
      }
      else if(answer == "BATO")
      {
           print("🤖 Bot: 🌑  - It's a Tie!");
      }
      else if(answer == "GUNTING")
      {
           print("🤖 Bot: ✂️ - You Win!");
           challenger_score++;
      }
  }
  
  // if the player chooses gunting
  else if(challenger_choice == "GUNTING")
  {
      if(answer == "PAPEL")
      {
           print("🤖 Bot: 📄 - You Win!");
           challenger_score++;
      }
      else if(answer == "BATO")
      {
           print("🤖 Bot: 🌑  - You Lose!");
           computer_score++;
      }
      else if(answer == "GUNTING")
      {
           print("🤖 Bot: ✂️ - It's a Tie!");
      }
  }
  
  // if the player chooses papel
  if(challenger_choice == "PAPEL")
  {
      if(answer == "PAPEL")
      {
           print("🤖 Bot: 📄 - It's a Tie!");
      }
      else if(answer == "BATO")
      {
           print("🤖 Bot: 🌑  - You Win!");
           challenger_score++;
      }
      else if(answer == "GUNTING")
      {
           print("🤖 Bot: ✂️ - You Lose!");
           computer_score++;
      }
  }
  else
  {
      print("Invalid Input");
  }
  }
  
  //results of the game
  if(challenger_score > computer_score)
  {
      print("You Win! Bot: $computer_score, You: $challenger_score");
  }
  else if(challenger_score < computer_score)
  {
      print("You Lose! Bot: $computer_score, You: $challenger_score");
  }
  else
  {
      print("Result: It's a tie!");
  }
   
}
