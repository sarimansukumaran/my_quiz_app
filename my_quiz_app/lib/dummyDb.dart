class DummyDb {
  static const List<Map<String, dynamic>> mainQuizListDb = [
    {
      "image": "asset/images/book.png",
      "sub": "Maths",
      "subQuestion": [
        {
          "question": "What is the derivative of 3x^2 + 5x - 2?",
          "option": ["6x + 5", "3x^2", "6x - 5", "5x^2"],
          "answerIndex": 0
        },
        {
          "question": "What is the value of log₃(81)?",
          "option": ["4", "5", "3", "6"],
          "answerIndex": 3
        },
        {
          "question": "Solve for x: 2^x = 32",
          "option": ["3", "4", "5", "6"],
          "answerIndex": 2
        },
        {
          "question":
              "If sin(θ) = 3/5, what is cos(θ) given θ is in the first quadrant?",
          "option": ["4/5", "5/3", "5/4", "3/4"],
          "answerIndex": 0
        },
        {
          "question": "What is the integral of x^3 with respect to x?",
          "option": ["(1/4)x^4 + C", "(1/3)x^3 + C", "x^4 + C", "4x^3 + C"],
          "answerIndex": 0
        },
        {
          "question": "Solve for x in the equation: log₁₀(x) = 3.",
          "option": ["10", "100", "1000", "10000"],
          "answerIndex": 2
        },
        {
          "question": "What is the value of cos(π/4)?",
          "option": ["1/2", "√2/2", "√3/2", "1"],
          "answerIndex": 1
        },
        {
          "question": "What is the determinant of the matrix [[2, 3], [1, 4]]?",
          "option": ["5", "8", "7", "-5"],
          "answerIndex": 2
        },
        {
          "question":
              "What is the solution to the quadratic equation: x^2 - 6x + 9 = 0?",
          "option": ["x = 3", "x = -3", "x = 6", "No real solutions"],
          "answerIndex": 0
        },
        {
          "question": "Find the value of tan(45°).",
          "option": ["1", "0", "√3", "1/√3"],
          "answerIndex": 0
        }
      ]
    },
    {
      "image": "asset/images/physics_2923584.png",
      "sub": "Physics",
      "subQuestion": [
        {
          "question":
              "What is the unit of force in the International System of Units (SI)?",
          "option": ["Joule", "Pascal", "Newton", "Watt"],
          "answerIndex": 2
        },
        {
          "question": "Which law of motion explains the concept of inertia?",
          "option": [
            "Newton's First Law",
            "Newton's Second Law",
            "Newton's Third Law",
            "Law of Gravitation"
          ],
          "answerIndex": 0
        },
        {
          "question": "What is the speed of light in a vacuum?",
          "option": [
            "3 x 10^6 m/s",
            "3 x 10^8 m/s",
            "3 x 10^10 m/s",
            "3 x 10^12 m/s"
          ],
          "answerIndex": 1
        },
        {
          "question": "What is the formula for calculating kinetic energy?",
          "option": ["KE = mv^2", "KE = 1/2 mv^2", "KE = mg", "KE = ma"],
          "answerIndex": 1
        },
        {
          "question":
              "Which fundamental force is responsible for keeping planets in orbit around the sun?",
          "option": [
            "Electromagnetic Force",
            "Weak Nuclear Force",
            "Strong Nuclear Force",
            "Gravitational Force"
          ],
          "answerIndex": 3
        },
        {
          "question":
              "What happens to the frequency of a wave if its wavelength is doubled, assuming the speed is constant?",
          "option": [
            "Frequency doubles",
            "Frequency is halved",
            "Frequency remains the same",
            "Frequency quadruples"
          ],
          "answerIndex": 1
        },
        {
          "question":
              "Which particle is responsible for electricity in conductors?",
          "option": ["Protons", "Neutrons", "Electrons", "Positrons"],
          "answerIndex": 2
        },
        {
          "question": "What is the acceleration due to gravity on Earth?",
          "option": ["9.8 m/s²", "8.9 m/s²", "10.5 m/s²", "7.2 m/s²"],
          "answerIndex": 0
        },
        {
          "question":
              "Which type of lens is used to correct short-sightedness (myopia)?",
          "option": [
            "Convex lens",
            "Concave lens",
            "Cylindrical lens",
            "Bifocal lens"
          ],
          "answerIndex": 1
        },
        {
          "question": "What is Ohm's Law?",
          "option": ["V = IR", "P = IV", "E = mc^2", "F = ma"],
          "answerIndex": 0
        }
      ],
    },
    {
      "image": "asset/images/molecule_14686851.png",
      "sub": "Chemistry",
      "subQuestion": [
        {
          "question": "What is the chemical formula for water?",
          "option": ["H2O", "O2", "CO2", "H2O2"],
          "answerIndex": 0
        },
        {
          "question": "Which gas is most abundant in Earth's atmosphere?",
          "option": ["Oxygen", "Nitrogen", "Carbon Dioxide", "Argon"],
          "answerIndex": 1
        },
        {
          "question": "What is the pH of a neutral solution?",
          "option": ["0", "7", "14", "1"],
          "answerIndex": 1
        },
        {
          "question": "What is the main component of natural gas?",
          "option": ["Methane", "Ethane", "Butane", "Propane"],
          "answerIndex": 0
        },
        {
          "question": "What is the chemical symbol for gold?",
          "option": ["Au", "Ag", "Pb", "Fe"],
          "answerIndex": 0
        },
        {
          "question": "Which element is a noble gas?",
          "option": ["Oxygen", "Helium", "Hydrogen", "Nitrogen"],
          "answerIndex": 1
        },
        {
          "question": "What is the molar mass of water (H2O)?",
          "option": ["18 g/mol", "16 g/mol", "20 g/mol", "22 g/mol"],
          "answerIndex": 0
        },
        {
          "question": "Which acid is found in the stomach?",
          "option": [
            "Sulfuric Acid",
            "Hydrochloric Acid",
            "Nitric Acid",
            "Acetic Acid"
          ],
          "answerIndex": 1
        },
        {
          "question": "What is the common name of NaCl?",
          "option": ["Baking Soda", "Vinegar", "Table Salt", "Bleach"],
          "answerIndex": 2
        },
        {
          "question":
              "Which process is used to separate crude oil into its components?",
          "option": [
            "Electrolysis",
            "Filtration",
            "Fractional Distillation",
            "Evaporation"
          ],
          "answerIndex": 2
        }
      ],
    },
    {
      "image": "asset/images/history_1825422 (2).png",
      "sub": "History",
      "subQuestion": [
        {
          "question": "Who was the first Prime Minister of independent India?",
          "option": [
            "Mahatma Gandhi",
            "Jawaharlal Nehru",
            "Sardar Patel",
            "B. R. Ambedkar"
          ],
          "answerIndex": 1
        },
        {
          "question":
              "Which Indian emperor built the famous rock-cut caves of Ajanta and Ellora?",
          "option": [
            "Ashoka",
            "Chandragupta Maurya",
            "Harsha",
            "Rashtrakuta Kings"
          ],
          "answerIndex": 3
        },
        {
          "question": "Who was the founder of the Maurya Empire?",
          "option": [
            "Ashoka",
            "Chandragupta Maurya",
            "Bindusara",
            "Alexander the Great"
          ],
          "answerIndex": 1
        },
        {
          "question":
              "During which movement did Mahatma Gandhi give the slogan 'Do or Die'?",
          "option": [
            "Salt Satyagraha",
            "Quit India Movement",
            "Non-Cooperation Movement",
            "Khilafat Movement"
          ],
          "answerIndex": 1
        },
        {
          "question":
              "Which battle marked the beginning of British rule in India?",
          "option": [
            "Battle of Plassey",
            "Battle of Panipat",
            "Battle of Buxar",
            "Battle of Haldighati"
          ],
          "answerIndex": 0
        },
        {
          "question": "Who was the last Viceroy of British India?",
          "option": [
            "Lord Curzon",
            "Lord Mountbatten",
            "Lord Wavell",
            "Lord Dalhousie"
          ],
          "answerIndex": 1
        },
        {
          "question": "Who was the first woman ruler of medieval India?",
          "option": [
            "Rani Lakshmibai",
            "Razia Sultana",
            "Nur Jahan",
            "Ahilyabai Holkar"
          ],
          "answerIndex": 1
        },
        {
          "question":
              "Which Indian freedom fighter was known as the 'Iron Man of India'?",
          "option": [
            "Subhash Chandra Bose",
            "Sardar Vallabhbhai Patel",
            "Lala Lajpat Rai",
            "Bal Gangadhar Tilak"
          ],
          "answerIndex": 1
        },
        {
          "question": "Who founded the Indian National Army (Azad Hind Fauj)?",
          "option": [
            "Bhagat Singh",
            "Mahatma Gandhi",
            "Subhash Chandra Bose",
            "Jawaharlal Nehru"
          ],
          "answerIndex": 2
        },
        {
          "question": "When did India gain independence from British rule?",
          "option": ["1945", "1946", "1947", "1948"],
          "answerIndex": 2
        }
      ],
    }
  ];
}
