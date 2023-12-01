package com.shop.domain;

import lombok.Data;

@Data
public class CodeVO {
	private String codeId; //코드화 할 변수의 이름
	private String codeNum; //코드별 입력되는 숫자 ex) 0:yes, 1:no
	// codeNum 변수타입을 String 타입으로 바꿨습니다. 이유는 상품코드 중 숫자만 넣는게 아니라 영어코드 들어가서 수정했습니다.
	private String codeName; //숫자에 따른 결과값
}
