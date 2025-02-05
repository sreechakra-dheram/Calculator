<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #1a1a1a;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
            font-family: 'Arial', sans-serif;
        }
        .calculator {
            background: #2b2b3a;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            max-width: 320px;
            text-align: center;
        }
        .display {
            font-size: 32px;
            background: #1c1c28;
            padding: 15px;
            border-radius: 8px;
            text-align: right;
            margin-bottom: 15px;
            border: none;
            color: white;
            width: 100%;
        }
        .btn-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
        }
        button {
            padding: 20px;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.2s;
        }
        .btn-number {
            background: #41414f;
            color: white;
        }
        .btn-number:hover {
            background: #51515f;
        }
        .btn-operator {
            background: #ff8c00;
            color: white;
        }
        .btn-operator:hover {
            background: #e07b00;
        }
        .btn-clear {
            background: #ff3b30;
            color: white;
        }
        .btn-clear:hover {
            background: #d62d24;
        }
        .btn-equal {
            background: #27ae60;
            color: white;
        }
        .btn-equal:hover {
            background: #229954;
        }
    </style>
    <script>
        function appendValue(value) {
            document.getElementById("display").value += value;
        }
        function calculateResult() {
            try {
                document.getElementById("display").value = eval(document.getElementById("display").value);
            } catch (e) {
                alert("Invalid Expression");
                document.getElementById("display").value = "";
            }
        }
        function clearDisplay() {
            document.getElementById("display").value = "";
        }
    </script>
</head>
<body>
<h1>Calculator    .</h1>
    <div class="calculator">
        <input type="text" id="display" class="display" readonly>
        <div class="btn-grid">
            <button class="btn-number" onclick="appendValue('7')">7</button>
            <button class="btn-number" onclick="appendValue('8')">8</button>
            <button class="btn-number" onclick="appendValue('9')">9</button>
            <button class="btn-operator" onclick="appendValue('/')">/</button>

            <button class="btn-number" onclick="appendValue('4')">4</button>
            <button class="btn-number" onclick="appendValue('5')">5</button>
            <button class="btn-number" onclick="appendValue('6')">6</button>
            <button class="btn-operator" onclick="appendValue('*')">*</button>

            <button class="btn-number" onclick="appendValue('1')">1</button>
            <button class="btn-number" onclick="appendValue('2')">2</button>
            <button class="btn-number" onclick="appendValue('3')">3</button>
            <button class="btn-operator" onclick="appendValue('-')">-</button>

            <button class="btn-number" onclick="appendValue('0')">0</button>
            <button class="btn-clear" onclick="clearDisplay()">C</button>
            <button class="btn-equal" onclick="calculateResult()">=</button>
            <button class="btn-operator" onclick="appendValue('+')">+</button>
        </div>
    </div>
</body>
</html>
