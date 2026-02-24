<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GanaTravels | Service Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }
        
        body { 
            background: #f0f4f8; 
            color: #2d3436; 
            min-height: 100vh;
            position: relative;
        }

        /* --- HIGH VISIBILITY WATERMARK (Interactive Fix) --- */
        .watermark-bg {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            z-index: 1; 
            pointer-events: none; /* Allows mouse to click through to buttons */
            display: flex; flex-wrap: wrap; justify-content: space-around;
            opacity: 0.15; 
            transform: rotate(-15deg) scale(1.1);
            user-select: none;
        }
        .watermark-bg span { 
            font-size: 3rem; font-weight: 900; padding: 50px; 
            color: #0984e3; text-transform: uppercase; letter-spacing: 5px; 
        }

        /* --- NAVIGATION --- */
        nav {
            background: #fff;
            padding: 15px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            position: relative;
            z-index: 100;
        }
        .logo { font-size: 22px; font-weight: 700; color: #0984e3; text-decoration: none; }
        .logo span { color: #2d3436; }

        .logout-btn {
            text-decoration: none; color: #d63031; font-weight: 600;
            padding: 8px 20px; border: 2px solid #d63031; border-radius: 8px;
            transition: 0.3s ease;
        }
        .logout-btn:hover { background: #d63031; color: #fff; transform: translateY(-2px); box-shadow: 0 5px 15px rgba(214, 48, 49, 0.3); }

        /* --- MAIN CARD --- */
        .main-container { max-width: 850px; margin: 60px auto; padding: 0 20px; position: relative; z-index: 50; }
        
        .service-card {
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            padding: 40px; border-radius: 30px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.05);
            border: 1px solid rgba(255,255,255,0.8);
            transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
        }
        /* Card Hover Lift */
        .service-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 30px 60px rgba(9, 132, 227, 0.12);
        }

        .grid-layout { display: grid; grid-template-columns: 1fr 1fr; gap: 25px; }
        .input-group label { font-size: 0.75rem; font-weight: 700; color: #0984e3; margin-bottom: 8px; display: block; text-transform: uppercase; }

        /* --- INPUT HOVERS --- */
        select, input {
            width: 100%; padding: 14px; border: 2px solid #e2e8f0; border-radius: 12px;
            background: #fff; outline: none; transition: 0.3s ease;
        }
        select:hover, input:hover { border-color: #0984e3; transform: scale(1.01); }
        select:focus, input:focus { border-color: #0984e3; box-shadow: 0 0 0 4px rgba(9, 132, 227, 0.1); }

        /* --- CLASS SELECTION HOVERS --- */
        .class-selector { display: flex; gap: 15px; margin-top: 10px; }
        .class-selector label { flex: 1; cursor: pointer; }
        .class-selector input[type="radio"] { display: none; }
        
        .class-box {
            display: block; padding: 15px; border: 2px solid #e2e8f0;
            border-radius: 12px; text-align: center; background: #fff; transition: 0.3s ease;
        }
        .class-box:hover {
            border-color: #0984e3;
            transform: translateY(-3px);
            background: rgba(9, 132, 227, 0.02);
        }
        .class-selector input[type="radio"]:checked + .class-box {
            border-color: #0984e3; background: #0984e3; color: #fff;
            box-shadow: 0 8px 20px rgba(9, 132, 227, 0.3);
            transform: translateY(-3px);
        }

        /* --- SEARCH BUTTON HOVER --- */
        .btn-find {
            width: 100%; background: #0984e3; color: #fff; padding: 18px;
            border: none; border-radius: 12px; font-size: 1.1rem; font-weight: 600;
            cursor: pointer; margin-top: 30px; transition: 0.4s ease;
        }
        .btn-find:hover {
            background: #2d3436;
            transform: translateY(-3px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
            letter-spacing: 1px;
        }
        .btn-find:active { transform: scale(0.98); }

        @media (max-width: 600px) {
            .grid-layout { grid-template-columns: 1fr; }
            .class-selector { flex-direction: column; }
            nav { padding: 15px 20px; }
        }
    </style>
</head>
<body>

    <div class="watermark-bg">
        <% for(int i=0; i<12; i++) { %>
            <span>GanaTravels</span>
        <% } %>
    </div>

    <nav>
        <a href="home.jsp" class="logo">GANA<span>TRAVELS</span></a>
        <a href="home" class="logout-btn">Logout</a>
    </nav>

    <div class="main-container">
        <div class="service-card">
            <h2 style="font-family: 'Playfair Display', serif; font-size: 2rem; margin-bottom: 25px; text-align: center;">Plan Your Journey</h2>
            
            <form action="SearchBusesController" method="POST">
                <div class="grid-layout">
                    <div class="input-group">
                        <label>Departure City</label>
                        <select name="departure" required>
                            <option value="">Choose Start...</option>
                            <option value="NYC">New York</option>
                            <option value="DC">Washington DC</option>
                            <option value="BOS">Boston</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <label>Destination City</label>
                        <select name="destination" required>
                            <option value="">Choose Arrival...</option>
                            <option value="PHL">Philadelphia</option>
                            <option value="CHI">Chicago</option>
                            <option value="MIA">Miami</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <label>Travel Date</label>
                        <input type="date" name="travelDate" required>
                    </div>

                    <div class="input-group">
                        <label>Service Type</label>
                        <div class="class-selector">
                            <label>
                                <input type="radio" name="serviceClass" value="economy" required>
                                <span class="class-box">Economy</span>
                            </label>
                            <label>
                                <input type="radio" name="serviceClass" value="business">
                                <span class="class-box">Business</span>
                            </label>
                            <label>
                                <input type="radio" name="serviceClass" value="sleeper">
                                <span class="class-box">Sleeper</span>
                            </label>
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn-find">Explore Available Fleet</button>
            </form>
        </div>
    </div>

</body>
</html>