<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Recommendation Engine</title>
    <%-- CORRECTED: The path now points directly to the file in the webapp root --%>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="hero">
        <h1>Your Perfect Drive Awaits</h1>
        <p>Answer a few questions and discover your next car from our curated collection.</p>
    </div>

    <div class="container">
        <div class="form-container">
            <form action="recommend" method="POST" class="recommend-form">
                <div class="form-group">
                    <label for="maxPrice">Your Budget (Max Price)</label>
                    <select id="maxPrice" name="maxPrice">
                        <option value="25000">$25,000</option>
                        <option value="35000" selected>$35,000</option>
                        <option value="50000">$50,000</option>
                        <option value="70000">$70,000</option>
                        <option value="100000">$100,000+</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="fuelType">Preferred Fuel Type</label>
                    <select id="fuelType" name="fuelType">
                        <option value="Any">Any</option>
                        <option value="Petrol">Petrol</option>
                        <option value="Diesel">Diesel</option>
                        <option value="Electric">Electric</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="bodyType">Car Type</label>
                    <select id="bodyType" name="bodyType">
                        <option value="Any">Any</option>
                        <option value="Sedan">Sedan</option>
                        <option value="SUV">SUV</option>
                        <option value="Hatchback">Hatchback</option>
                        <option value="Coupe">Coupe / Sports</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="minSeats">Minimum Seats</label>
                    <select id="minSeats" name="minSeats">
                        <option value="2">2+</option>
                        <option value="4">4+</option>
                        <option value="5" selected>5+</option>
                        <option value="6">6+</option>
                        <option value="7">7+</option>
                    </select>
                </div>
                <div class="form-actions">
                    <button type="submit">Find My Car</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>