{
  "fullScreen": "true", 
  "cached_js": "let allNames = \"\"\n\nseeCustomers.onshow=function(){\n    let query = \"SELECT * FROM customer\"\n    req1 = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=\" + query)\n\n    if (req1.status == 200) { //transit worked.\n            allCustomerData = JSON.parse(req1.responseText)\n            console.log(\"parsed result in onshow:  \" + allCustomerData)\n            companyDrop.clear()\n            for (i = 0; i <= allCustomerData.length - 1; i++) {\n                companyDrop.addItem(allCustomerData[i][1])\n\n        }\n    } else {\n        // transit error\n        NSB.MsgBox(\"Error: \" + req1.status);\n    }  \n}\n\ncompanyDrop.onclick=function(s){\n  if (typeof(s) == \"object\"){  // means control clicked but no selection made yet\n    return                     // do nothing\n  } else {\n    companyDrop.value = s   \n    let query = \"SELECT name, street, city, state, zipcode FROM customer WHERE name = \" + '\"' + companyDrop.value + '\"'  \n    req1 = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=\" + query)\n\n    if (req1.status == 200) { //transit worked.\n            allCustomerData = JSON.parse(req1.responseText)\n            console.log(allCustomerData)\n            console.log(query)\n            textOutput.value = allCustomerData[0][0] + '\\n'  + allCustomerData[0][1] + '\\n' + allCustomerData[0][2]  + \" \" + allCustomerData[0][3]\n    } else {\n        // transit error\n        NSB.MsgBox(\"Error: \" + req1.status);\n    }  \n  }\n}\n\n", 
  "height": 460, 
  "scroll_options": "mouseWheel:true, bounce:true, zoom:false", 
  "id": "seeCustomers", 
  "borderColor": "", 
  "style": "", 
  "cached_js_script_hash": "11c6ac3d2b36c0c68ecffa8e50e1c9a2", 
  "script": "let allNames = \"\"\n\nseeCustomers.onshow=function(){\n    let query = \"SELECT * FROM customer\"\n    req1 = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=\" + query)\n\n    if (req1.status == 200) { //transit worked.\n            allCustomerData = JSON.parse(req1.responseText)\n            console.log(\"parsed result in onshow:  \" + allCustomerData)\n            companyDrop.clear()\n            for (i = 0; i <= allCustomerData.length - 1; i++) {\n                companyDrop.addItem(allCustomerData[i][1])\n\n        }\n    } else {\n        // transit error\n        NSB.MsgBox(\"Error: \" + req1.status);\n    }  \n}\n\ncompanyDrop.onclick=function(s){\n  if (typeof(s) == \"object\"){  // means control clicked but no selection made yet\n    return                     // do nothing\n  } else {\n    companyDrop.value = s   \n    let query = \"SELECT name, street, city, state, zipcode FROM customer WHERE name = \" + '\"' + companyDrop.value + '\"'  \n    req1 = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=ajs85167&pass=BIA375&database=ajs85167&query=\" + query)\n\n    if (req1.status == 200) { //transit worked.\n            allCustomerData = JSON.parse(req1.responseText)\n            console.log(allCustomerData)\n            console.log(query)\n            textOutput.value = allCustomerData[0][0] + '\\n'  + allCustomerData[0][1] + '\\n' + allCustomerData[0][2]  + \" \" + allCustomerData[0][3]\n    } else {\n        // transit error\n        NSB.MsgBox(\"Error: \" + req1.status);\n    }  \n  }\n}\n\n", 
  "top": "0", 
  "!type": "Form", 
  "designWidth": 0, 
  "onresize": "", 
  "width": 320, 
  "theme": "", 
  "HTML": "", 
  "onkeypress": "", 
  "class": "", 
  "_uuid": "2377272dc7504f52bfde644634daa428", 
  "backgroundimage": "", 
  "onhide": "", 
  "background": "", 
  "attributes": "", 
  "scrolling": "false", 
  "setFocusID": "", 
  "openMode": "none", 
  "locked": false, 
  "language": "JavaScript", 
  "onshow": "seeCustomers.onshow()", 
  "parentForm": "", 
  "children": [
    {
      "color": "", 
      "height": 215, 
      "disabled": "", 
      "header": "", 
      "popBody": "Body", 
      "autocapitalize": "", 
      "children": [], 
      "style": "", 
      "rows": "", 
      "spellcheck": "true", 
      "mRight": "", 
      "autocorrect": "", 
      "popTitle": "Title", 
      "pLeft": "", 
      "width": 298, 
      "onmousemove": "", 
      "onmouseup": "", 
      "hidden": "", 
      "valueCols": 10, 
      "onclick": "", 
      "onmouseout": "", 
      "onkeypress": "", 
      "badgeAppearance": " badge-info", 
      "required": "", 
      "mAll": "", 
      "onmousedown": "", 
      "ontouchend": "", 
      "name": "", 
      "align": "", 
      "footer": "", 
      "value": "", 
      "autocomplete": "", 
      "ontouchmove": "", 
      "pAll": "", 
      "pBottom": "", 
      "onkeyup": "", 
      "display": "", 
      "right": "auto", 
      "cached_js": "", 
      "onfocusout": "", 
      "mLeft": "", 
      "fontFamily": "", 
      "oncopy": "", 
      "popClose": "hover", 
      "id": "textOutput", 
      "onchange": "", 
      "pTop": "", 
      "pRight": "", 
      "bottom": "auto", 
      "!type": "Textarea_bs4", 
      "onresize": "", 
      "readonly": "", 
      "fontSize": "", 
      "backgroundColor": "", 
      "onfocus": "", 
      "badge": "", 
      "iconTitle": "", 
      "mTop": "", 
      "_uuid": "56d1cae51219455cb2f95fefc377a56f", 
      "mBottom": "", 
      "fontWeight": "", 
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e", 
      "onpaste": "", 
      "placeholder": "", 
      "class": "", 
      "icon": "", 
      "popStyle": "popover", 
      "fontStyle": "", 
      "popPosition": "", 
      "headerCols": 2, 
      "script": "", 
      "expanded_pmp": true, 
      "oncut": "", 
      "inputmode": "", 
      "maxlength": "", 
      "validation": "", 
      "ontouchstart": "", 
      "top": 126, 
      "left": 16
    }, 
    {
      "color": "", 
      "blockLevel": "", 
      "height": 51, 
      "disabled": "", 
      "popBody": "Body", 
      "groupStyle": "", 
      "children": [], 
      "size": " btn-md", 
      "borderColor": "", 
      "style": "", 
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e", 
      "mRight": "", 
      "top": 21, 
      "popTitle": "Title", 
      "pLeft": "", 
      "width": 183, 
      "onmousemove": "", 
      "onmouseup": "", 
      "hidden": "", 
      "onclick": "companyDrop.onclick()", 
      "onmouseout": "", 
      "badgeAppearance": " badge-info", 
      "mAll": "", 
      "onmousedown": "", 
      "ontouchend": "", 
      "align": "", 
      "appearance": " btn-secondary", 
      "value": "Dropdown", 
      "borderWidth": "", 
      "pBottom": "", 
      "borderStyle": "", 
      "display": "", 
      "grouping": "", 
      "right": "auto", 
      "cached_js": "", 
      "filterPlaceholder": "Search...", 
      "mLeft": "", 
      "fontFamily": "", 
      "popClose": "hover", 
      "id": "companyDrop", 
      "pTop": "", 
      "filter": "false", 
      "bottom": "auto", 
      "!type": "Dropdown_bs4", 
      "onresize": "", 
      "fontSize": "", 
      "backgroundColor": "", 
      "badge": "", 
      "pAll": "", 
      "mTop": "", 
      "dropdown": "dropdown", 
      "_uuid": "48bddd1ade554abd8eddbfca008e5a53", 
      "mBottom": "", 
      "fontWeight": "", 
      "class": "", 
      "icon": "caret", 
      "popStyle": "popover", 
      "fontStyle": "", 
      "outline": "", 
      "popPosition": "", 
      "ontouchmove": "", 
      "items": "", 
      "script": "", 
      "expanded_pmp": true, 
      "pRight": "", 
      "ontouchstart": "", 
      "left": 22
    }
  ], 
  "expanded_pmp": true, 
  "_functions": [
    {
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e", 
      "cached_js": "", 
      "script": "", 
      "_uuid": "2ca256adf2b84dbeb2dca20133185d11", 
      "!type": "Form", 
      "expanded_pmp": true, 
      "id": "seeCustomers.onshow", 
      "location": [
        2, 
        3
      ], 
      "signature": "seeCustomers.onshow()", 
      "children": []
    }, 
    {
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e", 
      "cached_js": "", 
      "script": "", 
      "_uuid": "250330dd2f7a4cd6a672875a5acb5fbf", 
      "!type": "Form", 
      "expanded_pmp": true, 
      "id": "companyDrop.onclick", 
      "location": [
        20, 
        21
      ], 
      "signature": "companyDrop.onclick(s)", 
      "children": []
    }
  ], 
  "designHeight": 0, 
  "borderWidth": "", 
  "modal": "false", 
  "position": "absolute", 
  "borderStyle": "", 
  "left": "0"
}