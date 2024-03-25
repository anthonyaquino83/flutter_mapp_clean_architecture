import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../../core/params/params.dart';
import '../entities/pokemon_image.dart';
import '../repositories/pokemon_image_repository.dart';

class GetPokemonImage {
  final PokemonImageRepository pokemonImageRepository;

  GetPokemonImage({required this.pokemonImageRepository});

  Future<Either<Failure, PokemonImageEntity>> call({
    required PokemonImageParams pokemonImageParams,
  }) async {
    return await pokemonImageRepository.getPokemonImage(
        pokemonImageParams: pokemonImageParams);
  }
}
