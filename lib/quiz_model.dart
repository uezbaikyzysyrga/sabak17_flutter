class Quiz {
  const Quiz(this.question, this.answer);

  final String question;
  final bool answer;
}

const q1 = Quiz('Кыргызстанда 7 област барбы?', true);
const q2 = Quiz('Франция чемпион болобу?', true);
const q3 = Quiz('Евро Даниянын акча бирдигиби?', true);
const q4 = Quiz('Кенгуру Австралиянын улуттук жаныбырыбы?', true);
const q5 = Quiz('Шанхай Кытайдын борбор шаарыбы?', false);
const q6 = Quiz('Чынгыз Айтматов мугалимби?', false);
const q7 = Quiz('Нил дуйнодогу эн узун дарыябы?', true);
const q8 = Quiz('Флаттер менен операциондук система жазса болобу?', false);

// generik===> <> belgiluu bir tur beruu uchun koldonulat

const quizzes = <Quiz>[q1, q2, q3, q4, q5, q6, q7, q8];
