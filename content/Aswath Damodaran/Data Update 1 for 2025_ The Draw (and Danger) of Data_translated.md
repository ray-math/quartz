---
title: "Data Update 1 for 2025: The Draw (and Danger) of Data"
source: "https://aswathdamodaran.blogspot.com/2025/01/data-update-1-for-2025-draw-and-danger.html"
author:
published:
created: 2025-02-03
description: "A blog about markets, finance and all things money related."
---
## 데이터의 매력(과 위험성)

지난 40년 동안, 나는 매년 첫 주를 공공 거래 기업에 대한 데이터를 수집하고 분석하는 데 보냈으며, 내가 발견한 내용을 관심 있는 누구와도 공유해왔습니다. 2025년의 첫 번째 전체 주가 끝나고, [my data update for the year](https://pages.stern.nyu.edu/~adamodar/data.html)가 이제 가동 중이며, 이 게시물을 통해 내 데이터 샘플, 산업 통계 계산 과정 및 이를 찾는 링크를 설명할 계획입니다. 또한, 데이터의 최적 사용 방법과 장소에 대한 경고를 업데이트에 항상 추가해왔던 것처럼 반복할 것입니다.

### 데이터의 매력(과 위험성)

우리는 데이터의 시대에 살고 있으며, 기업과 투자자 모두가 이를 상업적 이익을 위해 길들였다고 주장합니다. 나는 데이터가 더 나은 결정을 내리는 데 도움이 될 수 있다고 믿지만, 의사 결정 최적화와 관련하여 데이터가 할 수 있는 것과 할 수 없는 것에 대한 주장에 대해서는 조심스럽습니다. 데이터의 가장 큰 활용은 두 가지 차원에서 이루어집니다:

1. **주장 사실 확인**: 인간은 항상 믿음을 사실로 주장해왔지만, 소셜 미디어의 영향으로 이제는 이러한 주장을 훨씬 더 큰 청중에게 전달할 수 있습니다. 내가 일하는 기업 금융 및 투자 분야에서는 정치인, 시장 전문가 및 경제학자들이 기업 및 시장 행동에 대해 동화 같은 이야기를 하는 것을 들으면서 두 번 생각하게 됩니다. 데이터는 진실을 분별하는 나의 무기입니다.
   
2. **예측의 노이즈**: 전문가 집단에 대한 신뢰가 점점 줄어드는 이유 중 하나는 이 집단의 많은 사람들이 미래 예측에 대한 불확실성을 인정하려 하지 않기 때문입니다. 그들은 자신의 학문적 또는 전문적 자격 뒤에 숨으면서 사람들에게 자신이 옳을 것이라고 믿어달라고 요청하지만, 그 신뢰는 약화되었습니다. 이러한 예측이 그들이 주장하는 대로 데이터에 기반하고 있다면, 거의 항상 오류(노이즈)가 동반되며, 이를 인정하는 것은 약점의 표시가 아닙니다. 경우에 따라 오류의 크기가 너무 커서 예측을 듣는 사람들이 이를 바탕으로 행동하지 않을 수도 있지만, 이는 건강한 반응입니다.

많은 사람들이 데이터의 매력에 빠지는 것을 듣고, AI와 분석이 그 매력을 더하는 것을 보면서, 나는 데이터가 모든 답을 가지고 있다는 개념에 불편함을 느낍니다. 그 이유는 두 가지입니다:

1. *데이터는 편향될 수 있다*: 데이터는 객관적이라는 널리 퍼진 믿음이 있지만, 적어도 숫자 형태를 취할 경우에는 그렇습니다. 편향되거나 특정한 의도를 가진 분석가의 손에 들어가면, 데이터는 선입견에 맞게 조작될 수 있습니다. 나는 편향이 없다고 주장하고 싶지만, 그것은 거짓말이 될 것입니다. 왜냐하면 편향은 종종 깊이 뿌리내리고 무의식적이기 때문입니다. 그러나 나는 내가 사용하는 샘플, 내가 작업하는 데이터, 그리고 내가 통계를 계산하는 방법에 대해 최대한 투명하게 하려고 노력했습니다. 경우에 따라, 당신이 정확성을 찾고 있다면, 내가 제공하는 다양한 값들 때문에 실망할 수도 있습니다. 2025년 초 미국 기업의 산업별 세율 계산을 살펴보면, 기업 간의 세율은 다음과 같습니다. 미국 기업의 세율은 내가 세율을 계산하는 방법과 어떤 기업을 사용하느냐에 따라 6.75%에서 26.43%까지 다양하다는 점에 유의하세요. 미국 기업이 공정한 세금을 내지 않는다는 선입견으로 시작한다면, 당신은 6.75%를 추정 세율로 받아들일 것입니다. 반면, 미국 기업이 공정한 세금을 낸다고 믿는 사람이라면 26.43%가 선호하는 추정치일 수 있습니다.

2. *과거 대 미래*: 투자자와 기업은 종종 미래 예측을 과거에 기반합니다. 이는 전적으로 이해할 수 있지만, 모든 투자 제안서에 “과거 실적은 미래 실적의 신뢰할 수 있는 지표가 아니다”라는 면책 조항이 붙는 이유가 있습니다. 나는 [written about how mean reversion is at the heart of many active investing strategies](https://aswathdamodaran.blogspot.com/2016/08/mean-reversion-gravitational-super.html)에서 과거가 반복될 것이라는 가정이 실수일 수 있는 이유를 설명했습니다. 따라서 S&P 500의 암시적 주식 위험 프리미엄 또는 PE 비율에 대한 역사적 데이터를 살펴보면서 평균을 계산하고 이를 투자 전략에 사용할 유혹을 느낄 수 있습니다. 또는 내 산업 평균을 부채 비율 및 가격 배수의 목표로 삼을 수 있지만, 이를 자제해야 합니다.

**샘플**

데이터는 그 어느 때보다 더 접근 가능하고 사용 가능하다는 것은 부인할 수 없으며, 나는 그 혜택을 누리고 있습니다. 나는 여러 원시 데이터 출처에서 데이터를 수집하는데, 그 중 일부는 모든 사람에게 무료로 제공되며, 일부는 내가 비용을 지불하고, 일부는 내가 대학의 경영대학원에서 일하기 때문에 접근할 수 있는 것입니다. 기업 데이터의 주요 출처는 S&P Capital IQ이며, Bloomberg 터미널의 데이터를 보완합니다. 거시경제 데이터의 경우, 주요 출처는 [FRED, the data set maintained by the Federal Reserve Bank](https://fred.stlouisfed.org/)이지만, 온라인에서 찾은 다른 데이터로 보완합니다. 여기에는 채권 스프레드 데이터에 대한 [NAIC](https://content.naic.org/)와 국가 위험 점수에 대한 [Political Risk Services (PRS)](https://www.prsgroup.com/)가 포함됩니다.

내 데이터 세트에는 연초에 상장된 모든 공개 거래 기업이 포함되어 있으며, 시장 가격이 있는 기업의 수는 **내 샘플에 47810개 기업이 포함되어 있습니다**. 이는 최근 몇 년간의 샘플 크기와 대략 일치합니다. 놀랍지 않게도, 기업 목록은 전 세계에 걸쳐 있으며, 나는 지역별로 기업 수와 시장 가치를 기준으로 기업 분포를 살펴봅니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjTJoXsEj_eMisIAMS_TwpjR-ZeuGs8bLSOGaH6Z5wxjz29zw3SIhfo-ZbvDQyuUFTkUuEjdur3LyUH37-P2AuC03cmvL2ApWpt1NY7Y4rNnDEc2pe3xCFsR3QldPogvdg3cY_SFJ-DszQTpYHa8pSj_sjpyw_albxzTHVnVNteDO2ttDlnzFo8iWh1CHM/w271-h400/SamplePie.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjTJoXsEj_eMisIAMS_TwpjR-ZeuGs8bLSOGaH6Z5wxjz29zw3SIhfo-ZbvDQyuUFTkUuEjdur3LyUH37-P2AuC03cmvL2ApWpt1NY7Y4rNnDEc2pe3xCFsR3QldPogvdg3cY_SFJ-DszQTpYHa8pSj_sjpyw_albxzTHVnVNteDO2ttDlnzFo8iWh1CHM/s1824/SamplePie.jpeg)

2025년 초 미국 기업의 시장 가치가 전 세계 주식 시장 가치의 약 49%를 차지하는 것으로 나타났습니다. 이는 2024년 초 44%에서, 2023년 초 42%로 증가한 수치입니다. 아래 표에서는 시간에 따른 지역별 시장 가치 변화(단위: 백만 달러)를 비교합니다.

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhkh-QCT7r8-RyoAPkESsIzJx9lT6WiMk-80SeGKOeJBvKs4nA0kejVA0g6cSi06zkdeXOFSIrYYeHfMOlAe0bAnE7_WaotD88CpZm81THpL8LnxNgiYXCtun2icnWUvV6YfIpdDQkLLlPOkxuaASXnv4twPUhxZierTDfU8HumcWCXpmwZcPNt8RwIpmM/w400-h171/Regionaovertime.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhkh-QCT7r8-RyoAPkESsIzJx9lT6WiMk-80SeGKOeJBvKs4nA0kejVA0g6cSi06zkdeXOFSIrYYeHfMOlAe0bAnE7_WaotD88CpZm81THpL8LnxNgiYXCtun2icnWUvV6YfIpdDQkLLlPOkxuaASXnv4twPUhxZierTDfU8HumcWCXpmwZcPNt8RwIpmM/s1156/Regionaovertime.jpeg)

(S&P) 섹터별로 기업을 분류해 보면, 숫자와 시장 가치 모두에서 다음과 같은 결과를 얻었습니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiBwjkcqLmL11qP7wtsb70iC9Am292l1Jer5iESDg3F5eVADqM41Ye-WyuMbrU_hh1iCSunBV2hi2tOrzBUJBE9IWtY247W9IsDDIlK8BQkyGhKjvGFP_n7uFGjlHkkyvHqbGF3BE1UQxJR-voGghktSWA5FrChpk_cd0LHRzc9R5POhrV44no7Me7RyPE/w275-h400/SectorPie.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiBwjkcqLmL11qP7wtsb70iC9Am292l1Jer5iESDg3F5eVADqM41Ye-WyuMbrU_hh1iCSunBV2hi2tOrzBUJBE9IWtY247W9IsDDIlK8BQkyGhKjvGFP_n7uFGjlHkkyvHqbGF3BE1UQxJR-voGghktSWA5FrChpk_cd0LHRzc9R5POhrV44no7Me7RyPE/s1566/SectorPie.jpeg)

산업 부문이 가장 많은 상장 주식을 보유하고 있지만, 기술 부문은 전 세계 모든 상장 주식의 시장 가치의 21%를 차지하여 가장 가치 있는 섹터로 자리 잡고 있습니다. 그러나 지역별로 섹터 분포에는 큰 차이가 있습니다:

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjz4nMXdWZpWFd66exYQINpJeNNEq2uMstZgnge5HM1ar4zaiiuhGzf_nmGMoU0cZjtmmUDbfXrZyGF6Dg9m7CSbuRQ5OaGgKGkCYBXjwojFJEQ9-dgMoWcJdOhFVuXbBkXNAB3J9hiMZSaf0XMc90p7mbIvpbCQU79YUQyldiE4AKuQ3-ZVwpZtjNJydU/w400-h88/SectorbyRegionTable.jpeg)](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjz4nMXdWZpWFd66exYQINpJeNNEq2uMstZgnge5HM1ar4zaiiuhGzf_nmGMoU0cZjtmmUDbfXrZyGF6Dg9m7CSbuRQ5OaGgKGkCYBXjwojFJEQ9-dgMoWcJdOhFVuXbBkXNAB3J9hiMZSaf0XMc90p7mbIvpbCQU79YUQyldiE4AKuQ3-ZVwpZtjNJydU/s1754/SectorbyRegionTable.jpeg)

미국 주식 시장의 시가 총액 증가의 대부분은 급증하는 기술 부문에서 비롯되었으며, 유럽이 이 표의 광범위한 하위 그룹 중에서 기술 회사의 가치 비율이 가장 낮다는 점이 주목할 만합니다.

저는 또한 1990년대에 Value Line 데이터를 기반으로 처음 만든 산업 그룹을 loosely 구조화하여 94개의 산업 그룹으로 회사들을 더 자세히 분류합니다. 이는 시간에 따른 비교를 가능하게 합니다. 이 분류가 SIC 또는 NAICS 코드에 기반한 산업 분류와 상충한다는 것을 알고 있지만, 적어도 기업 재무 및 가치 평가의 맥락에서는 저에게는 충분히 잘 작동합니다. 일부 분류는 너무 광범위할 수 있지만, 더 집중된 동종 그룹을 사용하고 싶다면 다른 곳을 찾아야 할 것입니다. 제가 보고하는 산업 평균은 위의 지역별 분류를 사용하여 제공됩니다. 특정 회사가 어떤 산업 그룹에 속하는지 확인하고 싶다면, 해당 세부 정보를 위해 [click on this file](https://pages.stern.nyu.edu/~adamodar/pc/datasets/indname.xlsx) (다운로드하는 데 시간이 걸릴 수 있는 매우 큰 파일)을 확인해 주시기 바랍니다.

****변수****

제가 산업 평균 통계를 보고하는 변수들은 제 관심사를 반영하며, 위험, 수익성, 레버리지 및 배당 지표를 포함하여 다양한 범위를 포괄합니다. 저는 기업 재무 및 가치 평가를 가르치기 때문에, 이러한 그룹을 기반으로 보고하는 데이터를 분류하는 것이 유용하다고 생각합니다. 기업 재무 그룹에는 기업이 투자, 자금 조달 및 배당에 대한 결정을 내리는 데 도움이 되는 변수가 포함되어 있습니다 (2025년 미국 데이터에 대한 링크가 있지만, [more extensive data links here](https://pages.stern.nyu.edu/~adamodar/New_Home_Page/datacurrent.html)를 찾을 수 있습니다).

많은 기업 재무 변수들, 예를 들어 자본 비용, 부채 비율 및 회계 수익률 등은 제 평가에 포함되지만, 저는 제 평가 및 가격 데이터 요구에 더 적합한 몇 가지 변수를 추가합니다.

*(링크에 문제가 있는 경우 다른 브라우저를 시도해 보세요)*

이 데이터의 대부분은 재무 제표에서 가져온 것이지만, 일부는 시장 가격에 의해 결정됩니다(베타, 표준 편차, 거래 데이터), 일부는 자산 클래스와 관련이 있습니다(주식, 채권, 부동산의 수익률) 그리고 일부는 거시 경제적 요소입니다(이자율, 인플레이션 및 위험 프리미엄). 일부 변수는 명확하지만, 다른 변수는 해석의 여지가 있으며, 제가 사용하는 회계 변수의 정의를 볼 수 있는 [glossary](https://pages.stern.nyu.edu/~adamodar/New_Home_Page/definitions.html)가 있습니다. 또한 각 데이터 세트(엑셀 형식) 내에는 해당 데이터 세트에서 사용되는 변수의 정의 페이지가 포함되어 있습니다.

**타이밍**

이 데이터 세트는 모두 지난 4일 동안 수집되었으며 2025년 초에 이용 가능한 데이터를 반영합니다. 시장 자본화, 이자율 및 위험 프리미엄과 같은 시장 수치는 현재의 수치를 반영하고 있습니다.

# 2025년 초 시장의 판단

회사의 재무 수치에 대해서는 분기별로 업데이트되는 회계 정보를 기반으로 하고 있습니다. 결과적으로, 회계 수치는 **가장 최근의 재무 보고서(보통 2024년 9월 30일 기준)**를 반영하며, 흐름 수치(손익계산서 및 현금 흐름표)에 대해서는 가장 최근의 보고서를 기준으로 한 지난 12개월 수치를 사용하고, 주식 수치(대차대조표 값)에 대해서는 가장 최근의 대차대조표를 사용합니다.

이러한 관행은 일관성이 없어 보일 수 있지만, 시장의 투자자들이 주식을 가격 책정하는 데 사용할 수 있는 정보를 반영합니다. 결국, 2025년 초에는 어떤 투자자도 2024년 회계 수치에 접근할 수 없으며, 2025년 초의 주가를 2024년 9월까지의 지난 12개월 동안의 수익으로 나누어 계산한 후행 주가수익비율(P/E 비율)이 전혀 불일치하지 않는다고 생각합니다. 같은 맥락에서, 미래의 예상 성장률과 향후 몇 년간의 수익은 2025년 초에 가장 최신의 애널리스트 예측을 통해 얻어집니다.

# 데이터 업데이트 및 추정 과정

데이터를 연간 한 번만 업데이트하기 때문에 2025년이 지나면서 데이터는 노후화될 것입니다. 그러나 이러한 노후화는 저의 가격 배수(PE, PBV, EV/EBITDA 등)를 사용할 경우 가장 두드러지게 느껴질 것이며, 회계 비율(회계 수익률)에서는 그리 크게 느껴지지 않을 것입니다. 금리와 위험 프리미엄이 연중 변동할 경우, 이를 사용하는 데이터 세트(자본 비용, 초과 수익 등)는 이러한 거시 경제 수치를 업데이트할 수 있게 해줍니다. 요약하자면, 10년 만기 국채 금리가 5%로 상승하고 주식 위험 프리미엄이 급등할 경우, [cost of capital worksheet](https://pages.stern.nyu.edu/~adamodar/pc/datasets/wacc.xls)에서 해당 수치를 업데이트하고 최신 값을 얻을 수 있습니다.

## 추정 과정

회사의 데이터 변수를 계산하는 동안, 원시 데이터 제공자에 의해 회사별 데이터를 공유하는 것이 제한되며, 제가 보고하는 대부분의 데이터는 산업 수준에서 이루어집니다. 그렇긴 하지만, 거의 모든 통계적 측정에는 주의사항이 따르기 때문에 산업 통계를 어떻게 가장 잘 추정하고 보고할 것인지에 대해 고민해왔습니다. 가격 수익 비율과 같은 지표의 경우, 회사 간 평균을 계산하면 샘플링 편향(손실을 보고하는 기업을 제외함)과 한쪽 방향(대부분 긍정적, PE 비율은 음수가 될 수 없기 때문에)으로 왜곡된 결과가 나올 수 있습니다. 이러한 문제가 거의 모든 변수에서 발생하기 때문에, PE의 경우와 같이, 저는 모든 기업(손실을 보고하는 기업 포함)의 시장 가치를 집계하고, 손실 기업을 포함한 모든 기업의 집계된 순이익으로 나누는 집계 변형을 사용합니다.

저는 샘플에 모든 상장 기업을 포함하고 있으며, 기업마다 공시 요구 사항이 다르기 때문에 데이터가 누락되거나 공개되지 않은 변수도 존재합니다. 이러한 기업을 샘플에서 완전히 제외하기보다는, 저는 이들을 제 범위에 포함시키되, 데이터가 누락되지 않은 기업에 대해서만 값을 보고합니다. 한 예로, 제가 2년 전에 추가한 [data on employees](https://pages.stern.nyu.edu/~adamodar/pc/datasets/Employee.xls) 데이터 세트가 있습니다. 여기에서는 직원당 수익 및 보상 통계와 같은 통계를 보고합니다. 이는 일부 기업에서 자발적으로 공개되는 데이터 항목이 아니기 때문에, 통계는 보편적으로 공개되는 데이터보다 신뢰성이 떨어집니다.

긍정적인 측면에서, 수십 년 동안 이 일을 해온 사람의 관점에서 말씀드리자면, 전 세계의 회계 기준은 과거보다 덜 다릅니다. 또한, 작은 신흥 시장에서도 데이터의 누락 항목이 10년 또는 20년 전보다 훨씬 적습니다.

****데이터 접근 및 사용****

저의 웹사이트에서 찾을 수 있는 데이터는 공개용이며, 웹페이지에서 쉽게 접근할 수 있도록 정리하였습니다. 현재 연도의 데이터는 여기에서 접근할 수 있습니다:

링크를 클릭했는데 작동하지 않는 경우, 다른 브라우저를 사용해 보시기 바랍니다. 특히 Google Chrome은 저의 서버에서 다운로드 시 문제가 발생하는 경우가 많습니다.

이전 연도의 데이터를 원하신다면, 저의 웹페이지의 아카이브 데이터 섹션에서 확인하실 수 있습니다:

이 데이터는 일부 데이터 항목 및 미국 데이터의 경우 20년 이상 거슬러 올라가지만, 글로벌 시장의 경우는 약 10년 정도만 가능합니다.

마지막으로, 이 데이터는 주로 기업 금융 및 가치 평가 분야의 실무자를 위해 제공되며, 여러분의 시간 절약과 실시간 가치 평가에 도움이 되기를 바랍니다. 제 페이지의 모든 데이터 항목은 공개 출처에서 가져온 것임을 강조하고 싶습니다. 시간과 데이터에 접근할 수 있는 누구나 이를 재구성할 수 있습니다. 데이터 사용에 대한 완전한 읽기를 원하신다면, 다음 링크를 시도해 보세요:

규제 또는 법적 분쟁에 처해 있고, 제 데이터를 사용하여 주장을 펼치고자 하신다면 그렇게 하셔도 좋지만, 저를 그 싸움에 끌어들이지 말아 주시기 바랍니다. 데이터를 사용할 때의 인정에 관해서는, 제가 이전 해에 말씀드린 내용을 반복하겠습니다. 제 데이터를 사용하고 그 사용을 인정하고 싶다면 감사드리지만, 그 인정을 생략하신다면 저는 그것을 경시로 보지 않을 것이며, 법적 결과로 위협하지도 않을 것입니다.

마지막으로, 제가 팀을 두고 있지 않다는 점을 인식해 주시기 바랍니다. 이는 제가 프로세스를 통제할 수 있는 이점을 주지만, 교황과는 달리 저는 매우 오류가 발생하기 쉬운 존재입니다. 오류나 누락된 링크를 발견하신다면, 저에게 알려주시면 최대한 빨리 수정하겠습니다. 마지막으로, 저는 데이터 서비스가 되고 싶지 않으며, 요청하신 맞춤형 데이터는 어떤 합리적인 요청이라도 충족할 수 없습니다. 죄송합니다!

**YouTube 비디오**

![](https://www.youtube.com/watch?v=SCpqqrW-rrc)

**링크**

1. [Current data (start of 2025)](https://people.stern.nyu.edu/adamodar/New_Home_Page/datacurrent.html)
2. [Archived data (from prior years)](https://people.stern.nyu.edu/adamodar/New_Home_Page/dataarchived.html)
3. [Companies/Industries](https://pages.stern.nyu.edu/~adamodar/pc/datasets/indname.xlsx)
4. [Data definitions](https://pages.stern.nyu.edu/~adamodar/New_Home_Page/definitions.html)

**2025년 데이터 업데이트**

1. [Data Update 1 for 2025: The Draw (and Danger) of Data!](https://aswathdamodaran.blogspot.com/2025/01/data-update-1-for-2025-draw-and-danger.html)
2. [Data Update 2 for 2025: The Party continued for US Equities](https://aswathdamodaran.blogspot.com/2025/01/data-update-2-for-2025-party-continued.html)
3. [Data Update 3 for 2025: The times they are a'changin'!](https://aswathdamodaran.blogspot.com/2025/01/data-update-3-for-2025-slicing-and.html)
4. [Data Update 4 for 2025: Interest Rates, Inflation and Central Banks!](https://aswathdamodaran.blogspot.com/2025/01/data-update-4-for-2025-interest-rates.html)