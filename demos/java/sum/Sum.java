import java.sql.Time;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

class Sum {
    public static void main(String[] args) throws InterruptedException {
        // Fifty billion
        long n = 50L * 1000L * 1000L * 1000L;
        int N = 16;

        // Initialize threads here. If you have N threads, each of them should run n / N ++ operations.
        long starttime = System.currentTimeMillis();
        
        final int chunks = 64;

        ExecutorService e = Executors.newFixedThreadPool(N);

        List<Future<Long>> futures = new LinkedList<Future<Long>>();

        for (int i = 0; i < chunks; i++) {
            final int index = i;
            futures.add(e.submit(() -> {
                long localSum = 0;
                for (long j = 0; j < n / chunks; j++) {
                    localSum++;
                }
                return localSum;
            }));
        }

        long sum = futures.stream().map((future) -> future.get()).sum();


        long endtime = System.currentTimeMillis();

        System.out.println(String.format("n   = %d", n));
        System.out.println(String.format("sum = %d", sum));
        System.out.println("time: " + (endtime - starttime));
    }
}
