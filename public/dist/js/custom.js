var host = $("meta[name='host']").attr("content");
function getTerminal() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fTerminal").innerHTML =
      this.responseText;
    }else{
    	document.getElementById("fTerminal").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/terminal", true);
  xhttp.send();
}

function getTerminal2() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fTerminal2").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fTerminal2").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/terminal", true);
  xhttp.send();
}

function getShippingLine() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fShippingline").innerHTML =
      this.responseText;
    }else{
    	document.getElementById("fShippingline").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/shippingline", true);
  xhttp.send();
}

function getVessel() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("mbl_vessel").innerHTML =
      this.responseText;
    }else{
    	document.getElementById("mbl_vessel").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/vessel", true);
  xhttp.send();
}

function getCountry() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fCountry").innerHTML =
      this.responseText;
    }else{
    	document.getElementById("fCountry").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/country", true);
  xhttp.send();
}

function getCity() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fCity").innerHTML =
      this.responseText;
    }else{
    	document.getElementById("fCity").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/city", true);
  xhttp.send();
}

function getPortloading() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fPortloading").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fPortloading").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/city", true);
  xhttp.send();
}

function getPortdischarge() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fPortdischarge").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fPortdischarge").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/terminal", true);
  xhttp.send();
}

function getImporter() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fImporter").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fImporter").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/importer", true);
  xhttp.send();
}

function getImporter2() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fImporter2").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fImporter2").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/importer", true);
  xhttp.send();
}

function getColoader() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fColoader").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fColoader").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/coloader", true);
  xhttp.send();
}

function getColoader2() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fColoader2").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fColoader2").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/coloader", true);
  xhttp.send();
}

function getSupplier() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fSupplier").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fSupplier").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/supplier", true);
  xhttp.send();
}

function getSaleperson() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fSaleperson").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fSaleperson").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/saleperson", true);
  xhttp.send();
}

function getForeignAgent() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fagent").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fagent").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/foreignAgent", true);
  xhttp.send();
}

function check_menifested(val){
  if(val == '2'){
      document.getElementById("license").innerHTML = "<option value=''>N/A</option>";
      document.getElementById("license").setAttribute("readonly", "true");
      document.getElementById("ship_company").setAttribute("readonly", "true");
  }else{
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("license").innerHTML =
        this.responseText;
      document.getElementById("license").removeAttribute("readonly");
      document.getElementById("ship_company").removeAttribute("readonly");
      }else{
        document.getElementById("license").innerHTML = "<option>...</option>";
      }
    };
    xhttp.open("GET", host+"/load/license", true);
    xhttp.send();    
  }
} 

function check_shiptype(val){
  if(val == '1'){
      document.getElementById("c_company").innerHTML = "Ship Company";
  }else{
      document.getElementById("c_company").innerHTML = "Air Company";    
  }
}

function mblCheck(val) {
  var v = val.value;
  var spa = document.getElementById("mblres");
  var btn = document.getElementById("sbmt");
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      if(this.responseText == 'ok'){
        spa.style.color = 'green';
        spa.innerHTML = 'Available';
        btn.removeAttribute('disabled');
      }else{
        spa.style.color = 'red';
        spa.innerHTML = 'Already Used';
        btn.setAttribute('disabled', true);
      }
    }else{
      spa.innerHTML = "...";
    }
  };
  xhttp.open("GET", host+"/mbl/masterBL/response/mblCheck/"+v, true);
  xhttp.send();
}

function hblCheck(val) {
  var v = val.value;
  var spa = document.getElementById("hblres");
  var btn = document.getElementById("sbmt");
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      if(this.responseText == 'ok'){
        spa.style.color = 'green';
        spa.innerHTML = 'Available';
        btn.removeAttribute('disabled');
      }else{
        spa.style.color = 'red';
        spa.innerHTML = 'Already Used';
        btn.setAttribute('disabled', true);
      }
    }else{
      spa.innerHTML = "...";
    }
  };
  xhttp.open("GET", host+"/mbl/houseBL/response/hblCheck/"+v, true);
  xhttp.send();
}

function getJobNumber(val) {
  var text = val.options[val.selectedIndex].innerHTML;
  var id = val.value;
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("jobNo").value =
      this.responseText;
    }else{
      document.getElementById("jobNo").value = '...';
    }
  };
  xhttp.open("GET", host+"/load/jobNo/"+text+"/"+id, true);
  xhttp.send();
}

function billingVolume(val) {
  var bill = Math.ceil(val);
  document.getElementById("billvo").value = bill;
}

function getTons(kgs) {
  var tons = kgs/1000;
  document.getElementById("tons").value = tons;
}

function getContainer(val) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("fContainer").innerHTML =
      this.responseText;
    }else{
      document.getElementById("fContainer").innerHTML = "<option>...</option>";
    }
  };
  xhttp.open("GET", host+"/load/container/"+val, true);
  xhttp.send();
}

function getPOL(value) {
      var val = value.split('|');
      var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            document.getElementById("fPortloading").innerHTML = xhttp.responseText;
          }else{
            document.getElementById("fPortloading").innerHTML = "<option>...</option>";
          }
      };
      xhttp.open("GET", host+"/load/container/getPortofLoading/"+val[1], true);
      xhttp.send();
}

function getComm() {
      var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            document.getElementById("fCommodity").innerHTML = xhttp.responseText;
          }else{
            document.getElementById("fCommodity").innerHTML = "<option>...</option>";
          }
      };
      xhttp.open("GET", host+"/load/commodity/", true);
      xhttp.send();
}