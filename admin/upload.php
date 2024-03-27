<?php require_once('../config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
 <?php require_once('inc/header.php') ?>
 <?php
// Include your database connection file here 

if (isset($_POST['submit'])) {
    $carModelImagePath = '';

    // Check if a file was uploaded without errors
    if ($_FILES['car_model_image']['error'] === UPLOAD_ERR_OK) {
        // Define the target directory for uploading the file
        $targetDir = 'uploads/';

        // Generate a unique filename for the uploaded file
        $targetFile = $targetDir . uniqid() . '_' . basename($_FILES['car_model_image']['name']);

        // Check if the file has an allowed extension (you can add more if needed)
        $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif'];
        $fileExtension = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

        if (in_array($fileExtension, $allowedExtensions)) {
            // Move the uploaded file to the target directory
            if (move_uploaded_file($_FILES['car_model_image']['tmp_name'], $targetFile)) {
                $carModelImagePath = $targetFile;

                // Insert the file path into the database
                $sql = "INSERT INTO cab_list (car_model_image_path) VALUES (?)";
                $stmt = $pdo->prepare($sql);
                $stmt->execute([$carModelImagePath]);

                echo "File uploaded successfully and path inserted into the database.";
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        } else {
            echo "Sorry, only JPG, JPEG, PNG, and GIF files are allowed.";
        }
    } else {
        echo "Error: " . $_FILES['car_model_image']['error'];
    }
}
?>
