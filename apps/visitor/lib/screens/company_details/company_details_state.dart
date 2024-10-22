part of 'company_details_cubit.dart';

@immutable
sealed class CompanyDetailsState {}

final class CompanyDetailsInitial extends CompanyDetailsState {}

final class LoadingState extends CompanyDetailsState {}

final class UpdateUIState extends CompanyDetailsState {}