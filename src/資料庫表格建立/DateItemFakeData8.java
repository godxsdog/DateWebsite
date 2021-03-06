package 資料庫表格建立;

import java.io.IOException;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dateitem.model.DateItemService;
import com.member.model.MemberService;
import com.pet.model.Pet;
import com.pet.model.PetService;
import com.restaurant.model.RestaurantJDBCDAO;
import com.restaurant.model.RestaurantService;


@WebServlet("/DateItemFakeData2")
public class DateItemFakeData8 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		MemberService memSvc=new MemberService();
		
		Map<Integer,List<Integer>> pMember=new HashMap<Integer,List<Integer>>();
		for(int i=5001;i<=5015;i++){
			List<Pet> pets=memSvc.getPetsByMemNo(i);
			List<Integer> list=new ArrayList<Integer>();
			for(Pet pet:pets){
				list.add(pet.getPetNo());
			}
			pMember.put(i, list);
		}
		

		
		RestaurantService restSvc=new RestaurantService ();
		Map<Integer,String> rest=new HashMap<Integer,String>();
		for(int i=7006;i<=7080;i++){
			String loc=restSvc.getOneRest(i).getRestLocate();
			rest.put(i, loc);
		}
		
	
		
		List<String> dText=new ArrayList<String>();
		dText.add("Hey∼ 親愛的你們，最近好嘛∼ 好一陣子沒有跟你們喝杯咖啡、下午茶了。伴著這美麗的沉靜，就這樣我們開始了美好的一天晨霧慢慢散去，就成了這番景象好了，天亮了，我們可以盡情的玩耍了。");
		dText.add("Hi~最近天氣特別好，在這美好的天氣裡 最適合交好朋友，如果你願意陪我一起吃頓飯，會是在完美不過的一天了");
		dText.add("阿囉哈，大家好啊，我最近超愛看中國有嘻哈的，或許我們可以邊吃飯邊聊中國有嘻哈喔的，");
		dText.add("你在看我嗎，沒錯就是妳，還不快來吃飯交個朋友，我家可愛的寵物正在等著你呢");
		dText.add("我家的寵物最近很孤單呢，她正在等著你喔，鳩咪");
		dText.add("我最近在教我家狗狗學習Hibernate，她已經開始會建組態擋了，或許我們可以邊吃飯邊聊Java喔");
		dText.add("青山、綠樹、鮮花就是一道美麗的風景，遠處那白色的小樓房掩映其中，猶如走進了美麗的童話世界，讓人忘卻工作的疲勞，心中的煩惱。");
		dText.add("春天，美麗著，開著嫩綠的芽樹——已經可以活蹦亂跳的年齡，在灰色的枝杈上生生地長著、翠綠著、鮮活而清盈著");
		dText.add("似乎有了無味，無了新鮮、無了生機與還有的鮮活；甚至內心還摻攪一份或重或輕顛的刺激性漣漪");
		dText.add("有著大樹的沉穩，透著涼爽；有著瑣碎、枝葉飄零的輕盈與悲憫");
		dText.add("有著個體（性）的存在，平等地來到這個世界上、平等地擁有生命、平等地被放置于這個地平面");
		
		
		List<String> dTitle=new ArrayList<String>();
		dTitle.add("我哭著哭著說沒事你怎麼就相信了呢");
		dTitle.add("快來一起玩吧");
		dTitle.add("Yo this is your best chance");
		dTitle.add("天氣超好的 明天一起吃個飯吧");
		dTitle.add("我想妳了，再者寒冷的天氣裡");
		dTitle.add("我什麼都不要，只要你");
		dTitle.add("這畫面太美我不敢看");
		dTitle.add("寂寞讓人盲，失念讓人慌");
		dTitle.add("但那個人已經不是我");
		dTitle.add("一顆恆久遠，真愛永流傳");
		
		
		List<java.sql.Timestamp> dateTime=new ArrayList<java.sql.Timestamp>();
		GregorianCalendar  gCalender1=new GregorianCalendar(2017,8,20,9,00,00);
		GregorianCalendar  gCalender2=new GregorianCalendar(2017,8,22,12,30,00);
		GregorianCalendar  gCalender3=new GregorianCalendar(2017,8,25,18,00,00);
		dateTime.add(new java.sql.Timestamp(gCalender1.getTimeInMillis()));
		dateTime.add(new java.sql.Timestamp(gCalender2.getTimeInMillis()));
		dateTime.add(new java.sql.Timestamp(gCalender3.getTimeInMillis()));
		
		
		List<java.sql.Timestamp> meetTime=new ArrayList<java.sql.Timestamp>();
		GregorianCalendar  gCalenderb1=new GregorianCalendar(2017,8,26,9,00,00);
		GregorianCalendar  gCalenderb2=new GregorianCalendar(2017,8,26,12,30,00);
		GregorianCalendar  gCalenderb3=new GregorianCalendar(2017,8,36,18,30,00);
		GregorianCalendar  gCalendera1=new GregorianCalendar(2017,8,28,9,00,00);
		GregorianCalendar  gCalendera2=new GregorianCalendar(2017,8,28,12,30,00);
		GregorianCalendar  gCalendera3=new GregorianCalendar(2017,8,28,18,30,00);
		GregorianCalendar  gCalendern1=new GregorianCalendar(2017,8,30,9,00,00);
		GregorianCalendar  gCalendern2=new GregorianCalendar(2017,8,30,12,30,00);
		GregorianCalendar  gCalendern3=new GregorianCalendar(2017,8,30,18,30,00);		
		meetTime.add(new java.sql.Timestamp(gCalenderb1.getTimeInMillis()));
		meetTime.add(new java.sql.Timestamp(gCalenderb2.getTimeInMillis()));
		meetTime.add(new java.sql.Timestamp(gCalenderb3.getTimeInMillis()));
		meetTime.add(new java.sql.Timestamp(gCalendera1.getTimeInMillis()));
		meetTime.add(new java.sql.Timestamp(gCalendera2.getTimeInMillis()));
		meetTime.add(new java.sql.Timestamp(gCalendera3.getTimeInMillis()));
		meetTime.add(new java.sql.Timestamp(gCalendern1.getTimeInMillis()));
		meetTime.add(new java.sql.Timestamp(gCalendern2.getTimeInMillis()));
		meetTime.add(new java.sql.Timestamp(gCalendern3.getTimeInMillis()));
		
		
		//先把寵物圖片查好 放在map 避免在迴圈理一直去db查詢
		PetService petSvc=new PetService();
		Map<Integer,byte[]> petImg=new HashMap<Integer,byte[]>();
		List<Pet> pets = petSvc.getAll();
		for(Pet pet:pets){
			petImg.put(pet.getPetNo(), pet.getPetImg());
		}
		
		
//		List<String> dDate=new ArrayList<String>();
//		dDate.add("20170820");
//		dDate.add("20170821");
//		dDate.add("20170815");
//
//		List<String> mDate=new ArrayList<String>();
//		mDate.add("20170830");
//		mDate.add("20170825");
//		mDate.add("20170822");
//		
//		List<String> dTime=new ArrayList<String>();
//		dTime.add("20:30:20");
//		dTime.add("12:30:20");
//		dTime.add("09:30:20");
//		
//		
//		List<String> mTime=new ArrayList<String>();
//		mTime.add("20:30:20");
//		mTime.add("12:30:20");
//		mTime.add("09:30:20");
		
		
		DateItemService dateSvc=new DateItemService();
		
		
		Random rand = new Random();
		for(int i=0;i<100;i++){
			Integer pMemberRand=rand.nextInt(15)+5001;
			Integer restRand=rand.nextInt(75)+7006;
			Integer titleRand=rand.nextInt(dTitle.size());
			Integer textRand=rand.nextInt(dText.size());
			Integer dTimeR=rand.nextInt(dateTime.size());
			Integer mTimeR=rand.nextInt(meetTime.size());
			Integer mPeopleR=rand.nextInt(5);
			Boolean[] hasmate=new Boolean[]{true,false};
			Boolean hasMateR=hasmate[rand.nextInt(2)];
			Integer priceR=(rand.nextInt(15)+1)*100;
			Integer statusR=0;
			Integer showR=0;
			Integer viewerR=rand.nextInt(1000);
//			Integer buyerR=rand.nextInt(30)+5001;
			Integer buyerR=5100;
			Boolean[] qrCode=new Boolean[]{true,false};
			Boolean qrCodeR=qrCode[rand.nextInt(2)];
			Integer buyerRepR=0;
			Integer sellerrRepR=0;
			Boolean[] instant=new Boolean[]{true,false};
			Boolean instantR=instant[rand.nextInt(2)];
			//依照主人有的寵物次數取random
			Integer petNo=pMember.get(pMemberRand).get(rand.nextInt(pMember.get(pMemberRand).size()));
			byte[] dateItemImg= petImg.get(petNo);
			
			
			

//			//下面這個是要被檢舉的約會商品
//			if(i==98){
//				dateSvc.addDateItem(pMemberRand, restRand, "我比中壢資策會強", dateItemImg, dText.get(textRand),
//						dateTime.get(dTimeR), meetTime.get(mTimeR), 
//						rest.get(restRand), mPeopleR, hasMateR, priceR, statusR, showR, viewerR, buyerR, 
//						qrCodeR, buyerRepR, sellerrRepR, instantR, petNo);
//				break;
//			}
			
//			//下面這個是要太貴買不起的約會商品
//			if(i==97){
//				dateSvc.addDateItem(pMemberRand, restRand, dTitle.get(titleRand), dateItemImg, dText.get(textRand),
//						dateTime.get(dTimeR), meetTime.get(mTimeR), 
//						rest.get(restRand), mPeopleR, hasMateR, new Integer(9999), statusR, showR, viewerR, buyerR, 
//						qrCodeR, buyerRepR, sellerrRepR, instantR, petNo);
//				break;
//			}
//			
//			
//			//下面這個是要太貴買不起的約會商品
//			if(i==96){
//				dateSvc.addDateItem(pMemberRand, restRand, dTitle.get(titleRand), dateItemImg, dText.get(textRand),
//						dateTime.get(dTimeR), meetTime.get(mTimeR), 
//						rest.get(restRand), mPeopleR, hasMateR, new Integer(9999), statusR, showR, viewerR, buyerR, 
//						qrCodeR, buyerRepR, sellerrRepR, instantR, petNo);
//				break;
//			}
//			
		
			dateSvc.addDateItem(pMemberRand, restRand, dTitle.get(titleRand), dateItemImg, dText.get(textRand),
					dateTime.get(dTimeR), meetTime.get(mTimeR), 
					rest.get(restRand), mPeopleR, hasMateR, priceR, statusR, showR, viewerR, buyerR, 
					qrCodeR, buyerRepR, sellerrRepR, instantR, petNo);
			

//			String sql="INSERT INTO DATEITEM values (DATEITEMNO_SQ.NEXTVAL,"+(pMemberRand).toString()+","+restRand+",\'"+dTitle.get(titleRand)+"\'"
//					+",EMPTY_BLOB(),'"+dText.get(textRand)+"',TO_DATE('"+dDate.get(dDateR)+" "+dTime.get(dTimeR)+"\',\'YYYYMMDD HH24:MI:SS'),TO_DATE('"
//					+mDate.get(mDateR)+" "+mTime.get(mTimeR)+"\',\'YYYYMMDD HH24:MI:SS'),'"+rest.get(restRand)+"',"+mPeopleR+","+hasMateR+","+priceR+","
//					+statusR+","+showR+","+viewerR+","+buyerR+","+qrCodeR+","+buyerRepR+","+sellerrRepR+","+instantR+","+petNo+");";
//			System.out.println(sql); 
			
			
			
			
		}
		
		
		
		dateSvc.addDateItem(5014, 7040, "我比中壢資策會強", petImg.get(1041), "怎樣我就是覺得我超強",
				new java.sql.Timestamp(gCalender1.getTimeInMillis()), new java.sql.Timestamp(gCalendern3.getTimeInMillis()), 
				rest.get(7040), 0, false, new Integer(1100), 0, 0, 100, 5100, 
				false, 0, 0, false, 1041);
		
		
		dateSvc.addDateItem(5011, 7040, "打code累了就來跟可愛的寵物約個會吧", petImg.get(1033), "青山、綠樹、鮮花就是一道美麗的風景，遠處那白色的小樓房掩映其中，猶如走進了美麗的童話世界，讓人忘卻工作的疲勞，心中的煩惱。",
				new java.sql.Timestamp(gCalender1.getTimeInMillis()), new java.sql.Timestamp(gCalendern3.getTimeInMillis()), 
				rest.get(7040), 0, false, new Integer(9999), 0, 0, 100, 5100, 
				false, 0, 0, false, 1033);
		
		
	}


	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, res);
	}

}
