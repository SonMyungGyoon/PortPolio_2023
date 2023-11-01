/**
 * 
 */
var idFlag = false;

...
    
    //id = 'id' 인 input에 플래그가 있다. checkId 함수를 시행한다.
    $("#id").blur(function() {
        idFlag = false;
        checkId("first");
    });
    
    //========= id 체크 함수 시행 ===============
    function checkId(event) {
        if (idFlag)
            return true;
        
        var id = $("#id").val();
        var oMsg = $("#idMsg");
        var oInput = $("#id");
        
        //============ [id 필수입력] ============
        if (id == "") {
            showErrorMsg(oMsg, "필수 정보입니다."); //에러메시지 출력
            setFocusToInputObject(oInput); //전송 플래그 조절
            return false;
        }
        
        //============ [id 유효성검사] ============
        var isID = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
        if (!isID.test(id)) {
            showErrorMsg(oMsg, "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다."); //에러메시지 출력
            setFocusToInputObject(oInput); //전송 플래그 조절
            return false;
        }
        
        //============ [id 중복체크] ============
        // 추가) ajax 통신으로 DB 데이터 조회해서 중복확인하기!!!(post 방식)
        idFlag = false; //검사 flag
        let userId = $('input[name=MEMBER_ID]').val(); // input_id에 입력되는 값
        console.log("입력한 id값 : " + userId);
        
        //id 중복체크를 위해 input에 입력한 id값을 가져와서 ajax data로 반드시 보내줘야한다.
        $.ajax({
            url: "IdCheckService/idcheckAjax",
            type: "post",
            data: {
                userId: userId
            },
            dataType: 'json',
            success: function (result) {
                //Action에서 받은 result값 : 1이면 사용가능, 0이면 중복됨
                if (result == 0) { //돌려받은 결과가 중복이 존재한다는 0이면
                    
                    showErrorMsg(oMsg, "이미 사용중이거나 탈퇴한 아이디입니다."); //에러메시지 출력
                    setFocusToInputObject(oInput); //전송 플래그 조절
                    
                } else { //돌려받은 결과가 중복이 없다는 false이면
                    
                    if (event == "first") { //그리고 #id라면
                        showSuccessMsg(oMsg, "멋진 아이디네요!"); //에러메시지 출력
                    } else {
                        hideMsg(oMsg); //메시지 숨김
                    }
                    idFlag = true; //id 플래그 1로 변경. 더이상 id alert 발생 x
                }
            },
            error: function () {
                alert("서버요청실패");
            }
        })
        return true;
    } //function checkId(event) { 끝
    
    
