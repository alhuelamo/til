# Example of a simple retry function in Scala

```scala
object Retry {

  @scala.annotation.tailrec
  def nTimes[T](times: Int)(expr: => T): T = {
    try {
      expr
    } catch {
      case e: Exception =>
        if (times > 1) nTimes(times - 1)(expr)
        else throw e
    }
  }

}
```
