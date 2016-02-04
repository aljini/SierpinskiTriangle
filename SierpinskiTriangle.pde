public void setup()
{
	size(1000, 1000);
	
}
public void draw()
{
	background(0,0,0);
	sierpinskiSq(0,0,1000,1000,240,255,255,155);
	sierpinski(20,980,980,222,140,140,255);
	sierpinski(20,1470,980,255,200,160,255);
	sierpinski(20,490,980,255,200,160,255);

	
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len,int r,int g, int b,int a) 
{
//1000,500,250,125,62.5,32.25,16.125,8.0625
	if(len<=50){


		fill(r,g,b,a);
		triangle(x, y, x+len, y, x+(len/2),y-len);
	}
	else{

		sierpinski(x,y,len/2,r,g-10,b-10,a);
		sierpinski(x+len/2,y,len/2,r, g-20,b-10,a);
		sierpinski(x+len/4,y-len/2,len/2,r,g-10,b-20,a);

		
	}

}

public void sierpinskiSq(int x, int y, int wid,int hei, int r,int g, int b,int a) 
{
//1000,500,250,125,62.5,32.25,16.125
	if(wid<=10){

		noStroke();
		fill(r,g,b,a);
		rect(x, y, wid, hei);
	}
	else{

		sierpinskiSq(x,y,wid/3+2,hei/3+2,r-10,g,b,a);
		sierpinskiSq(x+wid/3,y,wid/3+2,hei/3+2,r-5,g,b,a);
		sierpinskiSq(x+2*wid/3,y,wid/3+2,hei/3+2,r-18,g,b,a);

		sierpinskiSq(x,y+hei/3,wid/3+2,hei/3+2,r-16,g,b,a);

		sierpinskiSq(x+2*wid/3,y+hei/3,wid/3+2,hei/3+2,r-3,g,b,a);

		sierpinskiSq(x,y+2*hei/3,wid/3+2,hei/3+2,r-12,g,b,a);
		sierpinskiSq(x+wid/3,y+2*hei/3,wid/3+2,hei/3+2,r-16,g,b,a);
		sierpinskiSq(x+2*wid/3,y+2*hei/3,wid/3+2,hei/3+2,r-4,g,b,a);
		 

		
	}

}