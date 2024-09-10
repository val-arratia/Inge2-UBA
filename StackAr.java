package inge2.dataflow;

public class StackAr {
    //@ public invariant  -1 <= this.top < elems.length;
    /**
     * Capacidad por defecto de la pila.
     */
    //@ spec_public
    private final static int DEFAULT_CAPACITY = 10;

    /**
     * Arreglo que contiene los elementos de la pila.
     */
    //@ spec_public
    private final int[] elems;

    /**
     * Indice del tope de la pila.
     */
    //@ spec_public
    private int top = -1;

    //@ ensures this.elems.length == this.DEFAULT_CAPACITY;
    public StackAr() {
        this(DEFAULT_CAPACITY);
    }

    //@ requires capacity > 0 && capacity < Integer.MAX_VALUE;
    //@ ensures this.elems.length == capacity && this.isEmpty();
    public StackAr(int capacity) {
        // TODO: IMPLEMENTAR
        this.elems = new int[capacity];
    }

    //@ ensures \result == true <==> this.size() == 0;
    //@ pure
    public boolean isEmpty() {
        return this.top == -1;
    }

    //@ ensures \result == true <==> this.top == this.elems.length-1;
    //@ pure
    public boolean isFull() {
        return this.top == this.elems.length-1;

    }


    //@ ensures \result == this.top+1;
    //@ pure
    public int size() {
        // TODO: IMPLEMENTAR
        return this.top + 1;
    }

    //@ requires this.size() < this.elems.length;
    //@ ensures this.size() == \old(this.size())+1 && this.elems[this.top] == o ;

    public void push(int o) {
        // TODO: IMPLEMENTAR
        this.top++;
        this.elems[this.top] = o;

    }

    //@ requires this.size() > 0;
    //@ ensures \result == this.elems[\old(this.top)];
    //@ ensures this.size() == \old(this.size())-1  ;

    public int pop() {
        // TODO: IMPLEMENTAR
        int m = this.elems[this.top];
        this.top--;
        //@ show this.top, this.elems.length;
        return m;
    }

    //@ requires this.size() > 0 ;
    //@ ensures \result == this.elems[top];
    //@pure
    public int peek() {
        return this.elems[top];
    }
}

