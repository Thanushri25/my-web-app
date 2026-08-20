<!DOCTYPE html>
<html>
<head>
    <title>Maven Calculator</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 80px;
        }

        .calculator {
            width: 320px;
            margin: auto;
            padding: 25px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        input, select, button {
            margin: 8px;
            padding: 10px;
            font-size: 16px;
        }

        button {
            cursor: pointer;
        }

        #result {
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</head>

<body>

    <div class="calculator">

        <h1>Maven Calculator</h1>

        <input type="number" id="num1" placeholder="Enter first number">

        <br>

        <select id="operator">
            <option value="+">Addition (+)</option>
            <option value="-">Subtraction (-)</option>
            <option value="*">Multiplication (×)</option>
            <option value="/">Division (÷)</option>
        </select>

        <br>

        <input type="number" id="num2" placeholder="Enter second number">

        <br>

        <button onclick="calculate()">Calculate</button>

        <div id="result"></div>

    </div>

    <script>
        function calculate() {

            let num1 = parseFloat(document.getElementById("num1").value);
            let num2 = parseFloat(document.getElementById("num2").value);
            let operator = document.getElementById("operator").value;

            if (isNaN(num1) || isNaN(num2)) {
                document.getElementById("result").innerHTML =
                    "Please enter both numbers.";
                return;
            }

            let result;

            switch (operator) {

                case "+":
                    result = num1 + num2;
                    break;

                case "-":
                    result = num1 - num2;
                    break;

                case "*":
                    result = num1 * num2;
                    break;

                case "/":
                    if (num2 === 0) {
                        document.getElementById("result").innerHTML =
                            "Cannot divide by zero.";
                        return;
                    }
                    result = num1 / num2;
                    break;
            }

            document.getElementById("result").innerHTML =
                "Result: " + result;
        }
    </script>

</body>
</html>