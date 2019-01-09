public final static String e = "2718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
int x = 0;
public void setup()  
{
	double dNum = Double.parseDouble(e.substring(x,x+10));
	while (isPrime(dNum) == false) {
		x++;
		dNum = Double.parseDouble(e.substring(x,x+10));
	}
	System.out.println(dNum);            
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    if (dNum < 2) {
	    return false;
	}
	for (int i = 2; i <= Math.sqrt(dNum); i++) {
		if (dNum % i == 0) {
	  		return false;
		}
	}  
    return true;  
} 
