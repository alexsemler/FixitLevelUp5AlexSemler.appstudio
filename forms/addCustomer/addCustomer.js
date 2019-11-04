let allCusNames = ""

addCustomer.onshow=function(){
    let query = "SELECT * FROM customer"
    req1 = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=" + query)

    if (req1.status == 200) { //transit worked.
            allCustomerData = JSON.parse(req1.responseText)
            console.log("parsed result in onshow:  " + allCustomerData)
            for (i = 0; i <= allCustomerData.length - 1; i++) {
                allCusNames = allCusNames + allCustomerData[i][1] + "\n"
                textOutput2.value = allCusNames
        }
    } else {
        // transit error
        NSB.MsgBox("Error: " + req1.status);
    }  
}

Button2.onclick=function(){
    let name = Input2.value
    let street = Input3.value
    let city = Input4.value
    let state = Input5.value
    let zipcode = Input6.value
    var query = "INSERT INTO customer (name,street,city,state,zipcode) VALUES ('" + name + "', '" + street + "', '" + city + "', '" + state + "', '" + zipcode + "')"
    console.log(query)
    req1 = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=" + query);

    if (req1.status == 200) { //transit worked.
        if (req1.responseText == 500) {   // means the insert succeeded
            allCusNames += name
            textOutput2.value = allCusNames
        } else
            NSB.MsgBox("There was a problem with adding the pet to the database.")
    } else {
        // transit error
        NSB.MsgBox("Error: " + req1.status);
    }  
}

Hamburger2.onclick=function(s){
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

