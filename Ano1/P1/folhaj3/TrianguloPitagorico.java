class TrianguloPitagorico{
    
    public static void main(String[] args){
        // a = cathetus, b = cathtus, c = hypotenuse
        for (int a = 1; a < 100; a++){
            for (int b = a; b < 100; b++){
                 double c = (Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2)));
                 if(c == (int)c){
                     System.out.printf("(%d, %d, %d)\n", a, b, (int)c);
                 }
            }
        }
            
    }
}