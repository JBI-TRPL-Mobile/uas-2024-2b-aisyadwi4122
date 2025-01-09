import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Judul Sign In
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Deskripsi teks
              Text(
                "Buatlah Akun untuk masuk ke tahap selanjutnya",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 30),
              // Form Email
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              // Form Password
              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10),
              // Teks "Forgot Password?"
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Aksi untuk lupa password
                    print("Forgot Password clicked");
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  
                  print("Sign In clicked");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), 
                ),
                child: Text("Sign In"),
              ),
              SizedBox(height: 20),
              
              Text(
                "or sign in with",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              SizedBox(height: 10),
              // Tombol Sign In dengan Google dan Facebook
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Aksi untuk Google Sign In
                      print("Google Sign In clicked");
                    },
                    icon: Icon(Icons.g_mobiledata, size: 40),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                    onPressed: () {
                      // Aksi untuk Facebook Sign In
                      print("Facebook Sign In clicked");
                    },
                    icon: Icon(Icons.facebook, size: 40),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Teks untuk mendaftar akun baru
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account? "),
                  GestureDetector(
                    onTap: () {
                      // Aksi untuk Sign Up
                      print("Sign Up clicked");
                    },
                    child: Text(
                      "Sign Up Now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

