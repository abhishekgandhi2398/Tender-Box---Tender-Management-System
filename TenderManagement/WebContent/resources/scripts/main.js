function loadEmployeeRegister() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentBox").innerHTML =
        this.responseText;
      }
    };
    xhttp.open("GET", "employeeregister", true);
    xhttp.send();
}

function loadTendersList() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentBox").innerHTML =
        this.responseText;
      }
    };
    xhttp.open("GET", "tenderslist", true);
    xhttp.send();
}

function loadAdminDashBoard() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("contentBox").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "admindashboard", true);
  xhttp.send();
}
function loadEmployeeDashBoard() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("contentBox").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "employeedashboard", true);
  xhttp.send();
}
function loadSupplierDashBoard() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("contentBox").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "supplierdashboard", true);
  xhttp.send();

}
function loadCreateTender() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	      document.getElementById("contentBox").innerHTML =
	      this.responseText;
	    }
	  };
	  xhttp.open("GET", "createtender", true);
	  xhttp.send();

}

function loadEmployeeList() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentBox").innerHTML =
        this.responseText;
      }
    };
    xhttp.open("GET", "employeelist", true);
    xhttp.send();
}

function loadSuppliersList() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentBox").innerHTML =
        this.responseText;
      }
    };
    xhttp.open("GET", "supplylist", true);
    xhttp.send();
}

function loadBiddersList(element) {
	var table=document.getElementById("empTenderListTable");
	  var r= element.parentNode.parentNode.rowIndex;
	  var ref=table.rows[r].cells[0].innerHTML;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentBox").innerHTML =
        this.responseText;
      }
    };
    xhttp.open("GET", "bidderslist/"+ref, true);
    xhttp.send();
}

function loadTenderListSupplier() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentBox").innerHTML =
        this.responseText;
      }
    };
    xhttp.open("GET", "suppliertenderlist", true);
    xhttp.send();
}
function loadApplyQuotation(element) {
	var table=document.getElementById("supplierTenderListTable");
	var r= element.parentNode.parentNode.rowIndex;
    var ref=table.rows[r].cells[0].innerHTML;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentBox").innerHTML =
        this.responseText;
      }
    };
    xhttp.open("GET", "quotationapply/"+ref, true);
    xhttp.send();
}

function loadQuotation( element) {
	var table=document.getElementById("empBidderListTable");
	  var r= element.parentNode.parentNode.rowIndex;
	  var reg=table.rows[r].cells[1].innerHTML;
	    var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	        document.getElementById("contentBox").innerHTML =
	        this.responseText;
	      }
	    };
	    xhttp.open("GET", "quotation/"+reg, true);
	    xhttp.send();
}
function loadQueryView() {
	    var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	        document.getElementById("contentBox").innerHTML =
	        this.responseText;
	      }
	    };
	    xhttp.open("GET", "viewquery", true);
	    xhttp.send();
}

function loadWriteQuery() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentBox").innerHTML =
        this.responseText;
      }
    };
    xhttp.open("GET", "queryform", true);
    xhttp.send();
}

function loadTenderDetail(element) {
	//var table=document.getElementById("empTenderListTable");
	var t =document.getElementsByTagName("table");
	var tablename=t[0].getAttribute('id');
	var table = document.getElementById(tablename);
	var r= element.parentNode.parentNode.rowIndex;
	//alert("table name-"+table+"-row-"+r);
	  var reg=table.rows[r].cells[0].innerHTML;
	   var xhttp = new XMLHttpRequest();
	    xhttp.onreadystatechange = function() {
	      if (this.readyState == 4 && this.status == 200) {
	        document.getElementById("contentBox").innerHTML =
	        this.responseText;
	      }
	    };
	    xhttp.open("GET", "tenderdetail/"+reg, true);
	    xhttp.send();	
}


