task :default => :tu

desc "Pruebas unitarias de la clase Fraccionarios"
task :tu do
    sh "ruby -I. test/test_fraccionario.rb"
end

desc "Prueba que ejecuta solo las pruebas simples"
task :simple do
    sh "ruby -I. test/test_fraccionario.rb -n /simple/"
end

desc "Prueba que ejecuta solo las operaciones entre fracciones"
task :operaciones do
    sh "ruby -I. test/test_fraccionario.rb -n /operaciones/"
end