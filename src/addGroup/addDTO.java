package addGroup;

import java.sql.Date;

// ���͵� ���� ���� 
public class addDTO {

    // ���͵� ���� ��ȣ 
    private Integer groupNum;

    // �׷��� 
    private String id;

    // ���Ӹ� 
    private String groupName;

    // �̹��� ��� ���ڵ� ���� �� �⺻�̹��� ��� ����
    private String imagePath;

    // ��Ͻð� 
    private Date createDate;

    // ��Ƚ�� 
    private Integer zzimCount;

    // �����ο� 
    private Integer maxMember;

    // �����ο� default 1
    private Integer nowMember;

    // �����Ⱓ 
    private String limitDate;

    // ���ӿ��� 
    private String meetingCount;

    // ��� 
    private String location;

    // ��ǥ����ó 
    private String tel;

    // ���ӼҰ� 
    private String introduce;

    // ī�װ��ڵ�(��) 
    private Integer bcategorycode;

    // ī�װ��ڵ�(��) 
    private String scategorycode;

    public String getScategorycode() {
		return scategorycode;
	}

	public void setScategorycode(String scategorycode) {
		this.scategorycode = scategorycode;
	}

	// ȸ�� 
    private Integer money;

    // ���Ӹ�ǥ 
    private String groupGoal;

    // ������� 
    private String target;

	public Integer getGroupNum() {
		return groupNum;
	}

	public void setGroupNum(Integer groupNum) {
		this.groupNum = groupNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getZzimCount() {
		return zzimCount;
	}

	public void setZzimCount(Integer zzimCount) {
		this.zzimCount = zzimCount;
	}

	public Integer getMaxMember() {
		return maxMember;
	}

	public void setMaxMember(Integer maxMember) {
		this.maxMember = maxMember;
	}

	public Integer getNowMember() {
		return nowMember;
	}

	public void setNowMember(Integer nowMember) {
		this.nowMember = nowMember;
	}

	public String getLimitDate() {
		return limitDate;
	}

	public void setLimitDate(String limitDate) {
		this.limitDate = limitDate;
	}

	public String getMeetingCount() {
		return meetingCount;
	}

	public void setMeetingCount(String meetingCount) {
		this.meetingCount = meetingCount;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public Integer getBcategorycode() {
		return bcategorycode;
	}

	public void setBcategorycode(Integer bcategorycode) {
		this.bcategorycode = bcategorycode;
	}

	

	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public String getGroupGoal() {
		return groupGoal;
	}

	public void setGroupGoal(String groupGoal) {
		this.groupGoal = groupGoal;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

    
    
  }