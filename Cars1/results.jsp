<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="carsapp.Car" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Car Recommendations</title>
    <%-- CORRECTED: The path now points directly to the file in the webapp root --%>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <div class="results-header">
            <h1>Here Are Your Top 5 Matches</h1>
            <a href="index.jsp">‹ Back to Search</a>
        </div>
        
        <div class="results-grid">
            <%
                List<Car> recommendedCars = (List<Car>) request.getAttribute("recommendedCars");

                if (recommendedCars != null && !recommendedCars.isEmpty()) {
                    for (Car car : recommendedCars) {
            %>
                        <div class="car-card">
                            <div class="car-image">
                                <img src="<%= car.getImageUrl() %>" alt="<%= car.getMake() %> <%= car.getModel() %>">
                            </div>
                            <div class="card-content">
                                <div class="card-header">
                                    <div>
                                        <h3><%= car.getMake() %> <%= car.getModel() %></h3>
                                        <span><%= car.getYear() %> <%= car.getBodyType() %></span>
                                    </div>
                                    <div class="price">$<%= String.format("%,.0f", car.getPrice()) %></div>
                                </div>
                                <div class="car-specs">
                                    <div class="spec-item">
                                        <div class="label">Fuel</div>
                                        <div class="value">⛽ <%= car.getFuelType() %></div>
                                    </div>
                                    <div class="spec-item">
                                        <div class="label">Drivetrain</div>
                                        <div class="value">⚙️ <%= car.getDrivetrain() %></div>
                                    </div>
                                    <div class="spec-item">
                                        <div class="label">Seats</div>
                                        <div class="value">💺 <%= car.getSeatingCapacity() %></div>
                                    </div>
                                    <div class="spec-item">
                                        <div class="label">Power</div>
                                        <div class="value">🐎 <%= car.getHorsepower() %> HP</div>
                                    </div>
                                    <div class="spec-item">
                                        <div class="label">Transmission</div>
                                        <div class="value">🕹️ <%= car.getTransmission() %></div>
                                    </div>
                                    <div class="spec-item">
                                        <div class="label">Safety</div>
                                        <div class="value">⭐ <%= car.getSafetyRating() > 0 ? car.getSafetyRating() : "N/A" %></div>
                                    </div>
                                </div>
                                <div class="score-container">
                                    <span class="label">Match Score</span>
                                    <span class="score-value"><%= String.format("%.0f", car.getMatchScore()) %>%</span>
                                </div>
                            </div>
                        </div>
            <%
                    } 
                } else {
            %>
                    <p class="no-results">Sorry, no cars matched your specific criteria. Try broadening your search.</p>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>