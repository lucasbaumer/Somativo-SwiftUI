import SwiftUI

struct DetalhesObraView: View {
    let obra: ObraDeArte

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(obra.imagemNome)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Text(obra.titulo)
                    .font(.title)
                    .bold()

                Text("Artista: \(obra.artista)")
                    .font(.headline)

                Text("Ano: \(obra.ano)")
                Text("Estilo: \(obra.estilo)")
                
                Text(obra.descricao)
                    .padding(.top)
            }
            .padding()
        }
        .navigationTitle("Detalhes")
    }
}

