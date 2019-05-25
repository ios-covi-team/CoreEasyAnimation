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

## License
MIT License

Copyright (c) 2018 COVISOFT INCOPORATION

Author :  KaiLuu (https://github.com/KaiLuu)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
