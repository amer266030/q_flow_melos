part of 'visitor_cubit.dart';

@immutable
sealed class VisitorState {}

final class VisitorInitial extends VisitorState {}

final class LoadingState extends VisitorState {}

final class UpdateUIState extends VisitorState {}
