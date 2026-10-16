class Job {
  final String id;
  final String title;
  final String company;
  final String location;
  final String salary;
  final String type; // e.g. Full-time, Part-time, Contract
  final String workplaceType; // e.g. Remote, Hybrid, On-site
  final List<String> skills;
  final bool isBookmarked;
  final String description;
  final String howToApply;

  Job({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    required this.salary,
    required this.type,
    String? workplaceType,
    required this.skills,
    this.isBookmarked = false,
    String? description,
    String? howToApply,
  })  : workplaceType = workplaceType ??
            (location.toLowerCase().contains('remote')
                ? 'Remote'
                : location.toLowerCase().contains('hybrid')
                    ? 'Hybrid'
                    : 'On-site'),
        description = description ??
            'We are seeking a dedicated professional for the role of $title at $company. '
                'In this role, you will leverage core competencies in ${skills.join(", ")} '
                'to execute high-impact tasks, collaborate with multidisciplinary teams, '
                'and deliver reliable, high-quality results in $location.',
        howToApply = howToApply ??
            'To apply, prepare an updated CV highlighting relevant experience in ${skills.take(2).join(" and ")}. '
                'Submit your application along with a brief cover letter directly via the careers portal at $company '
                'or email the hiring team with "$title - Application" in the subject line.';
}

final List<Job> mockJobs = [
  // --- TECH & SOFTWARE DEVELOPMENT (1–15) ---
  Job(id: '1', title: 'Senior Flutter Developer', company: 'TechCorp Solutions', location: 'Remote (US)', salary: '£110,000 - £135,000 / yr', type: 'Full-time', skills: ['Flutter', 'Dart', 'Provider', 'REST APIs', 'Git']),
  Job(id: '2', title: 'UI/UX Mobile Designer', company: 'Design Studio', location: 'New York, NY', salary: '£85,000 - £100,000 / yr', type: 'Full-time', skills: ['Figma', 'Prototyping', 'User Research', 'Auto Layout']),
  Job(id: '3', title: 'Full Stack Dart & Python Engineer', company: 'CloudWorks', location: 'Remote (Worldwide)', salary: '£120,000 - £150,000 / yr', type: 'Contract', skills: ['Python', 'Django', 'Dart', 'PostgreSQL', 'Docker']),
  Job(id: '4', title: 'Backend Systems Architect', company: 'DataFlow Systems', location: 'San Francisco, CA', salary: '£160,000 - £190,000 / yr', type: 'Full-time', skills: ['Python', 'Microservices', 'GraphQL', 'Redis', 'AWS']),
  Job(id: '5', title: 'DevOps & Cloud Engineer', company: 'Nexus Infrastructure', location: 'London, UK', salary: '£75,000 - £95,000 / yr', type: 'Full-time', skills: ['AWS', 'Kubernetes', 'Terraform', 'CI/CD', 'Linux']),
  Job(id: '6', title: 'Junior Mobile App Developer', company: 'NextGen Apps', location: 'Toronto, ON', salary: '£70,000 - £85,000 / yr', type: 'Full-time', skills: ['Flutter', 'State Management', 'Firebase', 'Git']),
  Job(id: '7', title: 'Frontend React/TypeScript Developer', company: 'PixelCraft Digital', location: 'Berlin, Germany', salary: '£65,000 - £80,000 / yr', type: 'Full-time', skills: ['React', 'TypeScript', 'Tailwind CSS', 'Redux', 'Jest']),
  Job(id: '8', title: 'AI & Machine Learning Engineer', company: 'DeepCore Systems', location: 'Tokyo, Japan (Hybrid)', salary: '£80,000 - £100,000 / yr', type: 'Full-time', skills: ['Python', 'PyTorch', 'TensorFlow', 'NLP', 'Computer Vision']),
  Job(id: '9', title: 'Cybersecurity Incident Responder', company: 'Guardian Shield Tech', location: 'Canberra, Australia', salary: '£110,000 - £130,000 / yr', type: 'Full-time', skills: ['SIEM', 'Penetration Testing', 'Network Security', 'Python']),
  Job(id: '10', title: 'Embedded Firmware Software Engineer', company: 'RoboTech Global', location: 'Munich, Germany', salary: '£70,000 - £88,000 / yr', type: 'Full-time', skills: ['C++', 'C', 'RTOS', 'Embedded Linux', 'Microcontrollers']),
  Job(id: '11', title: 'iOS Native Swift Engineer', company: 'AppVenture', location: 'Stockholm, Sweden', salary: '£60,000 - £75,000 / yr', type: 'Full-time', skills: ['Swift', 'SwiftUI', 'Combine', 'Xcode', 'CoreData']),
  Job(id: '12', title: 'Android Kotlin Developer', company: 'Mobility Labs', location: 'Lagos, Nigeria', salary: '£12,000 - £18,000 / yr', type: 'Full-time', skills: ['Kotlin', 'Jetpack Compose', 'Coroutines', 'Room', 'REST APIs']),
  Job(id: '13', title: 'Database Administrator (PostgreSQL)', company: 'DataVault Solutions', location: 'Dublin, Ireland', salary: '£60,000 - £75,000 / yr', type: 'Full-time', skills: ['PostgreSQL', 'Database Tuning', 'SQL', 'Backup Recovery']),
  Job(id: '14', title: 'Blockchain & Smart Contract Developer', company: 'ChainLink Labs', location: 'Remote', salary: '£130,000 - £160,000 / yr', type: 'Contract', skills: ['Solidity', 'Ethereum', 'Web3.js', 'Rust', 'Smart Contracts']),
  Job(id: '15', title: 'Quality Assurance (QA) Automation Engineer', company: 'Testify Software', location: 'Warsaw, Poland', salary: '£120,000 - £160,000 / yr', type: 'Full-time', skills: ['Selenium', 'Cypress', 'Python', 'Automated Testing', 'CI/CD']),

  // --- EDUCATION & TUTORING (16–25) ---
  Job(id: '16', title: 'Primary School Math & English Tutor', company: 'Bright Minds Academy', location: 'Chicago, IL (Hybrid)', salary: '£45,000 - £60,000 / yr', type: 'Full-time', skills: ['Lesson Planning', 'Mathematics', 'English Language', 'Tutoring']),
  Job(id: '17', title: 'High School Physics Teacher', company: 'Oakridge High School', location: 'Toronto, ON', salary: '£65,000 - £80,000 / yr', type: 'Full-time', skills: ['Curriculum Design', 'Classroom Management', 'STEM', 'Grading']),
  Job(id: '18', title: 'English Language (ESL) Lecturer', company: 'Global Language Institute', location: 'Seoul, South Korea', salary: '£3,200 - £4,000 / mo', type: 'Full-time', skills: ['TEFL/TESOL', 'English Language', 'Lesson Planning', 'Public Speaking']),
  Job(id: '19', title: 'Computer Science Online Instructor', company: 'CodePath Institute', location: 'Remote (Worldwide)', salary: '£50 - £75 / hr', type: 'Part-time', skills: ['Python', 'Data Structures', 'Git', 'Mentorship', 'Teaching']),
  Job(id: '20', title: 'Elementary STEM Curriculum Developer', company: 'EduInnovate', location: 'Melbourne, Australia', salary: '£75,000 - £90,000 / yr', type: 'Full-time', skills: ['Curriculum Design', 'STEM Education', 'Pedagogy', 'Interactive Learning']),
  Job(id: '21', title: 'University Lecturer in Economics', company: 'Royal City College', location: 'London, UK', salary: '£52,000 - £68,000 / yr', type: 'Full-time', skills: ['Microeconomics', 'Research', 'Academic Writing', 'Lecturing']),
  Job(id: '22', title: 'Special Education Needs Teacher', company: 'Inclusive Learning Center', location: 'Dublin, Ireland', salary: '£42,000 - £55,000 / yr', type: 'Full-time', skills: ['Special Education', 'IEP Development', 'Patience', 'Behavior Management']),
  Job(id: '23', title: 'Montessori Kindergarten Educator', company: 'Little Explorers Preschool', location: 'Auckland, New Zealand', salary: '£55,000 - £68,000 / yr', type: 'Full-time', skills: ['Child Development', 'Montessori Method', 'Early Childhood', 'First Aid']),
  Job(id: '24', title: 'Corporate Training & Development Specialist', company: 'Global SkillUp', location: 'Singapore', salary: '£70,000 - £90,000 / yr', type: 'Full-time', skills: ['Instructional Design', 'E-Learning', 'Workshop Facilitation']),
  Job(id: '25', title: 'Chemistry Laboratory Instructor', company: 'Apex Science Institute', location: 'Manchester, UK', salary: '£38,000 - £48,000 / yr', type: 'Full-time', skills: ['Organic Chemistry', 'Lab Safety', 'Chemical Handling', 'Grading']),

  // --- HEALTHCARE & MEDICINE (26–37) ---
  Job(id: '26', title: 'Resident Medical Doctor (General Practice)', company: 'City Care Hospital', location: 'Boston, MA', salary: '£180,000 - £220,000 / yr', type: 'Full-time', skills: ['Patient Care', 'Diagnostics', 'Internal Medicine', 'Emergency Care']),
  Job(id: '27', title: 'Registered Nurse (RN - ICU)', company: 'St. Jude Healthcare', location: 'Houston, TX', salary: '£75,000 - £95,000 / yr', type: 'Full-time', skills: ['Critical Care', 'Patient Assessment', 'BLS/ACLS Certified', 'IV Therapy']),
  Job(id: '28', title: 'Clinical Hospital Pharmacist', company: 'Green Cross Pharmacy', location: 'Singapore', salary: '£78,000 - £96,000 / yr', type: 'Full-time', skills: ['Pharmacology', 'Prescription Verification', 'Patient Counseling']),
  Job(id: '29', title: 'Physiotherapist & Rehabilitation Lead', company: 'Active Life Clinic', location: 'Auckland, New Zealand', salary: '£70,000 - £88,000 / yr', type: 'Full-time', skills: ['Physical Therapy', 'Sports Injury', 'Rehabilitation', 'Anatomy']),
  Job(id: '30', title: 'Medical Laboratory Technologist', company: 'BioDiag Diagnostics', location: 'Vancouver, BC', salary: '£62,000 - £78,000 / yr', type: 'Full-time', skills: ['Blood Analysis', 'Microbiology', 'Lab Equipment', 'Quality Control']),
  Job(id: '31', title: 'Pediatric Dental Surgeon', company: 'SmileKids Dental', location: 'Dubai, UAE', salary: '£300,000 - £420,000 / yr', type: 'Full-time', skills: ['Pediatric Dentistry', 'Oral Surgery', 'Patient Management']),
  Job(id: '32', title: 'Mental Health Telehealth Psychologist', company: 'MindBalance Therapy', location: 'Remote (US/Canada)', salary: '£80,000 - £105,000 / yr', type: 'Full-time', skills: ['CBT Therapy', 'Counseling', 'Mental Health', 'Telehealth']),
  Job(id: '33', title: 'Radiologic Technologist (X-Ray & MRI)', company: 'Metro Imaging Center', location: 'Philadelphia, PA', salary: '£68,000 - £82,000 / yr', type: 'Full-time', skills: ['MRI Operation', 'Radiology Safety', 'Patient Positioning', 'CT Scans']),
  Job(id: '34', title: 'Emergency Medical Technician (EMT Paramedic)', company: 'City Response Care', location: 'Denver, CO', salary: '£52,000 - £68,000 / yr', type: 'Full-time', skills: ['Emergency Care', 'CPR/AED', 'Patient Transport', 'Triage']),
  Job(id: '35', title: 'Veterinary Surgeon (Small Animals)', company: 'Paws & Claws Animal Hospital', location: 'Edinburgh, UK', salary: '£48,000 - £62,000 / yr', type: 'Full-time', skills: ['Veterinary Medicine', 'Animal Surgery', 'Diagnostics', 'Pet Care']),
  Job(id: '36', title: 'Optometrist & Vision Care Specialist', company: 'ClearSight Optical', location: 'Sydney, Australia', salary: '£95,000 - £120,000 / yr', type: 'Full-time', skills: ['Eye Exams', 'Prescription Lenses', 'Ophthalmology', 'Patient Care']),
  Job(id: '37', title: 'Senior Occupational Therapist', company: 'HealthPath Rehab', location: 'Calgary, AB', salary: '£72,000 - £90,000 / yr', type: 'Full-time', skills: ['Occupational Therapy', 'Patient Rehabilitation', 'Adaptive Equipment']),

  // --- SKILLED TRADES & ENGINEERING (38–50) ---
  Job(id: '38', title: 'Licensed Commercial Plumber', company: 'Apex Plumbing Services', location: 'Atlanta, GA', salary: '£60,000 - £82,000 / yr', type: 'Full-time', skills: ['Pipefitting', 'Blueprint Reading', 'Water Systems', 'Drain Cleaning']),
  Job(id: '39', title: 'Solar PV Systems Electrician', company: 'EcoPower Renewables', location: 'Austin, TX', salary: '£55,000 - £75,000 / yr', type: 'Full-time', skills: ['Solar PV Wiring', 'PWM Controllers', 'Battery Storage', 'Electrical Safety']),
  Job(id: '40', title: 'Commercial HVAC Technician', company: 'CoolBreeze Systems', location: 'Phoenix, AZ', salary: '£52,000 - £70,000 / yr', type: 'Full-time', skills: ['Refrigeration', 'HVAC Repair', 'Thermostat Wiring', 'Troubleshooting']),
  Job(id: '41', title: 'Civil Construction Site Engineer', company: 'BuildWorld Infrastructure', location: 'Doha, Qatar', salary: '£85,000 - £110,000 / yr', type: 'Full-time', skills: ['AutoCAD', 'Structural Analysis', 'Project Management', 'Site Safety']),
  Job(id: '42', title: 'Heavy Equipment Diesel Mechanic', company: 'Terra Earthworks', location: 'Edmonton, AB', salary: '£78,000 - £95,000 / yr', type: 'Full-time', skills: ['Hydraulics', 'Diesel Engines', 'Heavy Machinery Repair', 'Diagnostics']),
  Job(id: '43', title: 'PLC Automation Industrial Electrician', company: 'Siemens Industrial', location: 'Hamburg, Germany', salary: '£55,000 - £72,000 / yr', type: 'Full-time', skills: ['PLC Programming', 'Industrial Wiring', 'Automation', 'Sensors']),
  Job(id: '44', title: 'Automotive Electrician & Mechanic', company: 'DriveTech Motors', location: 'Nairobi, Kenya', salary: '£18,000 - £25,000 / yr', type: 'Full-time', skills: ['Car Diagnostics', 'Wiring Systems', 'Engine Repair', 'OBD Scanners']),
  Job(id: '45', title: 'MIG & TIG Structural Welder', company: 'Ironclad Manufacturing', location: 'Pittsburgh, PA', salary: '£58,000 - £76,000 / yr', type: 'Full-time', skills: ['MIG/TIG Welding', 'Blueprint Reading', 'Metal Fabrication', 'Safety']),
  Job(id: '46', title: 'Residential & Commercial Carpenter', company: 'Craftsman Woodworks', location: 'Seattle, WA', salary: '£54,000 - £72,000 / yr', type: 'Full-time', skills: ['Framing', 'Cabinetry', 'Woodworking', 'Power Tools', 'Blueprints']),
  Job(id: '47', title: 'Precision CNC Machinist Operator', company: 'Precision Components', location: 'Stuttgart, Germany', salary: '£48,000 - £62,000 / yr', type: 'Full-time', skills: ['CNC Milling', 'Lathe Operation', 'G-Code', 'Quality Inspection']),
  Job(id: '48', title: 'Structural & Architectural Mason', company: 'StoneCraft Builders', location: 'Rome, Italy', salary: '£38,000 - £50,000 / yr', type: 'Full-time', skills: ['Bricklaying', 'Stone Masonry', 'Concrete Mixing', 'Scaffolding']),
  Job(id: '49', title: 'Wind Turbine Maintenance Technician', company: 'Nordic Energy', location: 'Copenhagen, Denmark', salary: '£42,000 - £54,000 / yr', type: 'Full-time', skills: ['Wind Turbines', 'Height Safety', 'Electrical Maintenance', 'Hydraulics']),
  Job(id: '50', title: 'High-Voltage Powerline Technician', company: 'GridPower Utility', location: 'Columbus, OH', salary: '£70,000 - £92,000 / yr', type: 'Full-time', skills: ['High Voltage Wiring', 'Bucket Truck Operation', 'Power Grid Repair']),

  // --- AVIATION, MARITIME & TRANSPORTATION (51–62) ---
  Job(id: '51', title: 'Commercial Airline First Officer Pilot', company: 'Emirates Airline', location: 'Dubai, UAE', salary: '£360,000 - £480,000 / yr', type: 'Full-time', skills: ['Flight Hours', 'FAA/EASA License', 'Navigation', 'Aviation Safety']),
  Job(id: '52', title: 'Air Traffic Controller', company: 'Federal Aviation Admin', location: 'Atlanta, GA', salary: '£115,000 - £145,000 / yr', type: 'Full-time', skills: ['Radar Navigation', 'Airspace Safety', 'Radio Communication', 'Stress Management']),
  Job(id: '53', title: 'International Aircraft Maintenance Engineer', company: 'Lufthansa Technik', location: 'Frankfurt, Germany', salary: '£62,000 - £80,000 / yr', type: 'Full-time', skills: ['Turbine Engines', 'Avionics', 'Aircraft Inspection', 'EASA Part-66']),
  Job(id: '54', title: 'Flight Attendant & Cabin Safety Manager', company: 'Qatar Airways', location: 'Doha, Qatar', salary: '£120,000 - £160,000 / yr', type: 'Full-time', skills: ['In-flight Safety', 'Customer Service', 'First Aid', 'Bilingual']),
  Job(id: '55', title: 'Deep-Sea Cargo Ship Captain / Master', company: 'Maersk Line', location: 'Rotterdam, Netherlands', salary: '£110,000 - £140,000 / yr', type: 'Full-time', skills: ['Marine Navigation', 'Ship Operations', 'Maritime Law', 'Crew Management']),
  Job(id: '56', title: 'Marine Chief Engineer Specialist', company: 'Oceanic Freight', location: 'Singapore', salary: '£120,000 - £150,000 / yr', type: 'Full-time', skills: ['Marine Diesel Engines', 'Ship Propulsion', 'Hydraulic Systems']),
  Job(id: '57', title: 'Freight Logistics Train Driver', company: 'Pacific Rail Services', location: 'Chicago, IL', salary: '£68,000 - £88,000 / yr', type: 'Full-time', skills: ['Train Operation', 'Railway Safety', 'Signal Controls', 'Heavy Haul']),
  Job(id: '58', title: 'Port Crane Operator Specialist', company: 'Global Container Terminals', location: 'Los Angeles, CA', salary: '£65,000 - £85,000 / yr', type: 'Full-time', skills: ['Gantry Crane', 'Cargo Handling', 'Safety Standards', 'Heavy Machinery']),
  Job(id: '59', title: 'Long-Haul Commercial Truck Driver', company: 'CrossCountry Logistics', location: 'Dallas, TX', salary: '£60,000 - £80,000 / yr', type: 'Full-time', skills: ['CDL Class A', 'Route Planning', 'Logistics', 'Vehicle Safety Inspection']),
  Job(id: '60', title: 'Metro Transit System Operator', company: 'TFL Rail', location: 'London, UK', salary: '£45,000 - £56,000 / yr', type: 'Full-time', skills: ['Rail Signaling', 'Public Safety', 'Timetable Management', 'Customer Service']),
  Job(id: '61', title: 'Helicopter Rescue & Utility Pilot', company: 'Alpine Air Services', location: 'Zurich, Switzerland', salary: '£110,000 - £135,000 / yr', type: 'Full-time', skills: ['Rotary Aircraft', 'Mountain Flying', 'Emergency Rescue', 'FAA/EASA']),
  Job(id: '62', title: 'Harbor Pilot & Tugboat Captain', company: 'Port Authority', location: 'Sydney, Australia', salary: '£130,000 - £160,000 / yr', type: 'Full-time', skills: ['Harbor Navigation', 'Tugboat Control', 'Maritime Safety', 'Tide Assessment']),

  // --- AGRICULTURE, ENVIRONMENT & RENEWABLES (63–72) ---
  Job(id: '63', title: 'Agronomist & Crop Science Consultant', company: 'AgriTech Holdings', location: 'Sao Paulo, Brazil', salary: '£120,000 - £160,000 / yr', type: 'Full-time', skills: ['Crop Management', 'Soil Analysis', 'Pesticide Safety', 'Irrigation']),
  Job(id: '64', title: 'Environmental Compliance Inspector', company: 'EcoProtection Agency', location: 'Seattle, WA', salary: '£64,000 - £82,000 / yr', type: 'Full-time', skills: ['Environmental Law', 'Water Quality', 'Waste Management', 'Auditing']),
  Job(id: '65', title: 'Forestry & Wildlife Conservationist', company: 'National Parks Trust', location: 'Vancouver, BC', salary: '£58,000 - £74,000 / yr', type: 'Full-time', skills: ['Forestry Management', 'Wildlife Tracking', 'GIS Mapping', 'Conservation']),
  Job(id: '66', title: 'Commercial Hydroponics Farm Operator', company: 'Vertical Greens', location: 'Amsterdam, Netherlands', salary: '£42,000 - £54,000 / yr', type: 'Full-time', skills: ['Hydroponics', 'Nutrient Mixes', 'Vertical Farming', 'Automated Climate']),
  Job(id: '67', title: 'Hydrologist & Water Resources Engineer', company: 'AquaPure Systems', location: 'Perth, Australia', salary: '£85,000 - £105,000 / yr', type: 'Full-time', skills: ['Groundwater Modeling', 'GIS', 'Water Quality', 'Hydraulics']),
  Job(id: '68', title: 'Biomass Energy Plant Operator', company: 'BioEnergy Global', location: 'Stockholm, Sweden', salary: '£48,000 - £60,000 / yr', type: 'Full-time', skills: ['Biomass Conversion', 'Boiler Operation', 'Power Generation', 'Safety']),
  Job(id: '69', title: 'Commercial Beekeeping Specialist', company: 'HoneyBee Organics', location: 'Wellington, New Zealand', salary: '£48,000 - £60,000 / yr', type: 'Full-time', skills: ['Apiculture', 'Hive Management', 'Honey Extraction', 'Pest Control']),
  Job(id: '70', title: 'Solar Farm Project Manager', company: 'SunGrid Energy', location: 'Madrid, Spain', salary: '£58,000 - £75,000 / yr', type: 'Full-time', skills: ['Photovoltaic Systems', 'Project Management', 'Grid Connection', 'Budgeting']),
  Job(id: '71', title: 'Aquaculture Fish Hatchery Specialist', company: 'Ocean Harvest', location: 'Bergen, Norway', salary: '£52,000 - £65,000 / yr', type: 'Full-time', skills: ['Salmon Farming', 'Water Chemistry', 'Fish Health', 'Feed Management']),
  Job(id: '72', title: 'Urban Farm Sustainability Specialist', company: 'CityGreen Solutions', location: 'Tokyo, Japan', salary: '£60,000 - £80,000 / yr', type: 'Full-time', skills: ['Urban Agriculture', 'Composting', 'Resource Recycling', 'Community Engagement']),

  // --- CREATIVE, MEDIA & ENTERTAINMENT (73–82) ---
  Job(id: '73', title: '3D Animator & Motion Graphics Artist', company: 'Pixellated Studios', location: 'Los Angeles, CA', salary: '£78,000 - £98,000 / yr', type: 'Full-time', skills: ['Blender', 'Maya', 'After Effects', '3D Rigging', 'Keyframing']),
  Job(id: '74', title: 'Video Game Level Designer', company: 'Unreal Game Studios', location: 'Montreal, QC', salary: '£70,000 - £92,000 / yr', type: 'Full-time', skills: ['Unity 3D', 'Unreal Engine', 'Level Design', 'C#', 'Environment Art']),
  Job(id: '75', title: 'Professional Video Editor & Colorist', company: 'MediaHouse Productions', location: 'London, UK', salary: '£42,000 - £56,000 / yr', type: 'Full-time', skills: ['Premiere Pro', 'DaVinci Resolve', 'Color Grading', 'Sound Design']),
  Job(id: '76', title: 'Senior Copywriter & Brand Strategist', company: 'Creative Spark Agency', location: 'Remote', salary: '£62,000 - £80,000 / yr', type: 'Full-time', skills: ['Copywriting', 'Content Strategy', 'Brand Identity', 'SEO Writing']),
  Job(id: '77', title: 'Sound Engineer & Audio Producer', company: 'SoundWave Studios', location: 'Nashville, TN', salary: '£55,000 - £75,000 / yr', type: 'Full-time', skills: ['Pro Tools', 'Audio Mixing', 'Studio Recording', 'Microphone Setup']),
  Job(id: '78', title: 'Fashion Designer & Textile Specialist', company: 'Moda International', location: 'Milan, Italy', salary: '£50,000 - £68,000 / yr', type: 'Full-time', skills: ['Fashion Sketching', 'Pattern Making', 'Textile Selection', 'Garment Fitting']),
  Job(id: '79', title: 'Commercial Photographer & Retoucher', company: 'Vogue Visuals', location: 'Paris, France', salary: '£38,000 - £52,000 / yr', type: 'Contract', skills: ['Lightroom', 'Photoshop', 'Studio Lighting', 'Commercial Photography']),
  Job(id: '80', title: 'Public Relations (PR) Account Manager', company: 'Publicity Pro', location: 'New York, NY', salary: '£72,000 - £90,000 / yr', type: 'Full-time', skills: ['Media Relations', 'Press Releases', 'Crisis Management', 'Branding']),
  Job(id: '81', title: 'UI Concept Artist & Illustrator', company: 'Mythic Games', location: 'Helsinki, Finland', salary: '£48,000 - £62,000 / yr', type: 'Full-time', skills: ['Digital Painting', 'Photoshop', 'Character Design', 'Concept Art']),
  Job(id: '82', title: 'Broadcast Journalist & News Anchor', company: 'Global News Network', location: 'Washington, DC', salary: '£82,000 - £110,000 / yr', type: 'Full-time', skills: ['Investigative Reporting', 'Live Telecast', 'Interviewing', 'News Writing']),

  // --- SERVICES, HOSPITALITY & SECURITY (83–92) ---
  Job(id: '83', title: 'Commercial Cleaning Specialist', company: 'Sparkle Clean Co.', location: 'Miami, FL', salary: '£35,000 - £45,000 / yr', type: 'Part-time', skills: ['Sanitization', 'Floor Care', 'Hazardous Materials Safety', 'Equipment']),
  Job(id: '84', title: '5-Star Hotel General Manager', company: 'Grand Horizon Resort', location: 'Paris, France', salary: '£85,000 - £115,000 / yr', type: 'Full-time', skills: ['Hotel Management', 'Hospitality', 'Budgeting', 'Staff Supervision']),
  Job(id: '85', title: 'Executive Head Chef (Fine Dining)', company: 'Gourmet Bistro', location: 'Lyons, France', salary: '£60,000 - £80,000 / yr', type: 'Full-time', skills: ['Culinary Arts', 'Menu Design', 'Kitchen Leadership', 'Food Safety']),
  Job(id: '86', title: 'Corporate Security & Close Protection Lead', company: 'Vanguard Security', location: 'Johannesburg, South Africa', salary: '£45,000 - £60,000 / yr', type: 'Full-time', skills: ['Risk Assessment', 'Executive Protection', 'Surveillance', 'First Aid']),
  Job(id: '87', title: 'Commercial Pest Control Specialist', company: 'TermiteGuard', location: 'Houston, TX', salary: '£42,000 - £55,000 / yr', type: 'Full-time', skills: ['Chemical Safety', 'Pest Inspection', 'Customer Service', 'Equipment Operation']),
  Job(id: '88', title: 'Commercial Bakery Operations Specialist', company: 'Artisan Breads', location: 'Vienna, Austria', salary: '£34,000 - £44,000 / yr', type: 'Full-time', skills: ['Baking', 'Dough Prep', 'Industrial Ovens', 'Food Hygiene']),
  Job(id: '89', title: 'Airport Passenger Service Agent', company: 'Swissport International', location: 'Toronto, ON', salary: '£38,000 - £48,000 / yr', type: 'Full-time', skills: ['Check-in Systems', 'Customer Care', 'Baggage Handling', 'Bilingual']),
  Job(id: '90', title: 'Professional Event Coordinator', company: 'Summit Events', location: 'Barcelona, Spain', salary: '£36,000 - £48,000 / yr', type: 'Full-time', skills: ['Event Planning', 'Vendor Management', 'Budgeting', 'Logistics']),
  Job(id: '91', title: 'Private Estate Caretaker & Groundskeeper', company: 'Heritage Estates', location: 'Oxford, UK', salary: '£32,000 - £42,000 / yr', type: 'Full-time', skills: ['Property Maintenance', 'Gardening', 'Security', 'Handyman Skills']),
  Job(id: '92', title: 'Cruise Ship Recreation Director', company: 'Royal Caribbean Lines', location: 'Miami, FL (At Sea)', salary: '£50,000 - £68,000 / yr', type: 'Full-time', skills: ['Event Hosting', 'Customer Relations', 'Safety Certified', 'Public Speaking']),

  // --- BUSINESS, FINANCE & LEGAL (93–100) ---
  Job(id: '93', title: 'Digital Marketing & SEO Specialist', company: 'GrowthFuel Agency', location: 'Remote', salary: '£65,000 - £80,000 / yr', type: 'Full-time', skills: ['SEO', 'Google Ads', 'Content Strategy', 'Google Analytics']),
  Job(id: '94', title: 'International Banking Risk Analyst', company: 'Barclays International', location: 'London, UK', salary: '£65,000 - £85,000 / yr', type: 'Full-time', skills: ['Financial Modeling', 'Excel', 'Python', 'Risk Management']),
  Job(id: '95', title: 'Human Resources (HR) Business Partner', company: 'TalentPulse', location: 'Singapore', salary: '£80,000 - £102,000 / yr', type: 'Full-time', skills: ['Talent Acquisition', 'Employee Relations', 'HRIS', 'Payroll']),
  Job(id: '96', title: 'Corporate Attorney & Legal Counsel', company: 'Global Legal Partners', location: 'New York, NY', salary: '£170,000 - £220,000 / yr', type: 'Full-time', skills: ['Corporate Law', 'Contract Negotiation', 'Compliance', 'Litigation']),
  Job(id: '97', title: 'Certified Public Accountant (CPA Audit)', company: 'KPMG International', location: 'Chicago, IL', salary: '£82,000 - £105,000 / yr', type: 'Full-time', skills: ['Auditing', 'Taxation', 'GAAP', 'Financial Statements']),
  Job(id: '98', title: 'Investment Banking Analyst', company: 'Goldman Sachs', location: 'Hong Kong', salary: '£65,000 - £85,000 / yr', type: 'Full-time', skills: ['Valuation', 'M&A Analysis', 'Financial Modeling', 'Pitch Decks']),
  Job(id: '99', title: 'Supply Chain Procurement Manager', company: 'LogiGlobal Freight', location: 'Rotterdam, Netherlands', salary: '£80,000 - £105,000 / yr', type: 'Full-time', skills: ['Logistics', 'Procurement', 'SAP', 'Vendor Relations']),
  Job(id: '100', title: 'Agile Senior Technical Project Manager', company: 'Agile Innovations', location: 'Sydney, Australia', salary: '£125,000 - £150,000 / yr', type: 'Full-time', skills: ['Scrum Master', 'Jira', 'Agile', 'Budgeting', 'Risk Assessment']),

  // --- ADDITIONAL GLOBAL OPPORTUNITIES (101–125) ---
  Job(id: '101', title: 'Senior Robotics & Mechatronics Engineer', company: 'Yaskawa Robotics', location: 'Tokyo, Japan (Hybrid)', salary: '£75,000 - £95,000 / yr', type: 'Full-time', skills: ['ROS', 'C++', 'Kinematics', 'Automation', 'Sensors']),
  Job(id: '102', title: 'Fintech Backend Go Developer', company: 'Flutterwave', location: 'Lagos, Nigeria', salary: '£35,000 - £50,000 / yr', type: 'Full-time', skills: ['Golang', 'Microservices', 'Payment Gateways', 'Docker', 'Redis']),
  Job(id: '103', title: 'Renewable Energy Grid Planner', company: 'Enel Green Power', location: 'Rome, Italy', salary: '£55,000 - £72,000 / yr', type: 'Full-time', skills: ['Smart Grids', 'Wind Energy', 'Power Systems', 'PLC']),
  Job(id: '104', title: 'Lead AI Prompt Engineer & LLM Specialist', company: 'Cognitive AI', location: 'Remote (Worldwide)', salary: '£90,000 - £120,000 / yr', type: 'Contract', skills: ['Python', 'LangChain', 'Prompt Design', 'PyTorch', 'OpenAI API']),
  Job(id: '105', title: 'Offshore Wind Farm Structural Engineer', company: 'Ørsted', location: 'Copenhagen, Denmark', salary: '£68,000 - £85,000 / yr', type: 'Full-time', skills: ['CAD', 'Offshore Structures', 'Wind Energy', 'Finite Element Analysis']),
  Job(id: '106', title: 'Mobile Flutter Architect', company: 'Grab Holdings', location: 'Singapore (Hybrid)', salary: '£85,000 - £110,000 / yr', type: 'Full-time', skills: ['Flutter', 'Dart', 'Clean Architecture', 'Bloc', 'CI/CD']),
  Job(id: '107', title: 'High-Speed Rail Systems Technician', company: 'SNCF Mobility', location: 'Paris, France', salary: '£42,000 - £54,000 / yr', type: 'Full-time', skills: ['Rail Transport', 'Electrical Testing', 'Signal Control', 'Safety']),
  Job(id: '108', title: 'Commercial Pilot - Cargo Operations', company: 'Cargolux Airlines', location: 'Luxembourg City, Luxembourg', salary: '£110,000 - £140,000 / yr', type: 'Full-time', skills: ['Boeing 747', 'Flight Safety', 'Air Transport', 'Navigation']),
  Job(id: '109', title: 'AgriTech Drone Specialist & Pilot', company: 'Embrapa Ag', location: 'Brasilia, Brazil', salary: '£28,000 - £38,000 / yr', type: 'Full-time', skills: ['Drone Piloting', 'Multispectral Imaging', 'Crop Monitoring', 'GIS']),
  Job(id: '110', title: 'Neubrutalism UI/UX Product Designer', company: 'Creative Labs EU', location: 'Berlin, Germany', salary: '£62,000 - £78,000 / yr', type: 'Full-time', skills: ['Figma', 'UI Design', 'Design Systems', 'Auto Layout', 'Wireframing']),
  Job(id: '111', title: 'Hospital Surgical ICU Consultant Doctor', company: 'King Faisal Specialist Hospital', location: 'Riyadh, Saudi Arabia', salary: '£150,000 - £190,000 / yr', type: 'Full-time', skills: ['Critical Care', 'Surgery', 'Patient Assessment', 'Internal Medicine']),
  Job(id: '112', title: 'Subsea Pipeline Integrity Engineer', company: 'Petrobras', location: 'Rio de Janeiro, Brazil', salary: '£70,000 - £90,000 / yr', type: 'Full-time', skills: ['Subsea Engineering', 'Corrosion Analysis', 'Offshore Energy', 'Inspection']),
  Job(id: '113', title: 'Cyber Security Penetration Tester', company: 'DarkMatter Cybersecurity', location: 'Dubai, UAE', salary: '£80,000 - £105,000 / yr', type: 'Full-time', skills: ['Ethical Hacking', 'Burp Suite', 'Metasploit', 'Network Security']),
  Job(id: '114', title: 'E-Commerce Logistics & Operations Lead', company: 'Jumia Group', location: 'Nairobi, Kenya', salary: '£30,000 - £42,000 / yr', type: 'Full-time', skills: ['Supply Chain', 'Warehouse Operations', 'Last-Mile Delivery', 'Logistics']),
  Job(id: '115', title: 'Senior Cloud Security Architect', company: 'Canva', location: 'Sydney, Australia (Hybrid)', salary: '£100,000 - £125,000 / yr', type: 'Full-time', skills: ['AWS Security', 'Terraform', 'Zero Trust', 'Kubernetes', 'Python']),
  Job(id: '116', title: 'International Patent & Tech Attorney', company: 'Baker McKenzie', location: 'Zurich, Switzerland', salary: '£140,000 - £175,000 / yr', type: 'Full-time', skills: ['IP Law', 'Patent Prosecution', 'Tech Licensing', 'Corporate Law']),
  Job(id: '117', title: 'Game Engine Physics Programmer', company: 'CD Projekt Red', location: 'Warsaw, Poland', salary: '£55,000 - £72,000 / yr', type: 'Full-time', skills: ['C++', 'Unreal Engine', 'Physics Simulation', 'Math', 'Optimization']),
  Job(id: '118', title: 'Conservation Biologist & Marine Specialist', company: 'Great Barrier Reef Foundation', location: 'Cairns, Australia', salary: '£48,000 - £60,000 / yr', type: 'Full-time', skills: ['Marine Biology', 'Data Collection', 'Diving Certification', 'Scuba']),
  Job(id: '119', title: 'Commercial Solar Energy Installer', company: 'SunPower Global', location: 'Cape Town, South Africa', salary: '£22,000 - £30,000 / yr', type: 'Full-time', skills: ['Solar Panels', 'PV Inverters', 'Electrical Wiring', 'Rooftop Safety']),
  Job(id: '120', title: 'Full Stack Django & React Developer', company: 'Shopify Partners', location: 'Ottawa, ON (Remote)', salary: '£70,000 - £88,000 / yr', type: 'Full-time', skills: ['Django', 'Python', 'React', 'TypeScript', 'GraphQL']),
  Job(id: '121', title: 'Automotive Embedded Software Developer', company: 'Volvo Car Group', location: 'Gothenburg, Sweden', salary: '£60,000 - £76,000 / yr', type: 'Full-time', skills: ['AUTOSAR', 'Embedded C', 'CAN Bus', 'EV Systems', 'ISO 26262']),
  Job(id: '122', title: 'Airport Airside Operations Lead', company: 'Changi Airport Group', location: 'Singapore', salary: '£58,000 - £74,000 / yr', type: 'Full-time', skills: ['Airfield Safety', 'Flight Operations', 'Crisis Control', 'ICAO Standards']),
  Job(id: '123', title: '3D Character Sculptor & VFX Artist', company: 'Weta Digital', location: 'Wellington, New Zealand', salary: '£65,000 - £82,000 / yr', type: 'Full-time', skills: ['ZBrush', 'Blender', 'Texturing', 'Maya', 'Character Design']),
  Job(id: '124', title: 'Clinical Trial Data Manager', company: 'Novartis', location: 'Basel, Switzerland', salary: '£78,000 - £98,000 / yr', type: 'Full-time', skills: ['EDC Systems', 'CDISC', 'Biostatistics', 'Good Clinical Practice']),
  Job(id: '125', title: 'AI Research Scientist - Computer Vision', company: 'Naver AI Lab', location: 'Seoul, South Korea', salary: '£82,000 - £108,000 / yr', type: 'Full-time', skills: ['PyTorch', 'Computer Vision', 'Deep Learning', 'Python', 'OpenCV']),
  // --- ENERGY INDUSTRIES (126–133) ---
  Job(id: '126', title: 'Offshore Petroleum Subsea Engineer', company: 'Shell Global', location: 'Aberdeen, Scotland', salary: '£85,000 - £110,000 / yr', type: 'Full-time', skills: ['Subsea Drilling', 'Pipeline Integrity', 'Offshore Safety', 'CAD']),
  Job(id: '127', title: 'Solar Thermal Systems Technician', company: 'Solaria Energy', location: 'Seville, Spain', salary: '£42,000 - £54,000 / yr', type: 'Full-time', skills: ['Solar PV Wiring', 'PWM Controllers', 'Thermal Piping', 'Maintenance']),
  Job(id: '128', title: 'Nuclear Power Operations Specialist', company: 'EDF Energy', location: 'Lyon, France', salary: '£90,000 - £120,000 / yr', type: 'Full-time', skills: ['Reactor Safety', 'Thermodynamics', 'Nuclear Operations', 'Compliance']),
  Job(id: '129', title: 'Green Hydrogen Plant Process Engineer', company: 'Siemens Energy', location: 'Hamburg, Germany', salary: '£78,000 - £96,000 / yr', type: 'Full-time', skills: ['Electrolysis', 'Process Engineering', 'Hydrogen Storage', 'Chemical Safety']),
  Job(id: '130', title: 'Wind Farm Maintenance Specialist', company: 'Vestas Wind Systems', location: 'Aarhus, Denmark', salary: '£50,000 - £65,000 / yr', type: 'Full-time', skills: ['Turbine Repair', 'Height Safety', 'Hydraulics', 'Electrical Systems']),
  Job(id: '131', title: 'Geothermal Energy Drilling Engineer', company: 'Omat Technologies', location: 'Reykjavik, Iceland', salary: '£82,000 - £104,000 / yr', type: 'Full-time', skills: ['Geothermal Systems', 'Deep Drilling', 'Reservoir Modeling']),
  Job(id: '132', title: 'Battery Storage & Power Grid Engineer', company: 'Tesla Energy', location: 'Austin, TX', salary: '£95,000 - £125,000 / yr', type: 'Full-time', skills: ['Lithium-Ion Storage', 'Grid Interconnection', 'Power Electronics']),
  Job(id: '133', title: 'LNG Terminal Operations Manager', company: 'Chevron Energy', location: 'Doha, Qatar', salary: '£110,000 - £145,000 / yr', type: 'Full-time', skills: ['LNG Logistics', 'Safety Auditing', 'Cryogenics', 'Plant Management']),

  // --- AGRO-CHEMICALS & AGRICULTURAL SCIENCES (134–141) ---
  Job(id: '134', title: 'Senior Pesticide Formulation Chemist', company: 'Bayer CropScience', location: 'Monheim, Germany', salary: '£75,000 - £95,000 / yr', type: 'Full-time', skills: ['Chemical Formulation', 'Organic Chemistry', 'Lab Safety', 'Crop Protection']),
  Job(id: '135', title: 'Bio-Fertilizer Research Scientist', company: 'Syngenta AG', location: 'Basel, Switzerland', salary: '£88,000 - £115,000 / yr', type: 'Full-time', skills: ['Soil Microbiology', 'Nitrogen Fixation', 'Bio-Stimulants', 'Data Analysis']),
  Job(id: '136', title: 'Agro-Chemical Regulatory Affairs Lead', company: 'Corteva Agriscience', location: 'Indianapolis, IN', salary: '£80,000 - £102,000 / yr', type: 'Full-time', skills: ['EPA Compliance', 'Toxicology', 'Regulatory Filing', 'Safety Assessments']),
  Job(id: '137', title: 'Precision Agriculture Agronomist', company: 'Yara International', location: 'Oslo, Norway', salary: '£68,000 - £86,000 / yr', type: 'Full-time', skills: ['Crop Nutrition', 'Soil Testing', 'GIS Mapping', 'Field Diagnostics']),
  Job(id: '138', title: 'Plant Protection Quality Control Analyst', company: 'UPL Limited', location: 'Mumbai, India', salary: '£25,000 - £35,000 / yr', type: 'Full-time', skills: ['HPLC Testing', 'Chemical Quality Control', 'Pesticide Analysis']),
  Job(id: '139', title: 'Seed Biotechnology & Trait Scientist', company: 'KWS Saat', location: 'Einbeck, Germany', salary: '£72,000 - £92,000 / yr', type: 'Full-time', skills: ['Genetics', 'CRISPR', 'Molecular Biology', 'Plant Physiology']),
  Job(id: '140', title: 'Commercial Agrochemical Sales Representative', company: 'Nufarm', location: 'Melbourne, Australia', salary: '£58,000 - £76,000 / yr', type: 'Full-time', skills: ['Agronomy Sales', 'Crop Health', 'Client Advisory', 'Distribution']),
  Job(id: '141', title: 'Agricultural Waste Recycling Engineer', company: 'Nutrien', location: 'Saskatoon, Canada', salary: '£65,000 - £82,000 / yr', type: 'Full-time', skills: ['Composting Chemistry', 'Nutrient Recovery', 'Waste Processing']),

  // --- ENTERTAINMENT & MEDIA PRODUCTION (142–150) ---
  Job(id: '142', title: 'Lead Visual Effects (VFX) Supervisor', company: 'Industrial Light & Magic', location: 'London, UK', salary: '£95,000 - £130,000 / yr', type: 'Full-time', skills: ['Nuke', 'Houdini', 'CGI Compositing', 'On-Set VFX', '3D Asset Pipeline']),
  Job(id: '143', title: 'Unreal Engine Virtual Production Lead', company: 'Epic Games', location: 'Cary, NC', salary: '£110,000 - £140,000 / yr', type: 'Full-time', skills: ['Unreal Engine 5', 'LED Volume Production', 'Real-Time Rendering', 'C++']),
  Job(id: '144', title: 'Concert & Touring Stage Lighting Technician', company: 'PRG Live Entertainment', location: 'Los Angeles, CA', salary: '£52,000 - £70,000 / yr', type: 'Full-time', skills: ['DMX Controllers', 'Rigging Safety', 'Stage Lighting', 'Live Sound']),
  Job(id: '145', title: 'Film Studio Sound Designer & Foley Artist', company: 'Pinewood Studios', location: 'Iver, UK', salary: '£48,000 - £64,000 / yr', type: 'Full-time', skills: ['Pro Tools', 'Foley Recording', 'Audio Editing', 'Surround Sound']),
  Job(id: '146', title: 'Talent Acquisition & Casting Director', company: 'Warner Bros. Discovery', location: 'New York, NY', salary: '£78,000 - £100,000 / yr', type: 'Full-time', skills: ['Casting', 'Talent Management', 'Auditions', 'Contract Negotiation']),
  Job(id: '147', title: 'Live Broadcast Video Engineer', company: 'BBC Live Production', location: 'Manchester, UK', salary: '£45,000 - £58,000 / yr', type: 'Full-time', skills: ['OB Trucks', 'Camera Switchers', 'Broadcast Signal', 'Video Production']),
  Job(id: '148', title: 'Music Streaming Content Operations Specialist', company: 'Spotify', location: 'Stockholm, Sweden (Hybrid)', salary: '£55,000 - £72,000 / yr', type: 'Full-time', skills: ['Music Metadata', 'Copyright Licensing', 'Content Curation']),
  Job(id: '149', title: 'Interactive Theme Park Ride Engineer', company: 'Universal Creative', location: 'Orlando, FL', salary: '£88,000 - £115,000 / yr', type: 'Full-time', skills: ['Animatronics', 'PLC Automation', 'Ride Dynamics', 'Safety Protocols']),
  Job(id: '150', title: 'E-Sports Event Production Manager', company: 'ESL Gaming', location: 'Katowice, Poland', salary: '£42,000 - £58,000 / yr', type: 'Full-time', skills: ['Tournament Operations', 'Live Streaming', 'Stage Production', 'Logistics']),
];