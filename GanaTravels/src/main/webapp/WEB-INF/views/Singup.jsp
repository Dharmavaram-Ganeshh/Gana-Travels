<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GanaTravels | Join the Fleet</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }
        
        body { 
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), 
                        url('https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?auto=format&fit=crop&q=80&w=1920');
            background-size: cover; background-position: center;
            height: 100vh; display: flex; align-items: center; justify-content: center;
            position: relative; overflow: hidden;
        }

        /* --- HIGH VISIBILITY WATERMARK --- */
        .watermark-bg {
            position: absolute; top: 0; left: 0; width: 100%; height: 100%;
            z-index: 1; pointer-events: none; display: flex; flex-wrap: wrap; 
            justify-content: space-around; opacity: 0.12; 
            transform: rotate(-15deg) scale(1.2); user-select: none;
        }
        .watermark-bg span { font-size: 2.5rem; font-weight: 900; padding: 40px; color: #0984e3; text-transform: uppercase; }

        /* --- SIGNUP CARD --- */
        .glass-card {
            position: relative; z-index: 10;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px); -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 25px; padding: 35px;
            width: 100%; max-width: 400px; color: white;
            box-shadow: 0 20px 50px rgba(0,0,0,0.5); text-align: center;
            transition: transform 0.3s ease;
        }
        .glass-card:hover { transform: translateY(-5px); }

        .logo { font-size: 20px; font-weight: 700; color: #0984e3; margin-bottom: 15px; letter-spacing: 2px; }
        .logo span { color: #fff; }

        h1 { font-family: 'Playfair Display', serif; font-size: 1.8rem; margin-bottom: 20px; }

        .input-group { text-align: left; margin-bottom: 15px; }
        label { font-size: 0.65rem; text-transform: uppercase; color: #0984e3; font-weight: 700; margin-bottom: 5px; display: block; }

        .row { display: flex; gap: 8px; }
        .prefix {
            background: rgba(255, 255, 255, 0.1); border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 10px; padding: 12px; width: 55px; text-align: center; font-size: 0.9rem;
        }

        input {
            width: 100%; background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.2); border-radius: 10px;
            padding: 12px 15px; color: white; outline: none; transition: 0.3s;
        }
        input:focus { border-color: #0984e3; background: rgba(255, 255, 255, 0.15); transform: scale(1.02); }

        .btn-signup {
            width: 100%; padding: 14px; background: #0984e3; color: white;
            border: none; border-radius: 10px; font-weight: 600; cursor: pointer;
            margin-top: 10px; transition: 0.3s;
        }
        .btn-signup:hover { background: #fff; color: #0984e3; box-shadow: 0 10px 20px rgba(9, 132, 227, 0.3); }

        .footer { margin-top: 20px; font-size: 0.75rem; opacity: 0.7; }
        .footer a { color: #fff; text-decoration: none; font-weight: 600; }

        /* Error message styling */
        #message { font-size: 0.7rem; margin-top: 5px; font-weight: 600; }
    </style>
</head>
<body>

    <div class="watermark-bg">
        <% for(int i=0; i<10; i++) { %> <span>GanaTravels</span> <% } %>
    </div>

    <div class="glass-card">
        <div class="logo">GANA<span>TRAVELS</span></div>
        <h1>Passenger Signup</h1>

        <form id="signupForm" action="SignupController" method="POST">
            <div class="input-group">
                <label>Full Name</label>
                <input type="text" name="name" placeholder="Name" required>
            </div>
            
            <div class="input-group">
                <label>Phone</label>
                <div class="row">
                    <div class="prefix">+1</div>
                    <input type="tel" name="phone" placeholder="Mobile Number" required>
                </div>
            </div>

            <div class="input-group">
                <label>Security Pin</label>
                <input type="password" id="pin" name="pin" placeholder="••••" required>
            </div>

            <div class="input-group">
                <label>Confirm Pin</label>
                <input type="password" id="confirm_pin" placeholder="Re-enter Pin" required>
                <p id="message"></p>
            </div>

            <button type="submit" id="submitBtn" class="btn-signup">Create Account</button>
        </form>

        <p class="footer">Joined already? <a href="login">Login</a></p>
    </div>

    <script>
        const pin = document.getElementById('pin');
        const confirm_pin = document.getElementById('confirm_pin');
        const message = document.getElementById('message');
        const btn = document.getElementById('submitBtn');

        function validate() {
            if (confirm_pin.value === "") {
                message.innerHTML = "";
                return;
            }
            if (pin.value === confirm_pin.value) {
                message.style.color = "#00b894";
                message.innerHTML = "✓ Pins Match";
                btn.disabled = false;
                btn.style.opacity = "1";
            } else {
                message.style.color = "#ff7675";
                message.innerHTML = "× Pins do not match";
                btn.disabled = true;
                btn.style.opacity = "0.5";
            }
        }

        pin.addEventListener('keyup', validate);
        confirm_pin.addEventListener('keyup', validate);
    </script>

</body>
</html>