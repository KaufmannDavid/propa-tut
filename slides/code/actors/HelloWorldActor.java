public class HelloWorldActor {
    @Override
    public Receive createReceive() {
        return receiveBuilder()
            .match(String.class,
                message -> message.equals("printHello"),
                message -> System.out.println("Hello World!"))
            .matchAny(message -> unhandled(message))
            .build();
    }
}
