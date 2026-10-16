import 'package:flutter/material.dart';
import 'job_model.dart';

void main() {
  runApp(const JobFinderApp());
}

class JobFinderApp extends StatelessWidget {
  const JobFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        canvasColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          surface: Color(0xFF1E1E1E),
          primary: Color(0xFF6C5CE7),
          secondary: Color(0xFF00CEC9),
        ),
        textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'Poppins',
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = '';

  Color _getCategoryColor(Job job) {
    final title = job.title.toLowerCase();
    final skills = job.skills.join(' ').toLowerCase();
    final combined = '$title $skills';

    if (combined.contains('flutter') ||
        combined.contains('developer') ||
        combined.contains('engineer') ||
        combined.contains('python') ||
        combined.contains('ui/ux') ||
        combined.contains('backend') ||
        combined.contains('frontend')) {
      return const Color(0xFFA29BFE); // Tech - Soft Purple
    }
    if (combined.contains('doctor') ||
        combined.contains('nurse') ||
        combined.contains('medical') ||
        combined.contains('pharmacist') ||
        combined.contains('patient') ||
        combined.contains('therapist')) {
      return const Color(0xFFFF7675); // Healthcare - Rose
    }
    if (combined.contains('tutor') ||
        combined.contains('teacher') ||
        combined.contains('instructor') ||
        combined.contains('lecturer') ||
        combined.contains('school') ||
        combined.contains('curriculum')) {
      return const Color(0xFF55E6C1); // Education - Bright Mint
    }
    if (combined.contains('electrician') ||
        combined.contains('plumber') ||
        combined.contains('hvac') ||
        combined.contains('mechanic') ||
        combined.contains('welder') ||
        combined.contains('solar')) {
      return const Color(0xFFFF9F43); // Trades - Bright Coral
    }
    if (combined.contains('pilot') ||
        combined.contains('driver') ||
        combined.contains('ship') ||
        combined.contains('captain') ||
        combined.contains('logistics') ||
        combined.contains('flight')) {
      return const Color(0xFF74B9FF); // Transport - Sky Blue
    }
    if (combined.contains('animator') ||
        combined.contains('designer') ||
        combined.contains('photographer') ||
        combined.contains('editor') ||
        combined.contains('copywriter') ||
        combined.contains('artist')) {
      return const Color(0xFFFD79A8); // Creative - Pink
    }
    if (combined.contains('analyst') ||
        combined.contains('manager') ||
        combined.contains('accountant') ||
        combined.contains('attorney') ||
        combined.contains('banking') ||
        combined.contains('hr')) {
      return const Color(0xFFB2BEC3); // Business - Slate Grey
    }

    return const Color(0xFF81ECEC); // General
  }

  Color _getWorkplaceBadgeColor(String workplaceType) {
    final lower = workplaceType.toLowerCase();
    if (lower.contains('remote')) {
      return const Color(0xFFA29BFE);
    } else if (lower.contains('hybrid')) {
      return const Color(0xFFFF9F43);
    }
    return const Color(0xFF74B9FF);
  }

  void _showJobDetailModal(BuildContext context, Job job) {
    final categoryColor = _getCategoryColor(job);
    final workplaceColor = _getWorkplaceBadgeColor(job.workplaceType);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.85,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          builder: (_, controller) {
            return Container(
              decoration: const BoxDecoration(
                color: Color(0xFF1E1E1E), // Dark modal sheet
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              padding: const EdgeInsets.all(20),
              child: ListView(
                controller: controller,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 5,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  // Job Title & Company
                  Text(
                    job.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: categoryColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '${job.company}  •  ${job.location}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Metadata Badges
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: categoryColor.withValues(alpha: 0.18),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          job.type,
                          style: TextStyle(
                            color: categoryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: workplaceColor.withValues(alpha: 0.18),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          job.workplaceType,
                          style: TextStyle(
                            color: workplaceColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Text(
                        job.salary,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF55E6C1),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  Divider(color: Colors.grey.shade800),
                  const SizedBox(height: 16),

                  // Required Skills
                  const Text(
                    'Required Skills & Tools',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: job.skills.map((skill) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: categoryColor.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          skill,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: categoryColor,
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 24),

                  // Description
                  const Text(
                    'Job Description',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    job.description,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Colors.grey.shade300,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // How to Apply
                  const Text(
                    'How to Get / Apply for this Job',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: categoryColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: categoryColor.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Text(
                      job.howToApply,
                      style: TextStyle(
                        fontSize: 13,
                        height: 1.5,
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: categoryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Application opened for ${job.title}!',
                              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            backgroundColor: const Color(0xFF55E6C1),
                          ),
                        );
                      },
                      child: const Text(
                        'Apply Now',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredJobs = mockJobs.where((job) {
      final query = searchQuery.toLowerCase();
      final matchesTitle = job.title.toLowerCase().contains(query);
      final matchesCompany = job.company.toLowerCase().contains(query);
      final matchesLocation = job.location.toLowerCase().contains(query);
      final matchesWorkplace = job.workplaceType.toLowerCase().contains(query);
      final matchesSkill = job.skills.any((skill) => skill.toLowerCase().contains(query));

      return matchesTitle || matchesCompany || matchesLocation || matchesWorkplace || matchesSkill;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120.0,
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFF1E1E1E),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
              title: const Text(
                'Explore Opportunities',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF2D1F5B), Color(0xFF1E1E1E)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E1E),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade800),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value;
                        });
                      },
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search roles, skills, remote, hybrid...',
                        hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 14),
                        prefixIcon: const Icon(Icons.search, color: Color(0xFFA29BFE)),
                        suffixIcon: searchQuery.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear, color: Colors.grey),
                                onPressed: () {
                                  setState(() {
                                    searchQuery = '';
                                  });
                                },
                              )
                            : null,
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Featured Jobs',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFA29BFE).withValues(alpha: 0.18),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${filteredJobs.length} available',
                          style: const TextStyle(
                            color: Color(0xFFA29BFE),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),

          filteredJobs.isEmpty
              ? SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search_off_rounded, size: 64, color: Colors.grey.shade700),
                        const SizedBox(height: 12),
                        Text(
                          'No matching roles found',
                          style: TextStyle(color: Colors.grey.shade500, fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                )
              : SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final job = filteredJobs[index];
                        final categoryColor = _getCategoryColor(job);
                        final workplaceColor = _getWorkplaceBadgeColor(job.workplaceType);

                        return Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Material(
                            color: const Color(0xFF1E1E1E), // Dark Grey Card
                            borderRadius: BorderRadius.circular(16),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(16),
                              onTap: () => _showJobDetailModal(context, job),
                              child: Container(
                                padding: const EdgeInsets.all(18.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: categoryColor.withValues(alpha: 0.35),
                                    width: 1.2,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                job.title,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: categoryColor,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                '${job.company}  •  ${job.location}',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.grey.shade400,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            job.isBookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
                                            color: categoryColor,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 14),

                                    Wrap(
                                      spacing: 6.0,
                                      runSpacing: 6.0,
                                      children: job.skills.map((skill) {
                                        return Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            color: categoryColor.withValues(alpha: 0.15),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            skill,
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w600,
                                              color: categoryColor,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),

                                    const SizedBox(height: 16),
                                    Divider(height: 1, thickness: 0.8, color: Colors.grey.shade800),
                                    const SizedBox(height: 12),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            // Job Type Badge
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                              decoration: BoxDecoration(
                                                color: categoryColor.withValues(alpha: 0.18),
                                                borderRadius: BorderRadius.circular(6),
                                              ),
                                              child: Text(
                                                job.type,
                                                style: TextStyle(
                                                  color: categoryColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),

                                            // Workplace Type Badge
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                              decoration: BoxDecoration(
                                                color: workplaceColor.withValues(alpha: 0.18),
                                                borderRadius: BorderRadius.circular(6),
                                              ),
                                              child: Text(
                                                job.workplaceType,
                                                style: TextStyle(
                                                  color: workplaceColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          job.salary,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Color(0xFF55E6C1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: filteredJobs.length,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}