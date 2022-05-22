    //
    //  HomeScreen.swift
    //  TikTok Clone
    //
    //  Created by Achref Ben Tekaya on 20/5/2022.
    //

    import SwiftUI
    import AVKit

    struct HomeScreen : View {
        @State var index = 0
        @State var top = 0
        @State var data = [
            Video(id: 0, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video4", ofType: "mp4")!)), replay: false),
            Video(id: 1, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video5", ofType: "mp4")!)), replay: false),
            Video(id: 2, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video2", ofType: "mp4")!)), replay: false),
            Video(id: 3, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video3", ofType: "mp4")!)), replay: false),
            Video(id: 4, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video1", ofType: "mp4")!)), replay: false),
            Video(id: 5, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video6", ofType: "mp4")!)), replay: false),
        ]
        
        var body: some View{
            
            ZStack{
                
                PlayerScrollView(data: self.$data)
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        Button(action: {
                            
                            self.top = 0
                            
                        }) {
                            
                            Text("Following")
                                .foregroundColor(self.top == 0 ? .white : Color.white.opacity(0.45))
                                .fontWeight(self.top == 0 ? .bold : .none)
                                .padding(.vertical)
                                .shadow(color: .blue, radius: 0.2, x: 1, y: 1)
                        }
                        
                        Text("|")
                            .foregroundColor(.white)
                            .fontWeight(.none)
                            .padding(.vertical)

                        Button(action: {
                            
                            self.top = 1
                            
                        }) {
                            
                            Text("For You")
                                .foregroundColor(self.top == 1 ? .white : Color.white.opacity(0.45))
                                .fontWeight(self.top == 1 ? .bold : .none)
                                .padding(.vertical)
                                .shadow(color: .pink, radius: 0.2, x: 1, y: 1)
                        }
                    }
                    
                    Spacer()
                    
                    HStack(alignment: .bottom){
                        
                        
                    VStack(alignment: .leading){

                        Text("@achref.bentekaya")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .padding(.bottom, 10)
                        Text("This is the video description 💌💌")
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                        Text("#tiktok #clone #ios_developer #swift #halber #nxtya #apple #iphone #ipad")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .padding(.bottom, 10)
                        HStack(spacing: 4){
                            Image(systemName: "music.note.list")
                                .resizable()
                                .frame(width: 14, height: 14)
                                .font(.title)
                                .foregroundColor(.white)
                            Text("Achref Ben Tekaya - Music Trending")
                                .fontWeight(.light)
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                        }
                        
                    }
                    .padding(.bottom, 25)
                    .padding(.leading)

                        Spacer()
                        
                        VStack(spacing: 28){
                            
                                VStack(spacing: -12){
                            
                                    Button(action: {
                                        
                                    }) {

                                    Image("pic")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 55, height: 55)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                                    }

                                    Button(action: {
                                        
                                    }) {

                                    Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .font(.title)
                                    .foregroundColor(.pink)
                                    .background(
                                      Color.white.mask(Circle())
                                    )
                                    }
                                
                            }
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack(spacing: 4){
                                    
                                    Image(systemName: "suit.heart.fill")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .opacity(0.8)
                                    
                                    Text("22K")
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .opacity(0.8)
                                        .font(.system(size: 12))

                                }
                            }
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack(spacing: 4){
                                    
                                    Image(systemName: "message.fill")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .opacity(0.8)

                                    Text("1021")
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .opacity(0.8)
                                        .font(.system(size: 12))
                                }
                            }
                            
                            Button(action: {
                                
                            }) {
                                
                                VStack(spacing: 4){
                                    
                                    Image(systemName: "arrowshape.turn.up.right.fill")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .opacity(0.8)

                                    Text("Share")
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .opacity(0.8)
                                        .font(.system(size: 12))
                                }
                            }
                            
                            GifImage("record-player")
                                .frame(width: 55, height: 55)

                        }
                        .padding(.bottom, 25)
                        .padding(.trailing)


                    }
                    
                    HStack(spacing: 0){
                        
                        Button(action: {
                            
                            self.index = 0
                            
                        }) {
                            VStack(spacing: 4){
                                
                                Image(systemName: "house")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                                    .padding(.horizontal)

                                Text("Home")
                                    .fontWeight(self.index == 0 ? .bold : .regular)
                                    .foregroundColor(self.index == 0 ? .white : Color.white.opacity(0.35))
                                    .font(.system(size: 10))
                            }

                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            self.index = 1
                            
                        }) {
                            
                            VStack(spacing: 4){
                                
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                                    .padding(.horizontal)

                                Text("Discover")
                                    .fontWeight(self.index == 1 ? .bold : .regular)
                                    .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                                    .font(.system(size: 10))
                            }
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            
                            
                        }) {
                                Image("upload")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 50, height: 35)
                                .padding(.horizontal)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            self.index = 2
                            
                        }) {
                            
                            VStack(spacing: 4){
                                
                                Image(systemName: "tray.and.arrow.down")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.35))
                                    .padding(.horizontal)

                                Text("Inbox")
                                    .fontWeight(self.index == 2 ? .bold : .regular)
                                    .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.35))
                                    .font(.system(size: 10))
                            }
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            self.index = 3
                            
                        }) {
                            
                            VStack(spacing: 4){
                                
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.35))
                                    .padding(.horizontal)

                                Text("Me")
                                    .fontWeight(self.index == 3 ? .bold : .regular)
                                    .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.35))
                                    .font(.system(size: 10))
                            }
                            }
                    }
                    .padding(.horizontal)
                }
                    
                // due to all edges are ignored...
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 20)
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
        }
    }
    struct HomeScreen_Previews: PreviewProvider {
        static var previews: some View {
            HomeScreen()
        }
    }
