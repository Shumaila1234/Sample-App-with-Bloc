part of 'joke_bloc.dart';

abstract class JokeState extends Equatable {}

//Loading state
class JokeLoadingState extends JokeState {
  @override
  List<Object?> get props => [];
}

//loaded state
class JokeLoadedState extends JokeState {
  final JokeModel joke;

  JokeLoadedState(this.joke);

  @override
  List<Object?> get props => [joke];
}

//error statte
class JokeErrorState extends JokeState {
  final String error;

  JokeErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
