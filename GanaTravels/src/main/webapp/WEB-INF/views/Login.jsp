<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GanaTravels | Welcome Back</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }

        body {
            /* Background matches signup for brand consistency */
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), 
                        url('https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?auto=format&fit=crop&q=80&w=1920');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
        }

        /* Subtle Watermark */
        .watermark {
            position: absolute;
            top: 0; left: 0; width: 100%; height: 100%;
            pointer-events: none; opacity: 0.03;
            display: flex; flex-wrap: wrap; transform: rotate(-20deg) scale(1.5);
        }
        .watermark span { font-size: 2rem; font-weight: 800; color: white; padding: 40px; }

        /* Compact Glass Card */
        .glass-card {
            position: relative; z-index: 10;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 25px;
            padding: 40px 35px;
            width: 100%;
            max-width: 380px;
            color: white;
            box-shadow: 0 20px 50px rgba(0,0,0,0.5);
            text-align: center;
        }

        .logo { font-size: 20px; font-weight: 700; color: #0984e3; margin-bottom: 15px; letter-spacing: 2px; }
        .logo span { color: #fff; }

        h1 { font-family: 'Playfair Display', serif; font-size: 1.8rem; margin-bottom: 5px; }
        p.subtitle { font-size: 0.8rem; margin-bottom: 30px; opacity: 0.7; }

        .input-group { text-align: left; margin-bottom: 20px; }
        label { font-size: 0.65rem; text-transform: uppercase; letter-spacing: 1px; color: #0984e3; font-weight: 600; margin-bottom: 4px; display: block; }

        .row { display: flex; gap: 8px; }
        .prefix {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            padding: 10px; width: 55px;
            text-align: center; font-size: 0.9rem;
        }

        input {
            width: 100%;
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            padding: 12px 15px;
            color: white;
            outline: none;
            font-size: 0.9rem;
            transition: 0.3s;
        }

        input:focus { border-color: #0984e3; background: rgba(255, 255, 255, 0.15); }

        .forgot-link {
            display: block;
            text-align: right;
            font-size: 0.7rem;
            margin-top: 5px;
            color: rgba(255,255,255,0.5);
            text-decoration: none;
        }
        .forgot-link:hover { color: #0984e3; }

        .btn-login {
            width: 100%;
            padding: 14px;
            background: #0984e3;
            color: white;
            border: none;
            border-radius: 10px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 20px;
            transition: 0.3s;
        }

        .btn-login:hover { background: #fff; color: #0984e3; transform: translateY(-2px); }

        .footer { margin-top: 25px; font-size: 0.75rem; opacity: 0.6; }
        .footer a { color: #fff; text-decoration: none; font-weight: 600; border-bottom: 1px solid rgba(255,255,255,0.2); }
    </style>
</head>
<body>

    <div class="watermark">
        <% for(int i=0; i<12; i++) { %> <span>GanaTravels</span> <% } %>
    </div>

    <div class="glass-card">
        <div class="logo">GANA<span>TRAVELS</span></div>
        <h1>Welcome Back</h1>
        <p class="subtitle">Log in to manage your bookings.</p>

        <form action="LoginController" method="POST">
            <div class="input-group">
                <label>Phone Number</label>
                <div class="row">
                    <div class="prefix">+1</div>
                    <input type="tel" name="phone" placeholder="Mobile Number" required>
                </div>
            </div>

            <div class="input-group">
                <label>Security Pin</label>
                <input type="password" name="pin" placeholder="••••••••" required>
                <a href="#" class="forgot-link">Forgot Pin?</a>
            </div>

            <button type="submit" class="btn-login">Sign In</button>
        </form>

        <p class="footer">New traveler? <a href="singup">Create Account</a></p>
    </div>

</body>
</html>