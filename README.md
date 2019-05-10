# CoreEasyAnimation for Swift
- Very easy to use this framework
- The basic animation will helpful for your UX app.

## Support
  - Swift 4.x
  - iOS Deployment target 10.0 and above
  
## Installation
---- Manual ----
- Just drag the CoreEasyAnimation.framework to your project.
![installCoreEasyAnimation](https://user-images.githubusercontent.com/20751724/57520002-d631be80-7346-11e9-9b09-689c584d8755.gif)

- Import the CoreEasyAnimation module to class you want to use.

# Very very to use 
## Text Field
  - If user input wrong password or something like this. You need to animation textField for notify to user know they are wrong.
             CoreEasyAnimation.animationShakeView(shakeView: yourTextField)
             
![tfanimation](https://user-images.githubusercontent.com/20751724/57522210-45f67800-734c-11e9-9081-2e0869d9cc74.gif)
## Popup
  - Appear

        CoreEasyAnimation.animationPopupAppear(yourView: yourPopUp, timeDuration: 0.5) { (finish) in
            if finish {
               //Do something
            
               
            }
        }
  - Disapper
  
          CoreEasyAnimation.animationPopupDisappear(yourView: self.btn, timeDuration: 0.5, completion: { (finished) in
                        if finished {
                          //Do something
                        }
                    })
        
 
 ![popupAppear](https://user-images.githubusercontent.com/20751724/57521604-f2cff580-734a-11e9-8ba5-9c0fee02356c.gif)
