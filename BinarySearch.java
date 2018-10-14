public class BinarySearch{

    /**
     * Método que llena un arreglo, lo llena en orden de uno en uno.
     * @param el tamaño del arreglo.
     * @return el arreglo ordenado de 0 a n-1.
     */
    public static int[] llena(int i){
        int[] nuevo = new int[i];
        int  j = 0;
        while(j < i){
            nuevo[j] = j;
            j++;
        }
        return nuevo;
    }

    /**
     * Búsqueda Binaria.
     * @param n, el entero a buscar.
     * @param a, la cota izquierda.
     * @param b, la cota derecha.
     * @param sec, la secuencia en la que se desea realizar BS.
     * @return true si n se encuentra, false en otro caso.
     */
    public static boolean bs(int n, int a, int b, int[] sec){
        // si los indices se cruzan el elemento no se encuentra.
        if(b < a)
            return false;
        // la mitad del arreglo.
        int m = (a + b)/2;
        // si el elemento es igual a m terminamos.
        if(n == m)
            return true;
        else if(sec[m] > n)
            // Si no es igual, puede ser menor a la mitad.
            return bs(n, a, m-1, sec);
        else
            // Si no es menor, entonces es mayor.
            return bs(n, m+1, b, sec);
    }

    /**
     * Método que imprime un arreglo con un formato de lista.
     * @param sec, el arreglo que se quiere impirmir.
     * @return la cadena que es el arreglo en forma de lista.
     */
    public static String imprimeList(int[] sec){
        int i = 0;
        String s = "[" + sec[i];
        while(i++ < sec.length){
            s += ", " + sec[i];
            i++;
        }
        return s + "]";
    }

    public static void main(String[] args){
        //arreglo de tamaño n.
        int[] sec = llena(60);
        String nums = imprimeList(sec);
        //numero aleatorio.
        int r = (int)(Math.random()*100);
        System.out.printf("El número aleatorio a buscar es: %d \n", r);
        System.out.printf("¿Se encuentra %d en el arreglo \n %s?\n", r, nums);
        System.out.printf("La respuesta es: %s", bs(r, 0, sec.length-1, sec));
    }
}
