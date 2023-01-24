import java.util.concurrent.ForkJoinPool;
import java.util.stream.IntStream;

public class Forkjoinmain {
  public static void main(String[] args) {
    int[] range = IntStream.range(0, 1000000).toArray();
    ForkJoinPool fjPool = new ForkJoinPool();
    SumTask sumTask = new SumTask(range, 0, (range.length - 1));
    int result = fjPool.invoke(sumTask);
    System.out.println(result);
  } 
}
