package ar.com.facturapp.model

class Register {
    Long id
    Long billNumber
    Date date
    Double price
    String destiny

    static mapping = {
        id generator: 'increment'
        table 'register'
    }

    static constraints = {
        price scale: 2
        price min: 0d
        //month size: 1..12
    }
}
