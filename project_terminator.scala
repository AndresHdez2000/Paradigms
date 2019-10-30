// Creating a Terminator Class

class Terminator(Genero:String,wepon:String) {
    //Defining an state of the terminator
  var Termi_mode: Boolean = false;
    // Defining a functions for printing the Terminator Mode
  def mode_murder() {
    if (Termi_mode == true){ //checking if the Terminator is already awake
      println("Your terminator is already active.");
    }
    else {
      Termi_mode = true //Changing the Terminator Mode to on
      println("Your temrinator is active");
    }
  }
    // Funciton to give state of the termiantor, by claling its info
  def mision_report() {
    println("The terminator has:  "+ wepon + " And it's gender is: " + Genero);
    if (Termi_mode == true){ // Decision to print if your Termiantor is turned on
      println("Terminat-on.");
    }
    else{   //Otherwise the Terinator is turned off
      println("Terminat-off.");
    }
  }
}
// Main
object Main
{
  def main (args: Array[String])
  {
      // Creating a new Terminator, which is gay and has a Bow
    var m = new Terminator("Gay","Bow");
    println("Calling mision_report...");
    m.mision_report();//Calling the mission report
    println("+++++++");
    println("Terminator in disposition...");
    m.mode_murder();//Turned it on
    println("+++++++");
    println("Calling mision_report...");
    m.mision_report(); //Giving the mission report
    println("+++++++");
    println("Starting engine...");
    m.mode_murder();
  }
}