public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
    public int findFirstVowel(String sWord) {
        //precondition: sWord is a valid String of length greater than 0.
        //postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
        for(int i = 0; i<sWord.length(); i++){
    char c = sWord.charAt(i);
    if (c=='a'||c=='e'||c=='i'||c=='o'||c=='u'){
      return i;
    }
  }
        return -1;
    }

    public String pigLatin(String sWord) {
        //precondition: sWord is a valid String of length greater than 0
        //postcondition: returns the pig latin equivalent of sWord
        // more code should go here
	    if(findFirstVowel(sWord) == -1) {
		    return sWord + "ay";
	    }
      if (sWord.substring(0,2).equals("qu")){
        return sWord.substring(2)+"quay";
      }
      if(findFirstVowel(sWord)==0){
        return sWord +"way";
      }
      if(findFirstVowel(sWord)==1){
        return sWord.substring(1)+sWord.substring(0,1)+"ay";
      }
      if(findFirstVowel(sWord)==2){
        return sWord.substring(2)+sWord.substring(0,2)+"ay";
      }
      if(findFirstVowel(sWord)==3){
        return sWord.substring(3)+sWord.substring(0,3)+"ay";
      }
    
      
	    else {
		return "ERROR!";
	    }
    }
}//end PigLatin class
