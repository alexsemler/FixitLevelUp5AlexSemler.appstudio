let allNames = ""
let oldName = ""
deleteUpdateCustomer.onshow=function(){
      let query = "SELECT * FROM customer"
    req1 = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=" + query)

    if (req1.status == 200) { //transit worked.
            allCustomerData = JSON.parse(req1.responseText)
            console.log("parsed result in onshow:  " + allCustomerData)
            companyDrop1.clear()
            allNames = ""
                for (i = 0; i <= allCustomerData.length - 1; i++) {
                    companyDrop1.addItem(allCustomerData[i][1])
                    allNames = allNames + allCustomerData[i][1] + "\n"
                    textOutput1.value = allNames

        }
    } else {
        // transit error
        NSB.MsgBox("Error: " + req1.status);
    }  
}

Button1.onclick=function(){
    if (Radiobutton1.value == 0) {
         let newName = Input1.value
    
    var query = "UPDATE customer SET name =" + '"' + newName + '"' + " WHERE name = " + '"' + oldName + '"'
    req1 = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=" + query);

    if (req1.status == 200) { //transit worked.
        if (req1.responseText == 500) {   // means the update succeeded
            var result = JSON.parse(req1.responseText)
            allNames = allNames.replace(oldName, newName)
            textOutput1.value = allNames
        } else
            NSB.MsgBox("There was a problem changing the customer's name.")
    } else {
        // transit error
        NSB.MsgBox("Error: " + req1.status);
    }  
} else {
     let customerNameDel = oldName
    let found = false
    for (i = 0; i <= allCustomerData.length - 1; i++) {
        if (customerNameDel == allCustomerData[i][1])
            found = true
    }
    if (found == false) 
       NSB.MsgBox("That customer name is not in the database.")
    else if (found == true) {
      let queryDelete = "DELETE FROM customer WHERE name = " + '"' + customerNameDel + '"'
      req1 = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=" + queryDelete)
      if (req1.status == 200) { //transit worked.
            if (req1.responseText == 500) {
                allNames = allNames.replace(customerNameDel, "")
                txtOutput1.value = allNames
                NSB.MsgBox("You have successfully deleted the customer named " + customerNameDel)
           } else {
                NSB.MsgBox("There was a problem deleting " + customerNameDel + " from the database.")
                }
      } else {
        // transit error
        NSB.MsgBox("Error: " + req1.status);
      }
      }
    } 
}

companyDrop1.onclick=function(s){
  if (typeof(s) == "object"){  // means control clicked but no selection made yet
    return                     // do nothing
  } else {
    companyDrop1.value = s
    oldName = s
    console.log(oldName)
    }
}

Hamburger3.onclick=function(s){
  if (typeof(s) == "object") { // do nothing
       return
    }
    
// if user clicked on a form name change based on what they chose (s)
switch(s) {
case "See Customer":
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

