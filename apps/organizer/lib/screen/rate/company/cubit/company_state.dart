part of 'company_cubit.dart';

@immutable
sealed class CompanyState {}

final class CompanyInitial extends CompanyState {}

final class LoadingState extends CompanyState {}

final class UpdateUIState extends CompanyState {}
