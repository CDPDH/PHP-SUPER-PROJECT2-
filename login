<?php
session_start();

$usuario = $_POST['usuario'] ?? '';
$senha = $_POST['senha'] ?? '';
$tema = $_POST['tema'] ?? 'claro';

if ($usuario == 'admin' && $senha == '123') {
    $_SESSION['usuario'] = $usuario;
    $_SESSION['tema'] = $tema;
    echo "Login correto! <a href='produtos.php'>Ir para produtos</a>";
} else {
    echo "Usuário ou senha errados. <a href='index.php'>Tentar de novo</a>";
}
?>
