package com.github.alexandrenavarro.javafxjdk9sample;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

public class JavaFxApp extends Application {

    public static void main(String[] args) {
        Application.launch(args);
    }

    @Override
    public void start(Stage stage) {
        stage.setTitle("Hello Alexandre");
        Group root = new Group();
        Scene scene = new Scene(root, 300, 250);
        Button btn = new Button();
        btn.setLayoutX(100);
        btn.setLayoutY(80);
        btn.setText("Hello Alexandre");
        btn.setOnAction( actionEvent ->
                System.out.println("Hello Alexandre"));
        root.getChildren().add(btn);
        stage.setScene(scene);
        stage.show();
    }
}