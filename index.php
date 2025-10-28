<?php include 'db.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Student Information System</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <div class="container">
    <h2>Student Information System</h2>

    <?php
    // VARIABLES
    $id = "";
    $student_id = "";
    $name = "";
    $age = "";
    $course = "";
    $grade = "";
    $update = false;

    // EDIT - fetch data for editing
    if (isset($_GET['edit'])) {
        $id = $_GET['edit'];
        $update = true;
        $result = mysqli_query($conn, "SELECT * FROM students WHERE id=$id");
        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);
            $student_id = $row['student_id'];
            $name = $row['name'];
            $age = $row['age'];
            $course = $row['course'];
            $grade = $row['grade'];
        }
    }

    // CREATE
    if (isset($_POST['save'])) {
        $student_id = $_POST['student_id'];
        $name = $_POST['name'];
        $age = $_POST['age'];
        $course = $_POST['course'];
        $grade = $_POST['grade'];

        $sql = "INSERT INTO students (student_id, name, age, course, grade)
                VALUES ('$student_id', '$name', '$age', '$course', '$grade')";
        mysqli_query($conn, $sql);
        header("Location: index.php");
        exit;
    }

    // UPDATE
    if (isset($_POST['update'])) {
        $id = $_POST['id'];
        $student_id = $_POST['student_id'];
        $name = $_POST['name'];
        $age = $_POST['age'];
        $course = $_POST['course'];
        $grade = $_POST['grade'];

        $sql = "UPDATE students SET 
                    student_id='$student_id',
                    name='$name',
                    age='$age',
                    course='$course',
                    grade='$grade'
                WHERE id=$id";

        mysqli_query($conn, $sql);
        header("Location: index.php");
        exit;
    }

    // DELETE
    if (isset($_GET['delete'])) {
        $id = $_GET['delete'];
        mysqli_query($conn, "DELETE FROM students WHERE id=$id");
        header("Location: index.php");
        exit;
    }

    // SEARCH
    $where = "";
    if (!empty($_GET['search'])) {
        $search = mysqli_real_escape_string($conn, $_GET['search']);
        $where = "WHERE name LIKE '%$search%' OR student_id LIKE '%$search%'";
    }

    $result = mysqli_query($conn, "SELECT * FROM students $where ORDER BY id DESC");
    ?>

    <!-- Add or Edit Student -->
    <form method="POST">
      <input type="hidden" name="id" value="<?php echo $id; ?>">

      <input type="text" name="student_id" placeholder="Student ID" value="<?php echo $student_id; ?>" required>
      <input type="text" name="name" placeholder="Name" value="<?php echo $name; ?>" required>
      <input type="number" name="age" placeholder="Age" value="<?php echo $age; ?>" required>
      <input type="text" name="course" placeholder="Course" value="<?php echo $course; ?>" required>
      <input type="text" name="grade" placeholder="Grade" value="<?php echo $grade; ?>" required>

      <?php if ($update): ?>
        <button type="submit" name="update" class="update-btn">Update Student</button>
        <a href="index.php" class="cancel-btn">Cancel</a>
      <?php else: ?>
        <button type="submit" name="save">Add Student</button>
      <?php endif; ?>
    </form>

    <!-- Search -->
    <form method="GET" class="search-form">
      <input type="text" name="search" placeholder="Search by name or ID" value="<?php echo isset($_GET['search']) ? $_GET['search'] : ''; ?>">
      <button type="submit">Search</button>
    </form>

    <!-- Display Table -->
    <table>
      <tr>
        <th>ID</th>
        <th>Student ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Course</th>
        <th>Grade</th>
        <th>Actions</th>
      </tr>

      <?php while ($row = mysqli_fetch_assoc($result)) { ?>
        <tr>
          <td><?php echo $row['id']; ?></td>
          <td><?php echo $row['student_id']; ?></td>
          <td><?php echo $row['name']; ?></td>
          <td><?php echo $row['age']; ?></td>
          <td><?php echo $row['course']; ?></td>
          <td><?php echo $row['grade']; ?></td>
          <td>
            <a href="?edit=<?php echo $row['id']; ?>" class="edit-btn">Edit</a>
            <a href="?delete=<?php echo $row['id']; ?>" class="delete-btn" onclick="return confirm('Delete this record?')">Delete</a>
          </td>
        </tr>
      <?php } ?>
    </table>
  </div>

</body>
</html>
