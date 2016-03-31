//upload Img
$(document).ready(function(){
	$(".menue").click(function() {
		$(".sub-menu").toggle("slow");
	});
	
	$("input[type=radio]").bind("click",function(){
		roleName();
	});
	
	//上传图片
	new AjaxUpload('#uploadImg', {
		action : 'upload',
		name : 'file',
		responseType : 'json',
		onSubmit : function(file, ext) {
			if (ext && /^(jpg|png|bmp)$/.test(ext.toLowerCase())) {
				this.setData({
					'fileName' : file
				});
			} else {
				alert("请上传格式为 jpg|png|bmp 的图片！");
				return false;
			}
		},
		onComplete : function(file, response) {
			if (response.error) {
				alert("error");
				return;
			}

			$("#viewImgs").append("<img src='" + response.picUrl + "'/>");
			$("#picpath").val($("#picpath").val() + "," + response.picUrl);
		}
	});
	
	$()
});

function roleName(){
	var roleNames = $(":radio");
	var roleName = $(":hidden")[14];	
	if(roleNames[0].checked==true){
		roleName.value="普通管理员";
	}else if(roleNames[1].checked==true){
		roleName.value="普通会员";
	}else{
		roleName.value=null;
	}
}