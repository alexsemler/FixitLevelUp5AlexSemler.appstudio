
seeCustomers.onshow=function(){
    let query = "SELECT * FROM customer"
    req1 = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=" + query)

    if (req1.status == 200) { //transit worked.
            allCustomerData = JSON.parse(req1.responseText)
            console.log("parsed result in onshow:  " + allCustomerData)
            companyDrop.clear()
            for (i = 0; i <= allCustomerData.length - 1; i++) {
                companyDrop.addItem(allCustomerData[i][1])

        }
    } else {
        // transit error
        NSB.MsgBox("Error: " + req1.status);
    }  
}

companyDrop.onclick=function(s){
  if (typeof(s) == "object"){  // means control clicked but no selection made yet
    return                     // do nothing
  } else {
    companyDrop.value = s   
    let query = "SELECT name, street, city, state, zipcode FROM customer WHERE name = " + '"' + companyDrop.value + '"'  
    req1 = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=" + query)

    if (req1.status == 200) { //transit worked.
            allCustomerData = JSON.parse(req1.responseText)
            console.log(allCustomerData)
            console.log(query)
            textOutput.value = allCustomerData[0][0] + '\n'  + allCustomerData[0][1] + '\n' + allCustomerData[0][2]  + " " + allCustomerData[0][3]
    } else {
        // transit error
        NSB.MsgBox("Error: " + req1.status);
    }  
  }
}


Hamburger1.onclick=function(s){
   if (typeof(s) == "object") { // do nothing
       return
    }
    
// if user clicked on a form name change based on what they chose (s)
switch(s) {
case "See Customers":
    ChngeForm(seeCustomers)
    break
case "Delete Update Customer":
    ChangeForm(deleteUpdateCustomer)
    break
case "Add Customer":
    ChangeForm(addCustomer)
    break
    }
}
