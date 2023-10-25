<?php

session_start();

// Verificar se o usuário está logado e se é um administrador
if (!(isset($_SESSION['usuario_logado']) &&isset($_SESSION['admin']) )) {
    header("Location: login.php"); // Redirecionar de volta para a página de login se o usuário não estiver logado como administrador
    exit();
}

?>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página do Administrador</title>
    <link rel="stylesheet" type="text/css" href="admin.css">
</head>
<body>
    

    <h1>Bem-vindo à página de administrador</h1>
    <p>Aqui estão as funções de administração disponíveis para você.</p>

    <!-- Seção para Pilotos -->
    <h2>Gerenciar Pilotos</h2>
    <p>Aqui você pode adicionar, editar ou excluir informações sobre os pilotos.</p>
    <a href="admpilotos.php">Ir para a página de Pilotos</a>

    <!-- Seção para Equipas -->
    <h2>Gerenciar Equipas</h2>
    <p>Aqui você pode adicionar, editar ou excluir informações sobre as equipas.</p>
    <a href="admequipas.php">Ir para a página de Equipas</a>

    <!-- Seção para Equipas Piloto -->
    <h2>Gerenciar Equipas Piloto</h2>
    <p>Aqui você pode adicionar, editar ou excluir informações sobre as equipas dos pilotos.</p>
    <a href="admequipapilotos.php">Ir para a página de Equipas Piloto</a>

    <!-- Seção para Prêmios -->
    <h2>Gerenciar Prêmios</h2>
    <p>Aqui você pode adicionar, editar ou excluir informações sobre os prêmios.</p>
    <a href="premio.php">Ir para a página de Prêmios</a>

    <!-- Seção para Prêmios Piloto -->
    <h2>Gerenciar Prêmios Piloto</h2>
    <p>Aqui você pode adicionar, editar ou excluir informações sobre os prêmios dos pilotos.</p>
    <a href="admpilotopremio.php">Ir para a página de Prêmios Piloto</a>

    <!-- Seção para Circuitos -->
    <h2>Gerenciar Circuitos</h2>
    <p>Aqui você pode adicionar, editar ou excluir informações sobre os circuitos.</p>
    <a href="admcircuitos.php">Ir para a página de Circuitos</a>
<!-- Seção para Equipas -->
<h2>Gerenciar utilizadores</h2>
    <p>Aqui voce pode editar e excluir utilizadores do site </p>
    <a href="utilizadoreadm.php">Ir para a página de Equipas</a>
 <!-- Seção para Equipas -->
<h2>Gerenciar Equipas Premios</h2>
    <p>Aqui voce pode os premios das equipas </p>
    <a href="admequipapremio.php">Ir para a página de Equipas</a>
    <!-- Adicione o conteúdo da página do administrador aqui -->

    <a href="logout.php">Sair</a> <!-- Um link para a página de logout -->
</body>
</html>
