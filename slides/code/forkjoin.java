public Integer compute() {
  if (this.end - this.start > THRESHHOLD) {
    int middle = (this.start + this.end) / 2;
    SumTask leftTask = new SumTask(this.array, this.start, middle);
    leftTask.fork();

    SumTask rightTask = new SumTask(this.array, middle + 1, this.end);
    int right = rightTask.compute();
    int left = leftTask.join();
    return Math.max(left, right);
  } else {
    int max = this.array[this.start];
    for (int i = this.start; i <= this.end; i++) {
      max = Math.max(max, this.array[i]);
    }
    return max;
  }
}
