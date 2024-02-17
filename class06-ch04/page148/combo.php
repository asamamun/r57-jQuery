<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>attr and removeAttr</title>
<link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<h4>AJAX in jQuery</h4>
<label>Division</label>
<select id="division" class="form-control">
<option value="-1">Select</option>

</select>
<label>District</label>
<select id="district" class="form-control">
<option value="-1">Select</option>
</select>
<label>Area</label>
<select id="area" class="form-control">
<option value="-1">Select</option>
</select><hr>
<div id="areainfo"></div>

<script src="../../assets/js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
	
	//for division start
	$.getJSON("classes/populateDivision.php",function(data){
		//var d = $.parseJSON(data);
		//console.log(data);
		var div_opt = "";
		$.each(data,function(k,v){
			div_opt += "<option value='"+v.divid+"'>"+v.divname+"</option>";
			});
		$("#division").append(div_opt);	
		});//$.getJSON
		//for division end
	
	//for district start
	$("#division").change(function(e) {		
        var selected_div = $(this).val();
		if(selected_div == "-1"){return;}
		$.getJSON("classes/populateDistrict.php",{
			division:selected_div,
			rand:Math.random()
			},
			function(data){
				console.log(data);
				let dist_opt;
				if(data.result == "0"){
					dist_opt = "<option value='-1'>Select</option>";
				}
				else{
				dist_opt = "<option value='-1'>Select</option>";
		$.each(data.records,function(k,v){
			dist_opt += "<option value='"+v.distid+"'>"+v.distname+"</option>";
			});
				}
		$("#district").html(dist_opt);				
				//
				});
    });//$("#division")
	//for disrtict end

    //for area start
    $("#district").change(function(e) {
        var selected_div = $(this).val();
        if(selected_div == "-1"){return;}
        $.getJSON("classes/populateArea.php",{
                distid:selected_div,
                rand:Math.random()
            },
            function(data){
               console.log(data);
			   let dist_opt;
			   if(data.result == '0'){
				dist_opt = "<option value='-1'>No data Found</option>";
			   }
			   else{
                dist_opt = "<option value='-1'>Select</option>";

                $.each(data.records,function(k,v){
                    dist_opt += "<option value='"+v.areaid+"'>"+v.areaname+"</option>";
                });
			   }
                $("#area").html(dist_opt);
                //
            });
    });//$("#district")
    //for area end
	//for area info start
	$("#area").change(function(e) {
        var selected_div = $(this).val();
        if(selected_div == "-1"){return;}
        $.getJSON("classes/populateAreainfo.php",{
                areaid:selected_div,
                rand:Math.random()
            },
            function(data){
               console.log(data);
			   let dist_opt;
			   if(data.result == '0'){
				dist_opt = "<option value='-1'>No data Found</option>";
			   }
			   else{
                dist_opt = "<option value='-1'>Select</option>";

                $.each(data.records,function(k,v){
                    dist_opt = v.description;
                });
			   }
                $("#areainfo").html(dist_opt);
                //
            });
    });//$("#district")
    //for area info end
	
	
	});//ready end
</script>
</div>
</body>
</html>