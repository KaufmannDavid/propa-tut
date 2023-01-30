ActorSystem actorSystem = ActorSystem.create("MySystem");
ActorRef helloWorldActor =
actorSystem.actorOf(Props.create(HelloWorldActor.class));

