# LeeSoYeon
이소연

----------------------------------------

## 1주차 과제

- **Hw1 -Navigation 을 이용한 화면 전환** 

<img width="551" alt="image-20200423153217040" src="https://user-images.githubusercontent.com/49120090/80068135-0d11dc00-857a-11ea-8450-455cdad2a7d2.png">

전체 스토리 보드를 확인해보면 이렇다. 

1. 처음에 Editor - Embed in - Navigation bar을 선택하면 Navigation Controller가 생기면서 root화면과 연결된다. 

2. 두 개의 Button 생성

3. View 2개를 만들고 버튼을 누르고 ctrl + 연결하려는 화면을 이어주면 

   <img width="168" alt="image-20200423153532878" src="https://user-images.githubusercontent.com/49120090/80068162-18650780-857a-11ea-9880-92757c9388c2.png">

   위와 같이 뜬다. Show를 눌러주면 navigation 형태로 연결이 된다.

+ **Hw2 - 로그인, 로그아웃 , 회원가입 View**

  <img width="695" alt="image-20200423154009156" src="https://user-images.githubusercontent.com/49120090/80068193-26b32380-857a-11ea-812d-eb68f2b1d03b.png">

스토리 보드를 살펴보면 hw1과 마찬가지로 root에 navigation controller로 연결해주었다.

root view - Sign up view : Navigation - Sign in view : present

root - Sign in view : present

**구현하는 과정 Problem : Root - Sign up - Sign in view 에서 로그아웃 버튼을 누르면 Root로 가지 않는다.전 화면이 뜨는 문제**

>어떻게 해결해 줄 수 있을까? 
>
>Sign up에서 Sign in 으로 갈 때 Present를 하고 Sign up view를 dismiss해주면 된다.
>
>그럼 Sing up button을 눌렀을 때 Action을 수정해주면 될 거 같다. 

```swift
    @IBAction func SignUp2(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "SignInViewController")as? SignInViewController else {return}
               
         receiveViewController.id = idTextField2.text
         receiveViewController.password = passwordTextField2.text
        self.present(receiveViewController, animated: true, completion: {() -> Void in self.navigationController?.popToRootViewController(animated: true)}) 
        //본래 present의 completion은 present수행 후 할 행위를 구현해 주면 된다. 
      //클로저 형태로 적어줘야하는데 클로저 개념을 잘 알지 못해 공부가 필요할거 같다. 
    }
```

