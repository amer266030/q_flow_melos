import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_melos_widgets/widgets.dart';

import '../widget/custom_rating.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: context.screenHeight * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/img/test.png', fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: context.screenHeight * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('ABC Company', style: context.titleLarge),
              ),
              SizedBox(height: context.screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Rating:', style: context.titleLarge),
              ),
              SizedBox(height: context.screenHeight * 0.04),
              CustomRating(
                  boldText: 'Overall Satisfaction: ',
                  text:
                      'How satisfied were you with the overall interview process?'),
              CustomRating(
                  boldText: 'Interviewer Professionalism: ',
                  text:
                      'How would you rate the professionalism of the interviewer?'),
              CustomRating(
                  boldText: 'Clarity of Questions: ',
                  text:
                      'Were the interview questions clear and relevant to the role?'),
              CustomRating(
                  boldText: 'Time Management: ',
                  text:
                      'Was the interview conducted within the scheduled time frame?'),
              CustomRating(
                  boldText: 'Fairness of the Process: ',
                  text:
                      'Do you feel that the interview process was fair and unbiased?'),
              CustomRating(
                  boldText: 'Opportunity to Express Skills: ',
                  text:
                      'Did you feel you had enough opportunity to showcase your skills and experience?'),
              CustomRating(
                  boldText: 'Interview Environment: ',
                  text:
                      'How comfortable was the interview setting (e.g., location, noise level, privacy)?'),
              CustomRating(
                  boldText: 'Communication: ',
                  text:
                      'How well were the interview instructions and expectations communicated prior to the interview?'),
              CustomRating(
                  boldText: 'Post-Interview Feedback: ',
                  text:
                      'How satisfied are you with the feedback (if provided) after the interview?'),
              CustomRating(
                  boldText: 'Likelihood to Recommend: ',
                  text:
                      'Based on your experience, how likely are you to recommend this interview process to others?'),
            ]),
          )
        ],
      ),
    );
  }
}
