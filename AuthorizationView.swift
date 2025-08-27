import SwiftUI

struct AuthorizationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var emailError = false
    @State private var passwordError = false
    @State private var showLoadingAnimation = false

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()

            VStack {
                
                HStack {
                    Text("Авторизация")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 30)


                TextField("E-mail", text: $email)
                    .frame(width: 343, height: 56)
                    .frame(height: 56)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 10)
                
                if emailError {
                    Text("Поле должно быть заполнено")
                        .foregroundColor(.red)
                        .font(.caption)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 5)
                }


                SecureField("Пароль", text: $password)
                    .frame(width: 343, height: 56)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
                
                if passwordError {
                    Text("Поле должно быть заполнено")
                        .foregroundColor(.red)
                        .font(.caption)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 5)
                }
                  

                Spacer()

                
                VStack {
                    Button(action: {
                         
                        emailError = email.isEmpty
                        passwordError = password.isEmpty

                       
                        if !emailError && !passwordError {
                          
                            print("Войти tapped. Данные: \(email), \(password)")
                        } else {
                            print("Есть незаполненные поля.")
                        }
                        print("Войти tapped")
                    }) {
                        Text("Войти")
                            .foregroundColor(.white)
                            .font(.title3)
                            .frame(width: 343, height: 56)
                            .padding(.leading, 16)
                            .padding(.trailing, 16)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .padding(.horizontal, 16)
                    }
                    

                    NavigationLink(destination: RegistrationView()
                            	.navigationBarHidden(true)
                                        ) {
                        Text("Ещё нет аккаунта?")
                            .foregroundColor(.blue)
                    }
                    .padding(.top, 10)
                }
                .padding(.bottom, 20)
            }
            .padding(.top, 50)
        }
    }
}

struct AuthorizationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorizationView()
    }
}
