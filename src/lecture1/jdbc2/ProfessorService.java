package lecture1.jdbc2;

import lecture1.jdbc2.StringUtil;

public class ProfessorService {
	
	static final String ���̵�_�ʼ� = "���̵� �Է��ϼ���";
	static final String �̸�_�ʼ� = "�̸��� �Է��ϼ���";
	static final String ���̵�_�ߺ� = "���̵� �ߺ��˴ϴ�";
	
	public static String validate(Professor professor) throws Exception{
		if(professor.getId() == 0)
			return ���̵�_�ʼ�;
		if(StringUtil.isEmptyOrBlank(professor.getProfessorName()))
			return �̸�_�ʼ�;
		Professor professor1 = ProfessorDAO.findById(professor.getId());
		if(professor1 != null || professor1.getId() == professor.getId())
			return ���̵�_�ߺ�;
		return null;
	}
	
	public static String insert(Professor professor) throws Exception{
		String errorMessage = validate(professor);
		if(errorMessage !=null) return errorMessage;
		ProfessorDAO.insert(professor);
		return null;
	}
	
	public static String update(Professor professor) throws Exception{
		String errorMessage = validate(professor);
		if(errorMessage != null) return errorMessage;
		ProfessorDAO.update(professor);
		return null;
	}
}
