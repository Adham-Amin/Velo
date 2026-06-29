import 'package:flutter/material.dart';
import 'package:velo/features/instructor/instructor_course_details/domain/entities/student_entity.dart';
import 'package:velo/features/instructor/instructor_course_details/presentation/widgets/instructor_student_card.dart';

class InstructorStudentsTab extends StatelessWidget {
  const InstructorStudentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: StudentEntity.students.length,
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) =>
          InstructorStudentCard(student: StudentEntity.students[index]),
    );
  }
}
