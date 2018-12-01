# heroku apps:create combes-fhir-data-server
# heroku container:push web -a combes-fhir-data-server
# heroku container:release web -a combes-fhir-data-server

heroku apps:create combes-fhir-data-server
heroku container:push web --arg DATA_CITY=Combes -a combes-fhir-data-server
# docker build --build-arg --no-cache -f ./Dockerfile -t fhir-data-server:combes .
# docker tag fhir-data-server:combes registry.heroku.com/combes-fhir-data-server/web
# docker push registry.heroku.com/combes-fhir-data-server/web
heroku container:release web -a combes-fhir-data-server

# docker build --build-arg data_city=Harlingen --no-cache -f ./Dockerfile -t fhir-data-server:harlingen .
# docker tag fhir-data-server:harlingen registry.heroku.com/fhir-data-server/web:harlingen
# docker push registry.heroku.com/harlingen-fhir-data-server/web:harlingen
# heroku apps:create harlingen-fhir-data-server
# # heroku container:run web:harlingen bash -a harlingen-fhir-data-server
# heroku container:release web:harlingen -a harlingen-fhir-data-server

docker build --build-arg data_city=Indian\ Lake --no-cache -f ./Dockerfile -t fhir-data-server:indianlake .
docker tag fhir-data-server:indianlake registry.heroku.com/fhir-data-server/web:indianlake
docker push registry.heroku.com/indianlake-fhir-data-server/web:indianlake
heroku apps:create indianlake-fhir-data-server
heroku container:run web:indianlake bash -a indianlake-fhir-data-server

docker build --build-arg data_city=La\ Feria --no-cache -f ./Dockerfile -t fhir-data-server:laferia .
docker tag fhir-data-server:laferia registry.heroku.com/fhir-data-server/web:laferia
docker push registry.heroku.com/laferia-fhir-data-server/web:laferia
heroku apps:create laferia-fhir-data-server
heroku container:run web:laferia bash -a laferia-fhir-data-server

docker build --build-arg data_city=Laguna\ Vista --no-cache -f ./Dockerfile -t fhir-data-server:lagunavista .
docker tag fhir-data-server:lagunavista registry.heroku.com/fhir-data-server/web:lagunavista
docker push registry.heroku.com/lagunavista-fhir-data-server/web:lagunavista
heroku apps:create lagunavista-fhir-data-server
heroku container:run web:lagunavista bash -a lagunavista-fhir-data-server

docker build --build-arg data_city=Los\ Fresnos --no-cache -f ./Dockerfile -t fhir-data-server:losfresnos .
docker tag fhir-data-server:losfresnos registry.heroku.com/fhir-data-server/web:losfresnos
docker push registry.heroku.com/losfresnos-fhir-data-server/web:losfresnos
heroku apps:create losfresnos-fhir-data-server
heroku container:run web:losfresnos bash -a losfresnos-fhir-data-server

docker build --build-arg data_city=Los\ Indios --no-cache -f ./Dockerfile -t fhir-data-server:losindios .
docker tag fhir-data-server:losindios registry.heroku.com/fhir-data-server/web:losindios
docker push registry.heroku.com/losindios-fhir-data-server/web:losindios
heroku apps:create losindios-fhir-data-server
heroku container:run web:losindios bash -a losindios-fhir-data-server

docker build --build-arg data_city=Palm\ Valley --no-cache -f ./Dockerfile -t fhir-data-server:palmvalley .
docker tag fhir-data-server:palmvalley registry.heroku.com/fhir-data-server/web:palmvalley
docker push registry.heroku.com/palmvalley-fhir-data-server/web:palmvalley
heroku apps:create palmvalley-fhir-data-server
heroku container:run web:palmvalley bash -a palmvalley-fhir-data-server

docker build --build-arg data_city=Port\ Isabel --no-cache -f ./Dockerfile -t fhir-data-server:portisabel .
docker tag fhir-data-server:portisabel registry.heroku.com/fhir-data-server/web:portisabel
docker push registry.heroku.com/portisabel-fhir-data-server/web:portisabel
heroku apps:create portisabel-fhir-data-server
heroku container:run web:portisabel bash -a portisabel-fhir-data-server

docker build --build-arg data_city=Primera --no-cache -f ./Dockerfile -t fhir-data-server:primera .
docker tag fhir-data-server:primera registry.heroku.com/fhir-data-server/web:primera
docker push registry.heroku.com/primera-fhir-data-server/web:primera
heroku apps:create primera-fhir-data-server
heroku container:run web:primera bash -a primera-fhir-data-server
