RBM with CD and average CD
===========================

- 연구 주제[subject]
-분류용 RBM의 학습 알고리즘[기존의 CD 알고리즘과 평균 CD 알고리즘]의 분류성능을 비교

- 사용 데이터[Data]
-- New Thyroid Data and Pima Data
-- 추가 자료 : CTG data
-- 출처 : UCI 기계학습저장소 http://archive.ics.uci.edu/ml


- 분류 성능 평가 [Classification evaluation]
-- 정확도와 AUC[accuracy and AUC]

- 간단한 모델 설명
-- **분류용 RBM** 알고리즘을 만들었다.
-- **모멘텀**을 고려한 알고리즘을 사용했다.
-- 각 자료를 임의로 3등분하여 2등분은 훈련자료로 1등분은 검정자료로 사용했다.
-- **Smote** 기법을 사용하여 oversampling을 했다.

결과
--------------------------------------------------

- 1.**not using smote**의 분류 성능이 좋다.
- New_Thyroid data자체가 좋지 않다. class 2와 3가 너무 적어 smote를 시켰는데도 불구하고 precision이 1.00으로 나오게 된다.
- class 2와 3을 추가 생성할 필요가 있다. TRAIN,TEST 데이터를 나눌때 using smote와 not using smote를 비교해 보면 using smote가 적합하다.

- 2.CTG DATA는 분류가 잘되는 것을 확인할 수 있다.
- SMOTE를 사용했을 때 CLASS 1,2,3에 대해 골고루 precision이 좋지만 SMOTE를 사용하지 않으면 AVG precision은 높지만 CLASS 2의 precision이 현저히 낮다. 따라서 SMOTE를 사용하는 것이 좋아보인다.