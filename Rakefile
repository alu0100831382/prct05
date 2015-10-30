task :default => :tu

desc "Pruebas unitarias de la clase Fraccionarios"
task :tu do
    sh "ruby -I. test/fraccionario_test_v2.rb"
end

desc "Prueba que ejecuta solo las pruebas simples"
task :simple do
    sh "ruby -I. test/fraccionario_test_v2.rb -n /simple/"
end