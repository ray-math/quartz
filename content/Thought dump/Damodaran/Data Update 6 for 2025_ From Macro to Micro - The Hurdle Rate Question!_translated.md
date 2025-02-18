---
title: "거시에서 미시로: 허들 레이트 질문!"
date: 2025-02-15
tags: 
source: https://aswathdamodaran.blogspot.com/2025/02/data-update-6-for-2025-from-macro-to.html
---
첫 다섯 개의 포스트에서 저는 금리에서 위험 프리미엄에 이르기까지 글로벌 시장을 주도하는 거시적 수치들을 살펴보았습니다. 하지만 이는 제가 선호하는 영역은 아닙니다. 저는 기업 재무와 가치 평가라는 훨씬 덜 정제된 분야에서 대부분의 시간을 보냅니다. 여기서 기업들은 어떤 프로젝트에 투자할지를 결정하고, 투자자들은 기업 가치를 추정하려고 합니다. 이 두 가지 노력에서 핵심 도구는 허들 레이트입니다. *허들 레이트란 비즈니스 및 투자 결정을 위한 필수 수익률로 설정하는 수익률입니다.* 이번 포스트에서는 비즈니스의 허들 레이트를 결정하는 요소들, 즉 비즈니스의 종류, 부채 부담 정도, 운영하는 지리적 위치에 대해 깊이 있게 살펴보겠습니다.

허들 레이트는 기업 재무나 가치 평가 수업을 듣지 않아도 실제로 접할 수 있습니다. 보통 이는 자본 비용과 자본 비용의 형태로 나타나지만, 재무 수업을 듣는 것은 이러한 개념을 더욱 깊이 이해하게 만들면서도 동시에 그것을 수식과 모델로 환원시켜 버립니다. 몇 년 전, 저는 [a paper for practitioners on the cost of capital](https://pages.stern.nyu.edu/~adamodar/pdfiles/papers/costofcapital.pdf)에서 자본 비용을 재무의 스위스 군용 칼이라고 설명했습니다. 그 이유는 자본 비용이 여러 용도로 사용되기 때문입니다.

제 기업 재무 수업에서는 비즈니스를 운영하는 데 필요한 재무의 기본 원칙을 살펴보는데, 자본 비용은 기업 재무 분석의 모든 측면에서 나타납니다:

- **비즈니스 투자(자본 예산 및 인수) 결정**에서, 자본 비용은 투자에 대한 *허들 레이트*로 작용합니다. 이는 투자에서 얻을 수 있는 수익을 허들 레이트와 비교하여 무엇에 투자할지를 결정하는 데 사용됩니다. 이 역할에서 자본 비용은 *기회 비용으로, 동등한 위험에서 투자로 얻을 수 있는 수익을 측정합니다.*

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgziw4LmglCQyzDOZF1uJuSoWgegAHdO_LH5i_Jb5P4u6RwpO9UpClOjj7mzD_zLBRe_BJ5VdvvwB6ceO8IyR2W9l7tRbl00UPOmfi5fGhrFUBvCJ2K0OAQVEKpZ_db3bn_c2Pvhhn_bdKTv9DICk2RiUWfVLll0bndcFuRr1lRu_wxKWhmKVsM_tmnEOw/w400-h86/CostofCapitalInvesting.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgziw4LmglCQyzDOZF1uJuSoWgegAHdO_LH5i_Jb5P4u6RwpO9UpClOjj7mzD_zLBRe_BJ5VdvvwB6ceO8IyR2W9l7tRbl00UPOmfi5fGhrFUBvCJ2K0OAQVEKpZ_db3bn_c2Pvhhn_bdKTv9DICk2RiUWfVLll0bndcFuRr1lRu_wxKWhmKVsM_tmnEOw/s745/CostofCapitalInvesting.jpeg)
- **사업 자금 조달 결정**에서 자본 비용은 *최적화 도구*가 되며, 기업은 *자본 비용을 줄이는 부채와 자본의 조합*을 찾고, 자산에 맞는 부채(통화 및 만기 측면에서)를 조정하여 *부도 위험과 자본 비용을 줄이는* 데 집중합니다. 이러한 맥락에서 자본 비용은 사업 자금을 조달하는 비용의 척도가 됩니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi7nJ9MKf7q-P-qSz_VoRNcDrjRxmcAeF_YUV70GV044SjdUEngiPsfI29eLg16gfZZor-wuc50RqAH66lrJBSwBwooInAuPbcgvQfn2rSdrCaDNkNDHqD0KAK_H2xEtFV5pJ4VyknosCRs1RhVVnPvyWmC1cg_56qr7exPaN0EVtmPirDVumHaGe4w9qc/w400-h115/CostofCapitalFinancing.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi7nJ9MKf7q-P-qSz_VoRNcDrjRxmcAeF_YUV70GV044SjdUEngiPsfI29eLg16gfZZor-wuc50RqAH66lrJBSwBwooInAuPbcgvQfn2rSdrCaDNkNDHqD0KAK_H2xEtFV5pJ4VyknosCRs1RhVVnPvyWmC1cg_56qr7exPaN0EVtmPirDVumHaGe4w9qc/s748/CostofCapitalFinancing.jpeg)
- **배당 결정** 즉, 소유자에게 얼마나 많은 현금을 어떤 형태(배당금 또는 자사주 매입)로 반환할지를 결정하는 데 있어 자본 비용은 *예언봉* 역할을 합니다. 기업이 고려하는 투자에서 자본 비용보다 낮은 수익을 올린다면, 이는 더 많은 현금을 반환해야 한다는 신호가 되며, 배당금 형태로 할지 자사주 매입 형태로 할지는 주주들이 선호하는 방식에 크게 의존합니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiUZL1za-VZjdwz034X935uDh-zAuceqcqdETycFQ6_a3FO-rpVgH0BMA7oeT18NmGsZ6ciZ7FKSGhKZatU4pW0jy3Qgqihc74xPt7rnNRliUuWuQPPqo7LV4I8HCDX9wswkD_mRjiKw4tQrgONlaUNlGuzxVaAtK5FW5FYaxBMLbv9NDimIwQ6IOi3j50/w400-h80/CostofCapitalDividends.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiUZL1za-VZjdwz034X935uDh-zAuceqcqdETycFQ6_a3FO-rpVgH0BMA7oeT18NmGsZ6ciZ7FKSGhKZatU4pW0jy3Qgqihc74xPt7rnNRliUuWuQPPqo7LV4I8HCDX9wswkD_mRjiKw4tQrgONlaUNlGuzxVaAtK5FW5FYaxBMLbv9NDimIwQ6IOi3j50/s740/CostofCapitalDividends.jpeg)

기업 재무의 최종 목표는 가치를 극대화하는 것이며, 제가 외부에서 기업을 바라보는 가치 평가 수업에서는 자본 비용이 **위험 조정 할인율**로 다시 나타나며, 이를 통해 기업의 본질 가치를 추정합니다.

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiI5aVWy3BclvUCmFJcqvE3qNSAmXcT2BH873QqdgrdyItxs9iT9GxQKFyOGolr0MBX39xCdNYaX78qpc3958wZ92WD-Zjz_KNnae0mjwyAXFiMPPORYelAPPuDpgbT548ZP0sb9fj549T813IbUzK14BOKel44pOtIoq63YcQxEjpYHenREPhm9Rx5c14/w485-h243/CostofCapitalDCF.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiI5aVWy3BclvUCmFJcqvE3qNSAmXcT2BH873QqdgrdyItxs9iT9GxQKFyOGolr0MBX39xCdNYaX78qpc3958wZ92WD-Zjz_KNnae0mjwyAXFiMPPORYelAPPuDpgbT548ZP0sb9fj549T813IbUzK14BOKel44pOtIoq63YcQxEjpYHenREPhm9Rx5c14/s789/CostofCapitalDCF.jpeg)

자본 비용을 적용하는 데 있어 많은 혼란은 그것이 사용되는 위치에 따라 변형된다는 사실을 인식하지 못하는 데서 비롯됩니다. 회사를 평가하려는 투자자는 회사를 평가하기 위해 하나의 자본 비용을 부여할 수 있지만, 회사 내부에서는 자본을 조달하기 위해 자금을 찾는 과정에서 자금 조달 비용으로 시작할 수 있습니다. 그러나 투자를 고려할 때는 고려 중인 투자에 대한 위험을 반영하는 기회 비용으로 변하게 됩니다.

**허들 레이트 - 구성 요소**

자본 비용이 기업 재무 및 평가에서 우리가 하는 많은 것들의 원동력이라면, 그것에 들어가는 구성 요소에 대해 명확해야 할 것입니다. 재무 의사 결정을 이해하기 위한 제가 선호하는 구조 중 하나인 재무 균형표를 사용하여, 자본 비용은 자본 비용과 부채 비용으로 구성되며, 아래 그림에서 각 항목을 추정하려고 하는 본질을 포착하려고 합니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhBurk23jubC3P4nn2anb4Z02iku68qmNjm2rA6naIDcafuI3uYLXZ1dSj2Zb9u6lcn1ixIgNUErUwiGbL3Q-inet-dvNahC3_4HNgMpAB0N4yRiMf-OBLk9284lSKrReTibQelN0JH0wYEb9DaE7CQSZZxyhyphenhyphen-efC0KKffprfejk6fMxyCsN5F8nXVofg/w400-h145/CostofCapitalinFinBS.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhBurk23jubC3P4nn2anb4Z02iku68qmNjm2rA6naIDcafuI3uYLXZ1dSj2Zb9u6lcn1ixIgNUErUwiGbL3Q-inet-dvNahC3_4HNgMpAB0N4yRiMf-OBLk9284lSKrReTibQelN0JH0wYEb9DaE7CQSZZxyhyphenhyphen-efC0KKffprfejk6fMxyCsN5F8nXVofg/s741/CostofCapitalinFinBS.jpeg)

주식 위험과 채무 불이행 위험에 대한 추상적인 개념에서 실제 비용으로 전환하기 위해서는 자본 비용과 부채 비용을 부분으로 나누어야 하며, 아래 그림에서 각 부분을 구성하는 요소들을 통해 이를 시도하고자 합니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxyvD56zWVdq2iAPxV0ExbF_dghPCQJt25_WcVgtHzFHVAAh6LoWlKuuOgP27_tXMudDeuVahV3S3IrlQ9lWJLzkShaHNL-ckCMINBpV-lWwNBOwb1j-ipb8JNIN4woFkHx1FKTJ2-5hyphenhyphenTCYj6Uu5thXy-tJ1mKwjqkpMWS9LUkYiZ3pYDTJs9nLl2rWM/w400-h300/Cost%20of%20Capital%20Ingredients.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxyvD56zWVdq2iAPxV0ExbF_dghPCQJt25_WcVgtHzFHVAAh6LoWlKuuOgP27_tXMudDeuVahV3S3IrlQ9lWJLzkShaHNL-ckCMINBpV-lWwNBOwb1j-ipb8JNIN4woFkHx1FKTJ2-5hyphenhyphenTCYj6Uu5thXy-tJ1mKwjqkpMWS9LUkYiZ3pYDTJs9nLl2rWM/s933/Cost%20of%20Capital%20Ingredients.jpeg)

보시다시피, 이러한 계산에서 대부분의 항목은 제 첫 다섯 개 데이터 포스트를 읽으셨다면 익숙할 것입니다. 이들은 개별 기업과는 관련이 없는 거시 변수들입니다.

- 첫 번째는 물론 **무위험 이자율**입니다. 이 숫자는 시간에 따라 (미국 국채 금리에 대한 포스트에서 보셨듯이 [data update 4](https://aswathdamodaran.blogspot.com/2025/01/data-update-4-for-2025-interest-rates.html)) 및 통화에 따라 달라집니다 (데이터 업데이트 5에서 통화에 대한 포스트 참조).
- 두 번째 입력 세트는 주식 및 채권 시장의 위험 가격입니다. 주식 시장에서는 **주식 위험 프리미엄**으로 측정되고, 채권 시장에서는 **디폴트 스프레드**로 측정됩니다. [data update 2](https://aswathdamodaran.blogspot.com/2025/01/data-update-2-for-2025-party-continued.html)에서는 미국의 주식 위험 프리미엄을 살펴보았고, 이 논의를 전 세계의 주식 위험 프리미엄으로 확장했습니다 [in data update 5](https://aswathdamodaran.blogspot.com/2025/02/data-update-5-for-2025-its-small-world.html). [data update 4](https://aswathdamodaran.blogspot.com/2025/01/data-update-4-for-2025-interest-rates.html)에서는 2024년 동안 기업 디폴트 스프레드의 변동을 살펴보았습니다.

계산에 들어가는 세 가지 기업별 숫자가 있으며, 이들은 모두 기업 간 자본 비용의 변동에 기여합니다;

- **상대적 주식 위험** 즉, 평균 기업의 주식에 비해 특정 기업의 주식이 얼마나 위험한지를 측정하는 지표입니다. 이 지표에 대한 논의의 대부분은 자본 자산 가격 결정 모델(CAPM)과 베타의 적절성 및 불충분성에 얽혀 있지만, 저는 이 모델이 다른 상대적 위험 측정을 허용할 만큼 충분히 유연하다고 생각합니다.

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgHJTYVLyAd5IGlzGYgyNGB6TMLgIHQjH1OEd6D9qgL13ldzePq_HSk2sVCpEtOsSfCraWaVa-1_ubVLrCKgrs8ZAyjjZLejzZnKMhGt9qNkb43aN8vw2nytWIIaNfpZhRyhAFLVG8EdihxIQfCVdMuCrc3j7vY_H6fo4OZAPDhhUIlbDXKuW15gnDbIVM/s320/RelativeRiskMeasures.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgHJTYVLyAd5IGlzGYgyNGB6TMLgIHQjH1OEd6D9qgL13ldzePq_HSk2sVCpEtOsSfCraWaVa-1_ubVLrCKgrs8ZAyjjZLejzZnKMhGt9qNkb43aN8vw2nytWIIaNfpZhRyhAFLVG8EdihxIQfCVdMuCrc3j7vY_H6fo4OZAPDhhUIlbDXKuW15gnDbIVM/s774/RelativeRiskMeasures.jpeg)

저는 이 측정치에 대해 순수주의자는 아니며, 제 계산에 베타를 사용하지만 상대적인 주식 위험의 대체 측정치를 사용하는 데 열려 있습니다.
- **기업 채무 불이행 위험**: 즉, 회사의 채무 불이행 위험이 얼마나 있는지를 측정하는 것으로, 채무 불이행 위험이 높을수록 채무 불이행 스프레드도 높아집니다. 상당수의 기업에 대해 *채권 등급*이 이 측정치로 사용될 수 있지만, 그것이 없더라도 채무 불이행 위험을 추정할 수밖에 없습니다. 추정의 어려움을 더하는 것은 회사가 더 많은 자금을 빌릴수록 채무 불이행 위험이 증가한다는 사실입니다(이로 인해 자본 비용과 부채 비용 모두 증가합니다).
- **운영 지리**: 회사의 주식 위험 프리미엄은 회사가 설립된 곳이 아니라, 제품과 서비스의 생산 및 수익 창출 측면에서 사업을 수행하는 곳에서 발생합니다. 즉, 세계의 많은 지역에서 평가의 현 상태는 주식 위험 프리미엄을 전적으로 설립 국가에 기반하고 있는 것처럼 보이며, 저는 이 관행에 강력히 반대합니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhTNHJNHumwFy11MrmvY9uP8vWlOjfd9XDxbefYwIxPlmS1Rz9z8hw59oMXrBxVQxeEp9Xgy1YWeZAUE7DR5A25uF9dsty_UAs-EzxyxkjXa9UnuI37VD1BqmsTySeAGqGEKSWy_rawVlTJCCc8hgjwX9YSIscZG8YA5Qu0Cypdy7OSk81kgYrIRhBUV_4/w400-h269/GeographyExposure.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhTNHJNHumwFy11MrmvY9uP8vWlOjfd9XDxbefYwIxPlmS1Rz9z8hw59oMXrBxVQxeEp9Xgy1YWeZAUE7DR5A25uF9dsty_UAs-EzxyxkjXa9UnuI37VD1BqmsTySeAGqGEKSWy_rawVlTJCCc8hgjwX9YSIscZG8YA5Qu0Cypdy7OSk81kgYrIRhBUV_4/s750/GeographyExposure.jpeg)

다시 말해, 운영 위험 노출을 측정하는 방법에 있어 유연성을 가지고 있으며, 소비재 및 비즈니스 서비스 회사는 전적으로 수익에 기반하고, 자연 자원 회사는 전적으로 생산에 기반하며, 제조 회사는 수익과 생산의 혼합에 기반합니다.

보시다시피, 자본 비용에 포함되는 요소들은 동적이고 주관적이며, 이를 추정하는 방법에 차이가 있을 수 있지만, 그것들은 당신의 상상 속의 허구일 수는 없습니다.

**허들 레이트 - 2025년 추정**

이 긴 서론을 통해, 샘플에 포함된 약 48,000개 기업의 자본 비용을 추정하기 위해 사용한 추정 선택 사항을 설명하겠습니다. 이러한 선택을 하는 과정에서, 개별 기업에 대한 원시 데이터와 해당 데이터를 자본 비용 입력으로 변환하는 용이성이라는 명백한 제약 조건 아래에서 작업했습니다.

1. 무위험 이자율: 서로 다른 통화로 운영되는 기업 간의 비교 및 통합을 가능하게 하기 위해, 모든 기업의 자본 비용을 **미국 달러**로 추정하기로 결정했으며, 2025년 1월 1일의 미국 10년 국채 수익률을 무위험 이자율로 사용했습니다.
2. 주식 위험 프리미엄: 각 기업의 지리적 운영 노출에 따라 주식 위험 프리미엄을 계산하고 싶었지만, 원시 데이터가 이를 쉽게 계산할 수 있도록 제공하지 않았습니다. 따라서, **기업 본사가 위치한 국가의 주식 위험 프리미엄**을 사용하여 해당 기업의 주식 위험 프리미엄을 계산했습니다.
3. 상대적 주식 위험: 비판에도 불구하고 베타를 고수하는 이유는 두 가지입니다. 첫째, 회사 회귀 베타 대신 레버리지 조정된 산업 평균 베타를 사용합니다. 평균 베타(저는 이를 '하향식 베타'라고 부릅니다)는 주식 간 수익 차이를 설명하는 데 훨씬 더 효과적입니다. 둘째, 산업 평균 베타를 선택한 만큼, 다른 상대적 위험 측정치들은 예측 능력 면에서 이와 비슷한 수준에 도달하지 못합니다. 개별 기업에 대해서는 **주요 사업의 베타**를 회사의 베타로 사용합니다. 왜냐하면 제가 가진 원시 데이터가 사업별로 세분화할 수 없기 때문입니다.
4. 기업 채무 불이행 위험: 채권 등급이 있는 기업 샘플의 하위 집합에 대해서는, **S&P 채권 등급**을 사용하여 채무 비용을 추정합니다. 나머지 기업에 대해서는 **이자 보상 비율**을 첫 번째 측정치로 사용하여 합성 등급을 추정하고, **주가의 표준 편차**를 보조 측정치로 사용합니다.
5. 부채 구성: **시장 자본화**를 사용하여 자본의 시장 가치를 측정하고, **총 부채(리스 부채 포함)**를 사용하여 자본 대비 부채 비율 및 자본 대비 부채 비율을 추정했습니다.

아래 그림은 제 선택 사항을 요약합니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjksWSods2hu3X0X7Ak8UpreGXSTwHVgdg6-kbiN-14ED51FY0fizVAhxuUBDbIV_7qP1wY5TnUULiErQuQEn0MqabhgnlmCzrZOz8YSRRngZCOyNpiQUn0X1AIhvAYOrULEMSE3LsmPXKX5LY69ix2worQKhYs8HGQSkh06vNXOzhL00qwS6Smvok262g/w400-h356/WACCEstimation.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjksWSods2hu3X0X7Ak8UpreGXSTwHVgdg6-kbiN-14ED51FY0fizVAhxuUBDbIV_7qP1wY5TnUULiErQuQEn0MqabhgnlmCzrZOz8YSRRngZCOyNpiQUn0X1AIhvAYOrULEMSE3LsmPXKX5LY69ix2worQKhYs8HGQSkh06vNXOzhL00qwS6Smvok262g/s547/WACCEstimation.jpeg)

명백히, 제가 이러한 글로벌 자본 비용을 계산하는 데 사용한 근사치들은 개별 회사를 평가하기 위한 자본 비용을 계산할 때는 사용하지 않을 것입니다. 그러나 이 접근 방식은 특히 그룹 간에 집계되고 평균화될 때 귀중한 통찰력을 제공할 수 있는 값을 산출합니다.

*a. 섹터와 산업*

기업 운영의 위험은 다양한 섹터에 따라 크게 달라지며, 저는 글로벌 기업의 섹터별 자본 비용의 차이를 살펴보겠습니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiCje0S94kMYtJrnfopMHm38vFnwuo0uTVSTOVUsYe3wX3QrbpxxgyeNiNIunIjUXYh8GfDj-tXb36ttBV6dQ54PVqZjGML4buICIQlHK886GbyzlufawiChfGtUir89631orEFeJ9Y2UCB7ZCDXzoZfmXlNWAIqwybfY3s9mdiUVyEuYGPOwbiFhYvvXE/w400-h150/SectorWACCTable.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiCje0S94kMYtJrnfopMHm38vFnwuo0uTVSTOVUsYe3wX3QrbpxxgyeNiNIunIjUXYh8GfDj-tXb36ttBV6dQ54PVqZjGML4buICIQlHK886GbyzlufawiChfGtUir89631orEFeJ9Y2UCB7ZCDXzoZfmXlNWAIqwybfY3s9mdiUVyEuYGPOwbiFhYvvXE/s644/SectorWACCTable.jpeg)

여기에는 몇 가지 놀라움이 없으며, 기술 기업들이 가장 높은 자본 비용을 직면하고 있고 금융 기업들이 가장 낮은 자본 비용을 가지고 있습니다. 이는 기술 기업들이 높은 운영 위험으로 인해 자본을 위해 주식에 의존하게 되고, 금융 기업들은 규제 보호 덕분에 안정성을 유지하고 있기 때문입니다.

산업별로 나누어 자본 비용이 높은 순서에서 낮은 순서로 산업을 나열하면 다음과 같은 목록이 나타납니다:

이 표의 숫자는 예상할 수 있는 것일 수 있지만, 기업들이 무시할 경우 큰 위험을 초래할 수 있는 몇 가지 중요한 교훈이 있습니다. 첫 번째는 자본 비용의 산업 간 차이를 대충 살펴보더라도, *높은 성장 잠재력을 가진 사업에서 자본 비용이 가장 높고, 성숙하거나 감소하는 사업에서 가장 낮다는 점*입니다. 이는 위험과 기회 간의 연관성을 다시 한번 강조합니다. 두 번째는 *다수의 사업을 운영하는 기업은 각 사업마다 자본 비용이 다를 것임을 이해해야 하며*, 모든 사업에 대해 동일한 기업 자본 비용을 사용하는 것은 교차 보조 및 가치 파괴의 원인이 됩니다.

*b. 소규모 기업 대 대규모 기업*

올해 [my third data update](https://aswathdamodaran.blogspot.com/2025/01/data-update-3-for-2025-slicing-and.html)에서, 저는 소형주 프리미엄, 즉 소형주가 역사적으로 동등한 위험을 가진 대형주보다 더 높은 수익을 올려온 프리미엄에 대해 간략히 살펴보았고, 지난 40년 동안 그 프리미엄이 사라진 것에 대해 언급했습니다. 몇몇 소형주 투자자들로부터 소형주가 대형주보다 더 위험하므로 그 위험을 보상하기 위해 더 높은 수익을 올려야 한다는 주장을 들었습니다. 아마도 그럴 수 있지만, 이는 소형주 프리미엄이 존재하는지 여부와는 관계가 없습니다. 프리미엄은 위험을 감안했을 때 기대할 수 있는 수익을 초과하여 얻는 수익이기 때문입니다. 그러나 소형 기업이 더 높은 장애물 금리에 직면한다는 기존의 통념이 사실인지 궁금했습니다. 이 질문에 답하기 위해, 저는 2025년 초에 시장 규모에 따라 기업을 10분위로 나누고 각 분위 내 기업의 자본 비용을 추정하여 위험과 시장 규모 간의 관계를 살펴봅니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDY4xNbtRS0CKMhBAZH8cquLfr-BD3QrggyhUm62PAIRWe4_Tx04eZjkZOniRedTVTCcEidsuVmWO8JfvnF7OUIst2TvEqXVoOXsmw1hviOgbaAOP-TgSIxcUFncG5_gaXTWCiaPUsAuZ8XmOztUPRFNDWFM6gkXnfSvgRM2UxvFjhMUtdiAByN32oz1I/w549-h199/SizeWACCTable.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgDY4xNbtRS0CKMhBAZH8cquLfr-BD3QrggyhUm62PAIRWe4_Tx04eZjkZOniRedTVTCcEidsuVmWO8JfvnF7OUIst2TvEqXVoOXsmw1hviOgbaAOP-TgSIxcUFncG5_gaXTWCiaPUsAuZ8XmOztUPRFNDWFM6gkXnfSvgRM2UxvFjhMUtdiAByN32oz1I/s618/SizeWACCTable.jpeg)

결과는 엇갈립니다. 자본 비용의 중앙값을 살펴보면, 자본 비용에서 뚜렷한 패턴이 발견되지 않으며, 하위 10%에 속하는 기업들은 샘플의 중앙 기업(9.06%)보다 낮은 중앙 자본 비용(8.88%)을 가지고 있습니다. 그렇긴 하지만, 가장 안전한 기업들이 가장 큰 시장 가치의 10%에 속하는 반면, 작은 시장 가치의 기업들보다 자본 비용이 낮습니다. 일반적으로, 작은 기업들이 큰 기업들과 경쟁할 때 불리한 상황에 처한다면, 그 불리함은 성장의 어려움과 높은 운영 비용 구조로 나타날 가능성이 더 높으며, 높은 허들 금리로 나타나지는 않습니다.

*c. 글로벌 분포*

이 분석의 마지막 부분에서는 모든 상장 기업의 자본 비용을 살펴보고, 모든 기업의 자본 비용 분포를 분석하는 '머니볼'을 시도했습니다. 아래 그래프에서는 2025년 초 전 세계 모든 기업의 **자본 비용의 히스토그램(미국 달러 기준)**을 제시하며, 지역별 자본 비용 분포는 아래와 같습니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhaYJZ1fPrHI_uAHyQv_88FXoWoNTh81VDsT4aRs8VZghKx1LQCdHey4C9AnhqygkfdLfAlsMOt5lRJ9zxcCZxzYqCYQYOlaT7UgiDEZU7k0OFdq7pIAEAy2DmV3RFo4kbf6LcR4gG5aEnoe4f5VX50JW6XjdIau7BNYzczaIiZF-kcVbJUq1_9s5vYLlc/w366-h400/GlobalWACCPicture2025.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhaYJZ1fPrHI_uAHyQv_88FXoWoNTh81VDsT4aRs8VZghKx1LQCdHey4C9AnhqygkfdLfAlsMOt5lRJ9zxcCZxzYqCYQYOlaT7UgiDEZU7k0OFdq7pIAEAy2DmV3RFo4kbf6LcR4gG5aEnoe4f5VX50JW6XjdIau7BNYzczaIiZF-kcVbJUq1_9s5vYLlc/s1348/GlobalWACCPicture2025.jpeg)

이 표는 제가 보유한 가장 유용한 데이터 중 하나라고 생각하며, 기업 재무 및 가치 평가의 거의 모든 측면에서 사용합니다:

# 1. 자본 비용 계산
자본 비용 계산은 복잡하지 않지만, 운영 위험, 레버리지 및 디폴트 위험에 대한 입력이 필요하며, 이는 젊은 기업이나 역사(운영 및 시장)가 적은 기업에 대해 추정하거나 평가하기 어려울 수 있습니다. 이러한 기업에 대해서는, 저는 종종 자본 비용을 추정하기 위해 분포를 사용하여 회사를 평가합니다. 따라서 2014년 6월 우버를 평가할 때, 2014년 미국 기업의 90번째 백분위수에 해당하는 자본 비용(12%)을 우버의 자본 비용으로 사용했습니다. 이는 제 할 일 목록에서 시간 소모적인 작업을 제거했을 뿐만 아니라, 젊은 회사의 수익 성장과 마진이라는 훨씬 더 중요한 질문에 집중할 수 있게 해주었습니다. [my fifth data update](https://aswathdamodaran.blogspot.com/2025/02/data-update-5-for-2025-its-small-world.html)에서 통화 간의 차이에 대해 이야기한 내용을 바탕으로, 이 표는 **차별적 인플레이션**을 추가하여 *원하는 통화로 쉽게 수정할 수 있습니다.* 따라서 2025년 초에 인도 IPO를 루피로 평가하고 위험하다고 생각한다면, 인도 자본 비용의 아홉 번째 분위수(미국 달러 기준 12.08%)에 2%를 추가하면 14.08%의 인도 루피 자본 비용을 얻을 수 있습니다.

# 2. 환상적인 허들 금리
제 경험에 따르면, 많은 투자자와 기업이 허들 금리를 만들어냅니다. 전자는 회사를 평가하기 위해, 후자는 투자 분석에 사용하기 위해서입니다. 이러한 허들 금리는 투자자들이 원하는 수익을 얻기 위한 *희망적인 사고*이거나, 수십 년 전에 정해진 후 다시 검토되지 않은 *관성*을 반영합니다. 평가가 3P 테스트(가능한가? 그럴듯한가? 그럴듯한가?)를 통과하는지 확인하는 맥락에서, 저는 평가에 사용된 자본 비용을 확인합니다. 2025년 1월에 미국 달러로 평가된 성숙한 상장 기업이 15%의 자본 비용을 사용하는 것은 환상적입니다(90번째 백분위수를 훨씬 초과하므로), 그리고 나머지 평가는 무의미해집니다.

# 3. 시간에 따라 변하는 허들 금리
회사를 평가할 때, 저는 일관성을 유지하는 것을 믿으며, 제가 기대하는 일관성이 나타나는 곳 중 하나는 *시간에 따라 변하는 허들 금리*입니다. 회사의 스토리가 변화함에 따라 말이죠. 따라서 돈을 잃고 높은 성장을 보이는 회사를 평가할 경우, 평가 시작 시 자본 비용이 높을 것으로 예상하지만, 향후 몇 년 동안 낮은 성장과 수익성에 대한 기대를 반영하면서 허들 금리가 감소할 것으로 예상합니다(위의 표에서 아홉 번째 분위수에서 중앙값으로).

위험이 없는 제 이자율은 항상 현재 이자율이며, 제 주식 위험 프리미엄은 암시적입니다. 즉, 주식 가격 책정 방식에서 도출된 것이므로, 제 자본 비용 추정치는 이론적 모델이 아닌 위험에 대한 시장 가격을 나타냅니다. 따라서 표를 보고 특정 숫자(귀하의 지역의 중앙값, 미국의 90번째 백분위수)가 너무 낮거나 높다고 판단하신다면, 문제는 저나 제 가정이 아니라 시장에 있습니다.

**주요 내용**

이 글이 이렇게 길어진 점 사과드리며, 데이터를 살펴보며 얻은 네 가지 주요 내용을 정리하겠습니다:

# 1. 기업의 허들 비율
**기업의 허들 비율**이 회사 전반의 투자를 평가하는 데 사용될 수 있다는 개념은 신화이며, 위험한 결과를 초래할 수 있습니다. 이는 다수의 사업 부문이 동일한 (기업) 자본 비용을 사용하고 인수 시 인수 기업의 자본 비용이 목표 기업의 가치를 평가하는 데 사용되는 다중 사업 회사의 모든 부문에서 발생합니다. 이러한 관행의 결과는 예측 가능하고 해롭습니다. 안전한 사업이 위험한 사업을 보조하게 되어 시간이 지남에 따라 회사가 더 위험해지고 더 나쁜 상황에 처하게 됩니다.

# 2. 허들 비율에 대한 현실 점검
나는 자주 CFO들이 시장 위험 매개변수와 회사의 위험 프로필을 사용하여 계산된 자본 비용을 제시했을 때, 특히 저금리 시대에 너무 낮아 보인다고 하거나, 때때로 위험하고 고금리 환경에서 운영할 경우 너무 높다고 말하는 것을 들었습니다. 앞서 언급했듯이, 허들 비율을 시장을 의식한 수치보다 높거나 낮게 조정하는 것은 거의 항상 좋은 생각이 아닙니다. 이는 당신이 원하는 세계/시장에서가 아니라 현재 있는 세계/시장에서 살아가고 운영해야 한다는 원칙을 위반하기 때문입니다.

# 3. 허들 비율은 동적이다
기업 및 투자 환경 모두에서 허들 비율의 안정성에 대한 거의 절박한 욕구가 존재합니다. 허들 비율이 변동성이 없을 때 사업을 운영하는 것이 더 쉽기 때문에 안정성의 매력을 이해합니다. 그러나 시장은 현실 점검 역할을 합니다. 변동성이 큰 금리와 위험 프리미엄의 세계에서 일정한 자본 비용을 사용하는 것은 부정의 신호입니다.

# 4. 허들 비율은 비즈니스/평가 전투에서 승패를 가르는 요소가 아니다
자본 비용이 DCF에서 D라는 것은 사실이지만, **자본 비용이 평가를 좌우해서는 안 되며, 절대 그렇게 되어서는 안 됩니다.** 나의 40년간의 평가 경험에서, 나는 여러 번 크게 잘못된 적이 있으며, 그 원인은 거의 항상 **성장, 수익성 또는 재투자 예측의 오류**(이 모든 것이 현금 흐름으로 이어짐)였습니다. 할인율이 아닙니다. 같은 맥락에서, 자본 비용을 조정하는 데 능숙해서 위대함에 이른 단 하나의 위대한 회사를 생각할 수 없으며, 자본 비용 최적화에 대해 적극적으로 고민하지 않았음에도 불구하고 수조 달러의 가치를 지닌 많은 회사를 알고 있습니다. 따라서 자본 예산 편성이나 평가에서 대부분의 시간을 할인율 추정 및 위험 프리미엄 또는 베타에 대한 논의에 소비하고 있다면, 당신은 본래의 목적을 잃은 것입니다. 2025년 초에 성숙한 미국 회사를 평가하고 있으며, 급한 상황이라면 (누가 그렇지 않겠습니까?), 8.35%의 자본 비용(2025년 초 미국 기업의 중앙값)을 사용하는 것이 좋으며, 성장 및 수익 전망을 평가하는 데 시간을 할애하고, 시간이 있다면 마지막에 자본 비용을 조정하는 것이 좋습니다.


**데이터 링크**

1. 산업 그룹별 자본 비용: [US](https://pages.stern.nyu.edu/~adamodar/pc/datasets/wacc.xls), [Global,](https://pages.stern.nyu.edu/~adamodar/pc/datasets/waccGlobal.xls), [Emerging Markets](https://pages.stern.nyu.edu/~adamodar/pc/datasets/waccemerg.xls), [Japan](https://pages.stern.nyu.edu/~adamodar/pc/datasets/waccJapan.xls), [Europe](https://pages.stern.nyu.edu/~adamodar/pc/datasets/waccEurope.xls), [India](https://pages.stern.nyu.edu/~adamodar/pc/datasets/waccIndia.xls), [China](https://pages.stern.nyu.edu/~adamodar/pc/datasets/waccChina.xls)
2. [Cost of capital distribution, by industry](https://pages.stern.nyu.edu/~adamodar/pc/blog/WACCdistn.xlsx)

논문 링크

1. [The Cost of Capital: The Swiss Army Knife of Finance](https://pages.stern.nyu.edu/~adamodar/pdfiles/papers/costofcapital.pdf)