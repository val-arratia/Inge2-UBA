package inge2.dataflow;

public class BusquedaLineal {

    // Busca un elemento en un arreglo de enteros.
    //
    //@ ensures \result == true <==> \exists int i; 0 <= i < arr.length; elem == arr[i];
    public static boolean busquedaLineal(int elem, int[] arr) {
        boolean result = false;
        //@ loop_invariant 0 <= i <= arr.length;
        //@ loop_invariant result == true <==> \exists int k; 0 <= k < i; arr[k] == elem;
        //@ loop_writes i;
        //@ decreases arr.length-i;

        for (int i = 0; i < arr.length; i++) {
            if (elem == arr[i]) {
                result = true;
            }
        }

        return result;
    }
}