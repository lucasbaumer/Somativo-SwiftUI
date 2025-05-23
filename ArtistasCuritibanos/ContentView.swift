import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ObrasViewModel()

    let colunas = [GridItem(.adaptive(minimum: 150))]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colunas, spacing: 20) {
                    ForEach(viewModel.obras) { obra in
                        NavigationLink(destination: DetalhesObraView(obra: obra)) {
                            VStack {
                                Image(obra.imagemNome)
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                    .frame(maxWidth: .infinity)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                Text(obra.titulo)
                                    .font(.headline)
                                Text(obra.artista)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Artistas Curitibanos")
        }
    }
}
