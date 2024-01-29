//MWAKYONYA BAHATI R_BIT/D/2021/0026
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Farmer {
  // Define Farmer model
}

class Loan {
  // Define Loan model
}

class Transaction {
  // Define Transaction model
}

class InvestmentOpportunity {
  // Define InvestmentOpportunity model
}

class ApiService {
  // Implement API service
}

class AuthenticationService {
  // Implement Authentication service
}

class Constants {
  // Define Constants
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Services App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.lightBlue, // Set the background color to light blue
        child: App(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class App extends StatelessWidget {
  final ApiService apiService = ApiService();
  final AuthenticationService authService = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Financial Services App',
            style: TextStyle(color: Colors.green),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Loan Access'),
              Tab(text: 'Savings Account'),
              Tab(text: 'Financial Literacy'),
              Tab(text: 'Transaction History'),
              Tab(text: 'Investment Platform'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoanAccessScreen(apiService),
            SavingsAccountScreen(apiService),
            FinancialLiteracyScreen(apiService),
            TransactionHistoryScreen(apiService),
            InvestmentPlatformScreen(apiService),
          ],
        ),
      ),
    );
  }
}

class LoanAccessScreen extends StatelessWidget {
  final ApiService apiService;

  LoanAccessScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loan Access', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ApplyLoanScreen(apiService)),
            );
          },
          child: Text('Apply for Loan'),
        ),
      ),
    );
  }
}

class ApplyLoanScreen extends StatelessWidget {
  final ApiService apiService;

  ApplyLoanScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply for Loan', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: Text('Loan Application Form'),
      ),
    );
  }
}

class SavingsAccountScreen extends StatelessWidget {
  final ApiService apiService;

  SavingsAccountScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Savings Account', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ManageSavingsScreen(apiService)),
            );
          },
          child: Text('Manage Savings Account'),
        ),
      ),
    );
  }
}

class ManageSavingsScreen extends StatelessWidget {
  final ApiService apiService;

  ManageSavingsScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Savings Account', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: Text('Savings Account Management'),
      ),
    );
  }
}

class FinancialLiteracyScreen extends StatelessWidget {
  final ApiService apiService;

  FinancialLiteracyScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Literacy', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FinancialEducationScreen(apiService)),
            );
          },
          child: Text('Financial Education'),
        ),
      ),
    );
  }
}

class FinancialEducationScreen extends StatelessWidget {
  final ApiService apiService;

  FinancialEducationScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Financial Education', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: Text('Financial Education Content'),
      ),
    );
  }
}

class TransactionHistoryScreen extends StatelessWidget {
  final ApiService apiService;

  TransactionHistoryScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: Text('Transaction History'),
      ),
    );
  }
}

class InvestmentPlatformScreen extends StatelessWidget {
  final ApiService apiService;

  InvestmentPlatformScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investment Platform', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InvestPlatformScreen(apiService)),
            );
          },
          child: Text('Explore Investment Opportunities'),
        ),
      ),
    );
  }
}

class InvestPlatformScreen extends StatelessWidget {
  final ApiService apiService;

  InvestPlatformScreen(this.apiService);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investment Opportunities', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: Text('Explore Investment Opportunities'),
      ),
    );
  }
}

class FeatureUnderDevelopmentScreen extends StatelessWidget {
  final String featureName;

  FeatureUnderDevelopmentScreen(this.featureName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Under Development', style: TextStyle(color: Colors.green)),
      ),
      body: Center(
        child: Text('$featureName is still under development.'),
      ),
    );
  }
}
