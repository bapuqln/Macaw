open class Align {

    public static let min: Align = Align()
    public static let mid: Align = MidAlign()
    public static let max: Align = MaxAlign()

    open func align(outer: Double, inner: Double) -> Double {
        return 0
    }

    open func align(size: Double) -> Double {
        return align(outer: size, inner: 0)
    }
    
    open func reverse() -> Align {
        return .max
    }
}

private class MidAlign: Align {

    override func align(outer: Double, inner: Double) -> Double {
        return (outer - inner) / 2
    }
    
    override func reverse() -> Align {
        return .mid
    }
}

private class MaxAlign: Align {

    override func align(outer: Double, inner: Double) -> Double {
        return outer - inner
    }
    
    override func reverse() -> Align {
        return .min
    }
}
