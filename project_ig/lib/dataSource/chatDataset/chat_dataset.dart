List<Map<String, dynamic>> chatDataset = [
  {
    'userId': 'u1',
    'userName': 'jungwoonie_99',
    'profileImage': 'https://tse4.mm.bing.net/th?id=OIP.OPYBcRbci6juDHvgmoOciAHaHa&pid=Api&P=0&h=220',
    'timestamp': 'Jan 2',
    'message': 'Just captured this prototype image 📸',
    'imageUrl': 'https://example.com/products/prototype-v1.jpg',
    'isRead': true,
    'messageType': 'image'
  },
  {
    'userId': 'u2',
    'userName': 'roses_are_rosie',
    'profileImage': 'https://tse3.mm.bing.net/th?id=OIP.-pTcBXj5ZpzrVzRASGfxeQHaHa&pid=Api&P=0&h=220',
    'timestamp': 'Feb 14',
    'message': 'New UI screenshots ready for review:',
    'imageUrl': 'https://example.com/designs/ui-mockups.png',
    'isRead': false,
    'messageType': 'image'
  },
  {
    'userId': 'u3',
    'userName': 'Lork Lyhour',
    'profileImage': 'https://i.pinimg.com/474x/16/6d/cf/166dcf8265014792a3eb3551ebadedde.jpg',
    'timestamp': 'Mar 8',
    'message': 'Team photo from last conference 📷',
    'imageUrl': 'https://example.com/events/conference-2024.jpg',
    'isRead': true,
    'messageType': 'image'
  },
  {
    'userId': 'u4',
    'userName': 'Phea Sophou',
    'profileImage': 'https://i.pinimg.com/474x/55/a5/d0/55a5d027addb0c84cb2df4b6a77311b6.jpg',
    'timestamp': 'Apr 22',
    'message': 'Infographic for marketing campaign:',
    'imageUrl': 'https://example.com/marketing/q1-infographic.jpg',
    'isRead': true,
    'messageType': 'image'
  },
  {
    'userId': 'u5',
    'userName': 'Manica Smith',
    'profileImage': 'https://i.pinimg.com/474x/97/8d/12/978d121a47c20b7f10541820dd1c90b3.jpg',
    'timestamp': 'May 5',
    'message': 'Check out our new office space! 🏢',
    'imageUrl': 'https://example.com/office/new-space-360.jpg',
    'isRead': false,
    'messageType': 'image'
  },
  {
    'userId': 'u6',
    'userName': 'Harry Samit',
    'profileImage': 'https://randomuser.me/api/portraits/men/6.jpg',
    'timestamp': 'Jun 18',
    'message': 'Latest analytics dashboard preview:',
    'imageUrl': 'https://example.com/data/dashboard-v2.1.jpg',
    'isRead': false,
    'messageType': 'image'
  },
  {
    'userId': 'u7',
    'userName': 'Luna Martinez',
    'profileImage': 'https://i.pinimg.com/474x/b8/2c/09/b82c096676e7d653fac80b8695711bfb.jpg',
    'timestamp': 'Jul 11',
    'message': 'Product packaging concepts 🎁',
    'imageUrl': 'https://example.com/designs/packaging-concepts.jpg',
    'isRead': true,
    'messageType': 'image'
  },
  {
    'userId': 'u8',
    'userName': 'Raj Patel',
    'profileImage': 'https://i.pinimg.com/474x/be/94/e6/be94e6323f277445d135d5025c0d41d2.jpg',
    'timestamp': 'Aug 30',
    'message': 'Conference room setup options:',
    'imageUrl': 'https://example.com/office/room-layouts.jpg',
    'isRead': false,
    'messageType': 'image'
  },
  {
    'userId': 'u9',
    'userName': 'Sophie Kim',
    'profileImage': 'https://randomuser.me/api/portraits/women/9.jpg',
    'timestamp': 'Sep 19',
    'message': 'New brand logo variations:',
    'imageUrl': 'https://example.com/designs/logo-variants.png',
    'isRead': true,
    'messageType': 'image'
  },
  {
    'userId': 'u10',
    'userName': 'Carlos Ruiz',
    'profileImage': 'https://randomuser.me/api/portraits/men/10.jpg',
    'timestamp': 'Oct 7',
    'message': 'Factory production line photos 🏭',
    'imageUrl': 'https://example.com/manufacturing/production-line.jpg',
    'isRead': false,
    'messageType': 'image'
  },
  {
    'userId': 'u11',
    'userName': 'Emma Wilson',
    'profileImage': 'https://randomuser.me/api/portraits/women/11.jpg',
    'timestamp': 'Nov 3',
    'message': 'Just shared the meeting notes in the doc 📄',
    'fileUrl': 'https://docs.google.com/document/d/abc123',
    'isRead': true,
    'messageType': 'document'
  },
  {
    'userId': 'u12',
    'userName': 'Oliver Chen',
    'profileImage': 'https://i.pinimg.com/736x/f0/7d/9c/f07d9c15a9541d60368c47c96304f873.jpg',
    'timestamp': 'Dec 25',
    'message': 'Reminder: Server maintenance tonight at 10 PM ⚠️',
    'isRead': false,
    'messageType': 'alert'
  },
  {
    'userId': 'u13',
    'userName': 'Tola Lyzza',
    'profileImage': 'https://i.pinimg.com/736x/32/07/86/32078634c0b4fcf6f50b945720056dd4.jpg',
    'timestamp': 'Jan 15',
    'message': 'New feature demo video 🎥',
    'videoUrl': 'https://youtu.be/xyz789',
    'thumbnail': 'https://example.com/videos/thumbnails/demo.jpg',
    'isRead': true,
    'messageType': 'video'
  },
  {
    'userId': 'u14',
    'userName': 'Ethan Miller',
    'profileImage': 'https://randomuser.me/api/portraits/men/14.jpg',
    'timestamp': 'Feb 28',
    "message": "Who's joining the workshop tomorrow? ✋",
    'isRead': false,
    'messageType': 'poll'
  },
  {
    'userId': 'u15',
    'userName': 'Aria Patel',
    'profileImage': 'https://randomuser.me/api/portraits/women/15.jpg',
    'timestamp': 'Mar 12',
    'message': 'Updated budget spreadsheet 💰',
    'fileUrl': 'https://drive.google.com/file/d/xyz456',
    'isRead': true,
    'messageType': 'spreadsheet'
  },
  {
    'userId': 'u16',
    'userName': 'To Seyha',
    'profileImage': 'https://i.pinimg.com/474x/c2/6e/d9/c26ed976dbf18aae96fdac999777d9ce.jpg',
    'timestamp': 'Apr 5',
    'message': 'Happy Birthday, Sarah! 🎂🎉',
    'isRead': true,
    'messageType': 'event'
  },
  {
    'userId': 'u17',
    'userName': 'heng Sovanna',
    'profileImage': 'https://i.pinimg.com/474x/d2/28/c3/d228c3e080fe55d0c560dffa34af1b98.jpg',
    'timestamp': 'May 19',
    'message': 'Need feedback on this color scheme 🎨',
    'imageUrl': 'https://example.com/designs/color-palettes.jpg',
    'isRead': false,
    'messageType': 'image'
  },
  {
    'userId': 'u18',
    'userName': 'Nathan Kim',
    'profileImage': 'https://randomuser.me/api/portraits/men/18.jpg',
    'timestamp': 'Jun 30',
    'message': 'New security protocols document 🔒',
    'fileUrl': 'https://example.com/files/security-v2.pdf',
    'isRead': true,
    'messageType': 'pdf'
  },
  {
    'userId': 'u19',
    'userName': 'Sophia Ahmed',
    'profileImage': 'https://randomuser.me/api/portraits/women/19.jpg',
    'timestamp': 'Jul 21',
    'message': 'Team building event RSVP 📅',
    'eventDate': '2025-02-15',
    'isRead': false,
    'messageType': 'calendar'
  },
  {
    'userId': 'u20',
    'userName': 'Sem Pisey',
    'profileImage': 'https://i.pinimg.com/474x/cc/4b/0d/cc4b0dc3cb704e1e865f1622dd43b0eb.jpg',
    'timestamp': 'Aug 9',
    'message': 'Urgent: Production issue detected! 🚨',
    'isRead': false,
    'messageType': 'alert',
    'priority': 'high'
  },
  {
    'userId': 'u21',
    'userName': 'vy dalin',
    'profileImage': 'https://i.pinimg.com/474x/56/2c/b8/562cb8eaee37584a344fed7c80e81c99.jpg',
    'timestamp': 'Sep 14',
    'message': 'Planning the next sprint backlog 📝',
    'isRead': false,
    'messageType': 'text'
  },
  {
    'userId': 'u22',
    'userName': 'Liam Johnson',
    'profileImage': 'https://randomuser.me/api/portraits/men/22.jpg',
    'timestamp': 'Oct 3',
    'message': 'Server upgrade scheduled for this weekend.',
    'isRead': true,
    'messageType': 'alert'
  },
  {
    'userId': 'u23',
    'userName': 'Yan DAlis',
    'profileImage': 'https://i.pinimg.com/474x/61/c4/9a/61c49a63ec49fcdde0fee1c7338abb98.jpg',
    'timestamp': 'Nov 27',
    'message': 'Attached is the latest sales report.',
    'fileUrl': 'https://drive.google.com/file/d/sales789',
    'isRead': false,
    'messageType': 'document'
  },
  {
    'userId': 'u24',
    'userName': 'Mai SreyNai',
    'profileImage': 'https://i.pinimg.com/474x/f1/92/d6/f192d66e9dad3f99dcd07b47345b25be.jpg',
    'timestamp': 'Dec 12',
    'message': 'Check out this awesome diagram!',
    'imageUrl': 'https://example.com/diagrams/architecture.png',
    'isRead': true,
    'messageType': 'image'
  },
  {
    'userId': 'u25',
    'userName': 'To Mouysorng',
    'profileImage': 'https://i.pinimg.com/474x/a6/ca/5f/a6ca5fe6df4be0a3b5598cab43129a88.jpg',
    'timestamp': 'Jan 18',
    'message': 'Launching the new marketing campaign next week.',
    'isRead': false,
    'messageType': 'text'
  },
  {
    'userId': 'u26',
    'userName': 'Pich Rozany',
    'profileImage': 'https://i.pinimg.com/474x/a0/32/da/a032da4d0eb4af41e0467e158729df69.jpg',
    'timestamp': 'Feb 7',
    'message': 'Here is the video tutorial for the new feature.',
    'videoUrl': 'https://youtu.be/abc123',
    'thumbnail': 'https://example.com/videos/thumbnails/tutorial.jpg',
    'isRead': true,
    'messageType': 'video'
  },
  {
    'userId': 'u27',
    'userName': 'Sophia Lee',
    'profileImage': 'https://i.pinimg.com/474x/3f/41/c3/3f41c310dd61957b66311c582b9fdddb.jpg',
    'timestamp': 'Mar 25',
    'message': 'Team outing scheduled for next month.',
    'eventDate': '2025-03-10',
    'isRead': false,
    'messageType': 'calendar'
  },
  {
    'userId': 'u28',
    'userName': 'James Walker',
    'profileImage': 'https://randomuser.me/api/portraits/men/28.jpg',
    'timestamp': 'Apr 16',
    'message': 'Budget allocation for Q2 has been updated.',
    'fileUrl': 'https://drive.google.com/file/d/budgetQ2',
    'isRead': true,
    'messageType': 'spreadsheet'
  },
  {
    'userId': 'u29',
    'userName': 'Marita_jay',
    'profileImage': 'https://i.pinimg.com/474x/83/51/fd/8351fd1cc56b9e5c1a1e579425b33f2b.jpg',
    'timestamp': 'May 23',
    'message': 'New security measures implemented.',
    'fileUrl': 'https://example.com/files/security-update.pdf',
    'isRead': false,
    'messageType': 'pdf'
  },
  {
    'userId': 'u30',
    'userName': 'Menghak_Rorn',
    'profileImage': 'https://i.pinimg.com/474x/f3/dd/81/f3dd811ff986d0ca0a4e2d2b32ba316c.jpg',
    'timestamp': 'Jun 10',
    'message': 'Poll: Preferred time for the next meeting?',
    'isRead': true,
    'messageType': 'poll'
  },
  {
    'userId': 'u31',
    'userName': 'Phea Sophanmai',
    'profileImage': 'https://i.pinimg.com/474x/af/f8/fb/aff8fbd62db426fe37e47a39d6d3dd63.jpg',
    'timestamp': 'Jul 4',
    'message': 'Uploaded the new design prototypes.',
    'imageUrl': 'https://example.com/designs/prototypes.png',
    'isRead': false,
    'messageType': 'image'
  },
  {
    'userId': 'u32',
    'userName': 'Elijah Young',
    'profileImage': 'https://randomuser.me/api/portraits/men/32.jpg',
    'timestamp': 'Aug 19',
    'message': 'Reminder: Code freeze ends tomorrow.',
    'isRead': true,
    'messageType': 'alert'
  },
  {
    'userId': 'u33',
    'userName': 'Charlotte King',
    'profileImage': 'https://i.pinimg.com/474x/1d/58/5b/1d585bbac5f41637d6ef81bd00cfad85.jpg',
    'timestamp': 'Sep 8',
    'message': 'Documenting the API endpoints.',
    'fileUrl': 'https://docs.google.com/document/d/api-docs',
    'isRead': false,
    'messageType': 'document'
  },
  {
    'userId': 'u34',
    'userName': 'Sophea_Reach',
    'profileImage': 'https://i.pinimg.com/474x/4b/ef/f8/4beff87ee70f72e16218feaa60978152.jpg',
    'timestamp': 'Oct 29',
    'message': 'Latest product demo video available.',
    'videoUrl': 'https://youtu.be/demo456',
    'thumbnail': 'https://example.com/videos/thumbnails/demo2.jpg',
    'isRead': true,
    'messageType': 'video'
  },
  {
    'userId': 'u35',
    'userName': 'Fa_Fa',
    'profileImage': 'https://i.pinimg.com/474x/6e/e0/ee/6ee0eead78888d4f263a5081663f8f2c.jpg',
    'timestamp': 'Nov 11',
    'message': 'Scheduled maintenance on Sunday.',
    'isRead': false,
    'messageType': 'alert'
  },
  {
    'userId': 'u36',
    'userName': 'Mut Mariyaa',
    'profileImage': 'https://i.pinimg.com/736x/b0/3a/26/b03a26e167ba0099af4e5b5eab93e1e9.jpg',
    'timestamp': 'Dec 3',
    'message': 'Sharing the latest client feedback.',
    'fileUrl': 'https://drive.google.com/file/d/feedback123',
    'isRead': true,
    'messageType': 'document'
  },
  {
    'userId': 'u37',
    'userName': 'long uhai',
    'profileImage': 'https://i.pinimg.com/474x/3e/a3/bf/3ea3bfb755ce12ef3f5a74b3ffcef7d1.jpg',
    'timestamp': 'Jan 27',
    'message': 'New onboarding materials uploaded.',
    'fileUrl': 'https://example.com/files/onboarding.pdf',
    'isRead': false,
    'messageType': 'pdf'
  },
  {
    'userId': 'u38',
    'userName': 'Pich Bunrath',
    'profileImage': 'https://i.pinimg.com/474x/f2/18/fb/f218fb12989d3858f8aaac6788105b1d.jpg',
    'timestamp': 'Feb 16',
    'message': 'Survey: Rate the new feature.',
    'isRead': true,
    'messageType': 'poll'
  },
  {
    'userId': 'u39',
    'userName': 'Hong Lihor',
    'profileImage': 'https://i.pinimg.com/474x/42/ac/91/42ac911d58245fc071d6408e600bed19.jpg',
    'timestamp': 'Mar 5',
    'message': 'Updated project roadmap attached.',
    'fileUrl': 'https://drive.google.com/file/d/roadmap789',
    'isRead': false,
    'messageType': 'spreadsheet'
  },
  {
    'userId': 'u40',
    'userName': 'Bo Sreyneath',
    'profileImage': 'https://i.pinimg.com/474x/8f/a0/1c/8fa01cd1433c3e34fbc2f47fe9a5d6a7.jpg',
    'timestamp': 'Apr 18',
    'message': 'Celebrating our team\'s success!',
    'imageUrl': 'https://example.com/images/team-success.jpg',
    'isRead': true,
    'messageType': 'image'
  }
];
