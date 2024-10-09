<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Your Dream Job</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url("learning.png");
            background-size: cover;
            background-position: center;
            color: #f4f4f4;
        }
        
        /* Navbar Styles */
   .navbar {
    background-color: rgba(0, 123, 255, 0.9);
    padding: 15px;
    display: flex;
    align-items: center; /* Center items vertically */
    position: sticky;
    top: 0;
    z-index: 1000;
}

/* Centering the title and logo */
.dream-job-title {
    flex-grow: 1; /* Allow title to grow and take up available space */
    text-align: center; /* Center the text */
    margin: 0; /* Remove default margin */
}

/* Adjust logo size if necessary */
.logo {
    margin-right: 5px; /* Space between logo and title */
}

/* Login/Signup section */
.login-signup {
    display: flex;
    gap: 15px;
}

        .login-signup a {
            padding: 10px 20px;
            background-color: #28A745;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .login-signup a:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        /* Header Section */
        .header {
            padding: 40px;
            text-align: center;
            color: #fff;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 8px;
            margin: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }
        .header h1 {
            margin: 0;
            font-size: 36px;
        }
        .header p {
            margin-top: 10px;
            font-size: 18px;
            font-style: italic;
        }

        /* Search Bar Styles */
        .search-bar {
            display: flex;
            justify-content: center;
            margin: 20px;
        }
        .search-bar input[type="text"], 
        .search-bar select {
            padding: 10px;
            font-size: 16px;
            margin-right: 10px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }
        .search-bar input[type="text"]:focus, 
        .search-bar select:focus {
            border-color: #007BFF;
            outline: none;
        }
        .search-bar button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .search-bar button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        /* Categories Section */
        .categories {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 20px;
        }
        .category {
            width: 220px;
            text-align: center;
            margin: 10px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            padding: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }
        .category:hover {
            transform: translateY(-5px);
        }
        .category img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            transition: transform 0.3s ease;
        }
        .category img:hover {
            transform: scale(1.1);
        }
        .category p {
            margin: 5px 0;
            font-weight: bold;
            color: #007BFF;
        }

      /* Skills Section */
.skills-section {
    text-align: center;
    padding: 50px 0;
    background-color: #f4f4f4; /* Light background for contrast */
}

/* Bold title with larger font size */
.skills-title {
    font-size: 36px;
    font-weight: bold;
    margin-bottom: 30px;
    color: #333; /* Darker color for better readability */
}

/* Skills list layout */
.skills-list {
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap; /* Wrap items on smaller screens */
}

/* Skill block design */
.skill {
    width: 250px;
    text-align: center;
    padding: 20px;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease-in-out;
}

/* Skill block hover effect */
.skill:hover {
    transform: scale(1.1); /* Slight zoom-in effect on hover */
}

/* Skill images */
.skill img {
    width: 100px;
    height: 100px;
    object-fit: cover;
    margin-bottom: 15px;
    border-radius: 50%;
}

/* Skill text styling */
.skill p {
    font-size: 18px;
    font-weight: bold;
    color: #555;
}

/* Responsive styling for smaller screens */
@media (max-width: 768px) {
    .skills-list {
        flex-direction: column;
        align-items: center;
    }
}


        /* Companies Section */
        .companies-section {
            margin: 40px 20px;
            overflow: hidden;
        }
        .section-title {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
        }
        .scrolling-logos {
            display: flex;
            justify-content: center;
            align-items: center;
            animation: scroll 30s linear infinite;
        }
        .scrolling-logos img {
            margin: 0 15px;
            width: 80px;
            height: 80px;
            transition: transform 0.3s ease;
        }
        .scrolling-logos img:hover {
            transform: scale(1.1);
        }
        @keyframes scroll {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        /* More Details Section */
        .more-details {
            background-color: #f8f8f8;
            padding: 20px;
            text-align: center;
            border-radius: 8px;
            margin: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .more-details h2 {
            font-size: 24px;
            color: #333;
        }
        .more-details p {
            font-size: 18px;
        }
    </style>
</head>
<body>

<!-- Navbar with centered title and login/signup links on the right -->
<div class="navbar">
    <h1 class="dream-job-title">
        <img src="kloo.png" alt="Logo" class="logo" style="width: 30px; height: auto;"> 
        Find Your Dream Job on Campus Now
    </h1>
    <div class="login-signup">
        <a href="index.html">Login</a>
        <a href="sign.jsp">Sign Up</a>
    </div>
</div>


<!-- Header Section with Job Search -->
<div class="header">
    <h1>Improve Your Skills</h1>
    <p>Explore resources to enhance your career potential</p>
</div>

<div class="search-bar">
    <form action="index.html" method="GET">
        <input type="text" placeholder="Enter skills / designations / companies" name="query">
        <select name="experience">
            <option value="">Select experience</option>
            <option value="fresher">Fresher</option>
            <option value="1-2 years">1-2 years</option>
            <option value="3-5 years">3-5 years</option>
        </select>
        <input type="text" placeholder="Enter location" name="location">
        <button type="submit">Search</button>
    </form>
</div>

<div class="categories">
    <div class="category">
        <img src="remote.png" alt="Remote">
        <p>Remote</p>
    </div>
    <div class="category">
        <img src="mnc.webp" alt="MNC">
        <p>MNC</p>
    </div>
    <div class="category">
        <img src="bankbanking-finance-img.jpg" alt="Banking & Finance">
        <p>Banking & Finance</p>
    </div>
</div>

<div class="skills-section">
    <h2 class="skills-title">Improve Your Skills</h2>
    <div class="skills-list">
        <div class="skill">
            <img src="coding-skill.jpg" alt="Coding">
            <p>Improve Coding</p>
        </div>
        <div class="skill">
            <img src="communication-skill.png" alt="Communication">
            <p>Improve Communication</p>
        </div>
        <div class="skill">
            <img src="communication-skill..jpg" alt="Interview Preparation">
            <p>Interview Preparation</p>
        </div>
  <div class="skill">
            <img src="management-skill.jpg" alt="Management">
            <p>Learn Management</p>
        </div>
    </div>
</div>


<!-- Top Companies Hiring Now - Scrolling Logos -->
<div class="companies-section">
    <div class="section-title">Top Companies Hiring Now</div>
    <div class="scrolling-logos">
        <img src="company1.png" alt="Apple">
        <img src="company2.png" alt="Google">
        <img src="company3.jpg" alt="Microsoft">
        <img src="company4.png" alt="Amazon">
        <img src="company5.png" alt="JPMorgan Chase & Co.">
        <img src="company6.png" alt="Facebook">
        <img src="company.png" alt="Instagram">
        <img src="company8.png" alt="Flipcart">
        <img src="company9.png" alt="Goldman Sachs">
        <img src="company10.png" alt="Shopify">
        <img src="company11.png" alt="Oracle">
        <img src="company12.png" alt="MI">
    </div>
</div>

<!-- More Details Section -->
<div class="more-details">
    <h2>Need More Help?</h2>
    <p>Contact our support for assistance.</p>
</div>

</body>
</html>
