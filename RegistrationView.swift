

import SwiftUI

struct RegistrationView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""

    @State private var usernameError = false
    @State private var emailError = false
    @State private var passwordError = false

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding(.bottom, 1)
            

           
            HStack {
                Text("Регистрация")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            
            .padding(.bottom, 20)

            
            TextField("Имя пользователя", text: $username)
                .frame(width: 343, height: 56)
                .frame(height: 56)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 16)
                .padding(.bottom, 10)

      
            if usernameError {
                Text("Поле должно быть заполнено")
                    .foregroundColor(.red)
                    .font(.caption)
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
            }

           
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
                .frame(height: 56)
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

     
            Button(action: {
                
                usernameError = username.isEmpty
                emailError = email.isEmpty
                passwordError = password.isEmpty

               
                if !usernameError && !emailError && !passwordError {
                    // Какая то логика регистрации
                    print("Зарегистрироваться tapped. Данные: \(username), \(email), \(password)")
                } else {
                    print("Есть незаполненные поля.")
                }
            }) {
                Text("Зарегистрироваться")
                    .foregroundColor(.white)
                    .font(.title3)
                    .frame(width: 343, height: 56)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
        }
        .padding() 
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
