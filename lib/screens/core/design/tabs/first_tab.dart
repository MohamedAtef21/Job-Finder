import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Text(
            "Job Description",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "SF",
              fontWeight: FontWeight.w400,
              color: Color(0xff4B5563),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Skill Required",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "SF",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            ". A strong visual portfolio with clear understanding of UI methodologies\n. Ability to create hi-fidelity mock-ups in Figma\n. Ability to create various graphics for the web e.g. illustrations and icons\n. Able to facilitate workshops and liaise with stakeholders\n. Proficiency in the Adobe Creative Suite\n. Confident communicator with an analytical mindset\n. Design library/Design system experience\n. 4+ years of commercial experience in UI/Visual Design",
             style: TextStyle(
              fontSize: 12,
              fontFamily: "SF",
              fontWeight: FontWeight.w400,
              color: Color(0xff4B5563),
            ),
          ),
        ],
      ),
    );
  }
}
