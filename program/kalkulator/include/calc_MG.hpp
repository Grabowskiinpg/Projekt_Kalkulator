//
// Created by Michał on 04.05.2019.
//

#ifndef KALKULATOR_CALC_MG_HPP
#define KALKULATOR_CALC_MG_HPP
#include <cmath>
#include <iostream>
#include <functional>
#include <numeric>
//Podstawowe funckje (prototypy)
template<typename T>
T sum(T a , T b){
    return a + b;
}

template<typename T>
T multiplication(T a, T b){
    return a * b;
}

template<typename T>
T subtraction(T a, T b){
    return a - b;
}

template<typename T>
T division(T a, T b){
    //Pamiętać o tym, że nie dzielimy przez 0
    return a / b;
}


template<typename T>
T percent(T a, T b){
    return division<T> (a, b) * 100;
}
//Funkcje trygonometryczne #1
template<typename T>
T sin(T x){
    return std::sin(x);
}

template<typename T>
T cos(T x){
    return std::cos(x);
}

template<typename T>
T tan(T x){
    //Pamiętać, że dla M_PI/2 jest nieokreślony
    return sin<T> (x)/cos<T> (x);
}

template<typename T>
T cot(T x){
    //Pamiętać, że dla 0 jest nieokreślony
    return cos<T> (x)/sin<T> (x);
}
//Funckje odwrotne do #1
template<typename T>
T acos(T x){
    //Pamiętać, że dziedzina to [0, M_PI]
    return std::acos(x);
}

template<typename T>
T asin(T x){
    //Pamiętać, że dziedzina to [-M_PI/2, M_PI/2]
    return std::asin(x);
}

template<typename T>
T atan(T x){
    return std::atan(x);
}

template<typename T>
T acot(T x){
    return M_PI/2 - atan<T> (x);
}
//Funkcje hiperboliczne
template<typename T>
T cosh(T x){
    return std::cosh(x);
}

template<typename T>
T sinh(T x){
    return std::sinh(x);
}

template<typename T>
T tanh(T x){
    return std::tanh(x);
}

template<typename T>
T coth(T x){
    //Pamiętać, że w 0 nie można (uzwględnić)
    return cosh<T> (x)/sinh<T> (x);
}

template<typename T>
T abs(T x){
    return std::abs(x);
}

template<typename T>
T modulo(T x, T y){
    return x % y;
}

template<typename T>
T floor(T x){
    return std::floor(x);
}

template<typename T>
T ceil(T x){
    return std::ceil(x);
}

template<typename T>
T mantysa(T x){
    return std::round((x - floor<T> (x))*1000)/1000;
}
//-----------------------------Wektory-----------------------------
template<typename T>
class Vector{
public:
    Vector(const std::vector<T>& v) : v_(v) {}

    Vector(std::size_t n = 3) : v_(n, 0) {}

    T norm();

    std::size_t size() const { return v_.size(); }

    const T& operator[](std::size_t pos) const { return v_[pos]; }

    T& operator[](std::size_t pos) { return v_[pos]; }

    typename std::vector<T>::const_iterator cbegin() const { return v_.cbegin(); }

    typename std::vector<T>::const_iterator cend() const { return v_.cend(); }

    typename std::vector<T>::iterator begin() { return v_.begin(); }

    typename std::vector<T>::const_iterator begin() const { return v_.cbegin(); }

    typename std::vector<T>::iterator end() { return v_.end(); }

    typename std::vector<T>::const_iterator end() const { return v_.cend(); }
private:
    std::vector<T> v_;
};

template<typename T>
Vector<T> add_vectors(const Vector<T>& v1, const Vector<T>& v2){
    Vector<T> v_sum(v1.size());

    std::transform(v1.begin(), v1.end(), v2.begin(), v_sum.begin(), std::plus<T> ());

    return v_sum;
}

template<typename T>
T Vector<T>::norm(){
    T sum_of_squares = std::accumulate(v_.begin(), v_.end(), 0, [](int acc, int elem) { return acc + elem * elem; });

    return sqrt(sum_of_squares);
}
//-----------------------------Macierze-----------------------------
template<typename T>
class Matrix {
public:
    Matrix(std::size_t n_rows, std::size_t n_cols) : matrix_(n_rows, Vector<T>(n_cols)) {}

    Matrix(const std::vector<std::vector<T>>& m) {
        std::copy(m.begin(), m.end(), std::back_inserter(matrix_));
    }

    std::size_t size() const { return matrix_.size(); }

    const Vector<T>& operator[](std::size_t pos) const { return matrix_[pos]; }

    Vector<T>& operator[](std::size_t pos) { return matrix_[pos]; }

    typename std::vector<Vector<T>>::const_iterator cbegin() const { return matrix_.cbegin(); }

    typename std::vector<Vector<T>>::const_iterator cend() const { return matrix_.cend(); }

    typename std::vector<Vector<T>>::iterator begin() { return matrix_.begin(); }

    typename std::vector<Vector<T>>::const_iterator begin() const { return matrix_.cbegin(); }

    typename std::vector<Vector<T>>::iterator end() { return matrix_.end(); }

    typename std::vector<Vector<T>>::const_iterator end() const { return matrix_.cend(); }

private:
    std::vector<Vector<T>> matrix_;
};

template<typename T>
T det(Matrix<T>& m){ //pytanie czy przez referencję
    //pamiętać o tym, że musi być kwadratowa
    T det = 1;

    for(std::size_t i = 0; i < m.size() - 1; i++){
        for(std::size_t j = i + 1; j < m.size(); j++){
            for(std::size_t k = i + 1; k < m.size(); k++){
                m[j][k] -= m[j][i] / m[i][i] * m[i][k];
            }
        }
    }

    for(std::size_t l = 0; l < m.size(); l++){
        det *= m[l][l];
    }

    return det;
}

#endif //KALKULATOR_CALC_MG_HPP
