
document.execCommand("defaultParagraphSeparator", false, "p");
var filearray = new Array();
var tagArray = new Array();
var postRealFile = new Array();
var uuid = new Array();
var imgcnt = 0;

$(function(){
    var div=document.querySelector("[contentEditable=\"true\"]");
    div.onkeyup=function(){
    var a=document.activeElement;
    if( a.lastChild && a.lastChild.nodeName!="BR" ){
        a.appendChild(document.createElement("br"));
    }
    };
    div.onkeypress=function(e){
    if( e.keyCode==13 ){
        var selection=window.getSelection(),
        range=selection.getRangeAt(0),
        br=document.createElement("br");
        range.deleteContents();
        range.insertNode(br);
        range.setStartAfter(br);
        range.setEndAfter(br);
        range.collapse(false);
        selection.removeAllRanges();
        selection.addRange(range);
        return false;
    }
    };
}) 

$(function(){
//    var $div = $('<div style="display:none; position:absolute;" id="boxsizing"><input type="number" style="width:30px;" id="sizinginput"><input type="hidden" id="boxValue"></div>');
//    var $imgRealSize = $('<div id="hiddenContainer"></div>');
//    $('#frm').after($imgRealSize);
//    $('body').after($div);
    
/*    $(document).on("click","#editor > img",function(){
        $("#boxsizing").css({
            'top' : $(this).position().top+$(this).height() +'px',
            'left' : $(this).position().left+$(this).width()/2 +'px',
        });
        $("#boxsizing").fadeIn();
        $("#boxValue").val($(this).attr('id'));
    })

    $("#sizinginput").blur(function(){
        $("#"+$("#boxValue").val()).height($("#"+$("#boxValue").val()));
    }) */

const editor = document.getElementById("editor");
const btnImage = document.getElementById("btn-image");
const imageSelector = document.getElementById("img-selector");
    $("#editor").click(function(){
        $(this).focus();
    })
    $("#btn-underline").click(function () {
        setStyle("underline");
    });
    $("#btn-italic").click(function () {
        setStyle("italic");
    });
    $("#btn-bold").click(function () {
        setStyle("bold");
    });
    $("#btn-strike").click(function () {
        setStyle("strikeThrough");
    });
    $("#btn-left").click(function () {
    	console.log($(this).text());
        setStyle("justifyLeft");
    });
    $("#btn-center").click(function () {
    	console.log($(this).text());
        setStyle("justifyCenter");
    });
    $("#btn-right").click(function () {
    	console.log($(this).text());
        setStyle("justifyRight");
    });
    $("#btn-image").click(function () {
        $("#img-selector").click();
    });

    $("#img-selector").change(function fileadd(e){
        var reader = new FileReader();
        $.each($(e.target.files), function(i,item){
            console.log(item);
            var fileLength = item.name.length;
            var fileDot = item.name.lastIndexOf(".");
            var fileext = item.name.substring(fileDot+1, fileLength).toLowerCase();
            if(extCheck(fileext)){
                filearray.push(item);
            }
        //    console.log(`file length : ${fileLength} , file dot : ${fileDot} ext : ${fileext}` )
            
        })
        console.log(filearray.length);
        
        $.each($(e.target.files), function(i,item){
            const reader = new FileReader();
            reader.onload = function(e){
                var images = new Image();
                images.onload = function(){
                   // $("#hiddenContainer").append($(`<input type='hidden' value='${this.height}' id='h_img${imgcnt}'>`));
                  //  images.height = this.height/2;
                    images.id = "img"+imgcnt;
                    images.className = "img"
                    imgcnt++;
                    $("#editor").append(images);
                    tagArray.push(images.id);
                }
                images.src = reader.result;
             /*   
                focusEditor();
                var img = document.createElement('img');//+
                img.src = reader.result;//+
                img.id = "img"+imgcnt;//+
                img.width = imageWidth;
                imgcnt++;
                $("#editor").append(img);//+
                tagArray.push(img.id);//+ */
                
            }
            reader.readAsDataURL(item);

        })
    })
/*
    $("#btn").click(function (){
        var frm = new FormData($("#frm")[0]);
       // frm.append('content',createViewFactory());
        console.log(createViewFactory());
        $.each($(postRealFile), function(i,item){
            frm.append('file',item);
        })
        $.each($(uuid), function(i,item){
            frm.append('uuid',item);
            console.log(item);
        })
        

        $.ajax({
            type: "post",
            url: "filetest.do",
            data: frm,
            contentType: false,
            processData: false,
            dataType: "text",
            success: function(data){
                if(data=="ok") alert("ok");
                else alert("no");
            },
            error: function(data){
                alert('error');
            }
        })
    }) */
})

function focusEditor() {
        editor.focus();
}
function setStyle(style) {
    document.execCommand(style);
    focusEditor();
}
function uuidv4() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
        return v.toString(16);
    });
}

function createViewFactory(){
    uuid.length= 0;
    var clone = $("#editor").clone();
    var cloneImgArray = clone.find('img');
    var equlesItem = new Array();
    $.each($(cloneImgArray),function(i,item){
        equlesItem.push($(item).attr('id'));
    })
    console.log("clone 변환 : "+equlesItem);
    console.log("img-- 변환 : "+tagArray);
    var result = equlesItem.filter(x=> tagArray.includes(x));
    console.log("최 종 결 과 : "+result);

    $.each($(result), function(i,item){
        var fileSelect = item.substring(3);
        postRealFile.push(filearray[fileSelect]);
        console.log(item);
       // $("#"+item).attr("src","images/items/"+uuidv4);
        var uuids = uuidv4();
        uuid.push(uuids);
        clone.find("#"+item).attr("src","images/items/"+uuids);
        
    })
    return(clone.html());
}
const checklist = ['gif','jpeg','jpg','png','svg'];
function extCheck(ext){
    console.log(ext);
    var bool = false;
    for(var i =0 ; i< checklist.length; i ++){
        if(checklist[i] == ext) bool = true;
    }
    return bool;
}