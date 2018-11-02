.class public Lcom/gemini/play/Ghttp;
.super Ljava/lang/Object;
.source "Ghttp.java"


# static fields
.field private static hls_tag_size:I

.field private static mSeq:I

.field private static playing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/Ghttp;->playing:Z

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/gemini/play/Ghttp;->mSeq:I

    .line 17
    const/16 v0, 0x14

    sput v0, Lcom/gemini/play/Ghttp;->hls_tag_size:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p0}, Lcom/gemini/play/Ghttp;->runGetPlaylist(Ljava/lang/String;)V

    return-void
.end method

.method private static createPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    sget-object v3, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    const-string v4, "playlist.m3u8"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 115
    .local v2, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 117
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/playlist.m3u8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "murl":Ljava/lang/String;
    return-object v1

    .line 119
    .end local v1    # "murl":Ljava/lang/String;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static createPlaylist()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#EXTM3U\n#EXT-X-VERSION:3\n#EXT-X-ALLOW-CACHE:NO\n#EXT-X-TARGETDURATION:10\n#EXT-X-MEDIA-SEQUENCE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/gemini/play/Ghttp;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    .line 141
    return-void
.end method

.method private static createPlaylist(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#EXTM3U\n#EXT-X-VERSION:3\n#EXT-X-ALLOW-CACHE:NO\n#EXT-X-TARGETDURATION:10\n#EXT-X-MEDIA-SEQUENCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/gemini/play/Ghttp;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#EXTINF:10,\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist ghttp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static play(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 21
    const/4 v4, 0x0

    sput v4, Lcom/gemini/play/Ghttp;->mSeq:I

    .line 23
    invoke-static {}, Lcom/gemini/play/Ghttp;->createPlaylist()V

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 26
    const-string v4, "ghttp://"

    const-string v5, "http://"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "http_url_playlist":Ljava/lang/String;
    sput-boolean v6, Lcom/gemini/play/Ghttp;->playing:Z

    .line 28
    new-instance v4, Lcom/gemini/play/Ghttp$1;

    invoke-direct {v4, v0}, Lcom/gemini/play/Ghttp$1;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4}, Lcom/gemini/play/Ghttp$1;->start()V

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://127.0.0.1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/gemini/play/MGplayer;->http_server_port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/playlist.m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "murl":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    const/16 v4, 0x2710

    if-ge v1, v4, :cond_2

    .line 35
    sget v4, Lcom/gemini/play/Ghttp;->mSeq:I

    if-lt v4, v6, :cond_0

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://127.0.0.1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/gemini/play/MGplayer;->http_server_port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/playlist.m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 47
    .end local v2    # "murl":Ljava/lang/String;
    .local v3, "murl":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 41
    .end local v3    # "murl":Ljava/lang/String;
    .restart local v2    # "murl":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 44
    sget-boolean v4, Lcom/gemini/play/Ghttp;->playing:Z

    if-nez v4, :cond_1

    move-object v3, v2

    .line 45
    .end local v2    # "murl":Ljava/lang/String;
    .restart local v3    # "murl":Ljava/lang/String;
    goto :goto_1

    .line 33
    .end local v3    # "murl":Ljava/lang/String;
    .restart local v2    # "murl":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 47
    .end local v2    # "murl":Ljava/lang/String;
    .restart local v3    # "murl":Ljava/lang/String;
    goto :goto_1
.end method

.method private static runGetPlaylist(Ljava/lang/String;)V
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x0

    .line 53
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v6, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, ""

    .line 55
    .local v5, "playlists_start":Ljava/lang/String;
    const/4 v4, 0x0

    .line 56
    .local v4, "playlists_num":I
    const/16 v1, 0xa

    .line 60
    .local v1, "index_length":I
    :cond_0
    sget-boolean v7, Lcom/gemini/play/Ghttp;->playing:Z

    if-nez v7, :cond_2

    .line 100
    :cond_1
    return-void

    .line 63
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/list.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x7d0

    invoke-static {v7, v8}, Lcom/gemini/play/Ghttp;->sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "playlist":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_7

    .line 67
    invoke-static {v2}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "#@#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "playlists":[Ljava/lang/String;
    array-length v7, v3

    if-lez v7, :cond_7

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    array-length v7, v3

    if-le v1, v7, :cond_3

    .line 74
    array-length v1, v3

    .line 76
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 77
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 79
    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_4

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/hls"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_5
    array-length v7, v3

    if-lez v7, :cond_7

    aget-object v7, v3, v9

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    array-length v7, v3

    if-eq v4, v7, :cond_7

    .line 85
    :cond_6
    aget-object v5, v3, v9

    .line 86
    array-length v4, v3

    .line 88
    sget v7, Lcom/gemini/play/Ghttp;->mSeq:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/gemini/play/Ghttp;->mSeq:I

    .line 89
    invoke-static {v6}, Lcom/gemini/play/Ghttp;->createPlaylist(Ljava/util/ArrayList;)V

    .line 94
    .end local v0    # "ii":I
    .end local v3    # "playlists":[Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playlist ghttp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    .restart local v0    # "ii":I
    :goto_1
    const/16 v7, 0xbb8

    if-ge v0, v7, :cond_0

    .line 98
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 99
    sget-boolean v7, Lcom/gemini/play/Ghttp;->playing:Z

    if-eqz v7, :cond_1

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static sendServerCmd(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "timeout"    # I

    .prologue
    .line 161
    const-string v4, ""

    .line 163
    .local v4, "resultData":Ljava/lang/String;
    const/4 v5, 0x0

    .line 166
    .local v5, "url":Ljava/net/URL;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v5    # "url":Ljava/net/URL;
    .local v6, "url":Ljava/net/URL;
    move-object v5, v6

    .line 173
    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendServerCmd Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 174
    if-eqz v5, :cond_2

    .line 177
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 178
    .local v7, "urlConn":Ljava/net/HttpURLConnection;
    invoke-virtual {v7, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 179
    invoke-virtual {v7, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 180
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 181
    .local v2, "in":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 182
    .local v0, "buffer":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 183
    .local v3, "inputLine":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 185
    sget-boolean v8, Lcom/gemini/play/Ghttp;->playing:Z

    if-nez v8, :cond_0

    .line 186
    const/4 v8, 0x0

    .line 200
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    .end local v7    # "urlConn":Ljava/net/HttpURLConnection;
    :goto_2
    return-object v8

    .line 188
    .restart local v0    # "buffer":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "inputLine":Ljava/lang/String;
    .restart local v7    # "urlConn":Ljava/net/HttpURLConnection;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 191
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendServerCmd result :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v4

    .line 193
    goto :goto_2

    .line 194
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    .end local v7    # "urlConn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    move-object v8, v4

    .line 200
    goto :goto_2

    .line 168
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/Ghttp;->playing:Z

    .line 236
    return-void
.end method
