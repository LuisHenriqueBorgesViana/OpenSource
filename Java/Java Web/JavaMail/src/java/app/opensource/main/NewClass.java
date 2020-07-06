/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.opensource.main;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

/**
 *
 * @author Luis Henrique
 */
public class NewClass {

    public static void main(String[] args) throws IOException {

        Scanner ler = new Scanner(System.in);
        int i, n;

        System.out.printf("Informe o número para a tabuada:\n");
        n = ler.nextInt();

        FileWriter arq = new FileWriter("C:\\tabuada.txt");
        PrintWriter gravarArq = new PrintWriter(arq);

        gravarArq.printf("+--Resultado--+%n");

        for (i = 1; i <= 10; i++) {
            gravarArq.printf("| %2d X %d = %2d |%n", i, n, (i * n));
        }

        gravarArq.printf("+-------------+%n");

        arq.close();

        System.out.printf("\nTabuada do %d foi gravada com sucesso em \"d:\\tabuada.txt\".\n", n);
    }

}
