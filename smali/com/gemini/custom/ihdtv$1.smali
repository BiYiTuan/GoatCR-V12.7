.class final Lcom/gemini/custom/ihdtv$1;
.super Ljava/lang/Object;
.source "ihdtv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/custom/ihdtv;->createHttpServerForHuidixing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field server:Ljava/net/ServerSocket;

.field socket:Ljava/net/Socket;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 102
    :try_start_0
    new-instance v8, Ljava/net/ServerSocket;

    sget v9, Lcom/gemini/custom/ihdtv;->port:I

    invoke-direct {v8, v9}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v8, p0, Lcom/gemini/custom/ihdtv$1;->server:Ljava/net/ServerSocket;

    .line 105
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/gemini/custom/ihdtv$1;->server:Ljava/net/ServerSocket;

    if-eqz v8, :cond_1

    .line 107
    iget-object v8, p0, Lcom/gemini/custom/ihdtv$1;->server:Ljava/net/ServerSocket;

    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v8

    iput-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;

    .line 109
    :cond_1
    iget-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;

    if-eqz v8, :cond_6

    sget-object v8, Lcom/gemini/custom/ihdtv;->playlist_url:Ljava/lang/String;

    if-eqz v8, :cond_6

    sget-object v8, Lcom/gemini/custom/ihdtv;->playlist_pw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_6

    .line 112
    :try_start_1
    iget-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 114
    .local v3, "output":Ljava/io/OutputStream;
    sget-object v8, Lcom/gemini/custom/ihdtv;->playlist_url:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "playlist_urls":[Ljava/lang/String;
    const-string v6, ""

    .line 116
    .local v6, "playlist_ip":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_1
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_2

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_2
    sget-object v8, Lcom/gemini/custom/ihdtv;->playlist_url:Ljava/lang/String;

    sget-object v9, Lcom/gemini/custom/ihdtv;->playlist_pw:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/gemini/custom/ihdtv;->geturl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "playlist_context":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_3

    .line 124
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 125
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 126
    iget-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V

    .line 127
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 160
    .end local v1    # "ii":I
    .end local v3    # "output":Ljava/io/OutputStream;
    .end local v4    # "playlist_context":Ljava/lang/String;
    .end local v6    # "playlist_ip":Ljava/lang/String;
    .end local v7    # "playlist_urls":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V

    .line 164
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    return-void

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "ii":I
    .restart local v3    # "output":Ljava/io/OutputStream;
    .restart local v4    # "playlist_context":Ljava/lang/String;
    .restart local v6    # "playlist_ip":Ljava/lang/String;
    .restart local v7    # "playlist_urls":[Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "playlist_contexts":[Ljava/lang/String;
    const-string v4, ""

    .line 133
    const/4 v1, 0x0

    :goto_3
    array-length v8, v5

    if-ge v1, v8, :cond_5

    .line 135
    aget-object v8, v5, v1

    const-string v9, ".ts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, v5, v1

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v1

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    sget-object v10, Lcom/gemini/custom/ihdtv;->playlist_pw:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/gemini/custom/ihdtv;->geturl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 141
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 145
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nContent-Length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    .line 155
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write([B)V

    .line 156
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 157
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 166
    .end local v1    # "ii":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "output":Ljava/io/OutputStream;
    .end local v4    # "playlist_context":Ljava/lang/String;
    .end local v5    # "playlist_contexts":[Ljava/lang/String;
    .end local v6    # "playlist_ip":Ljava/lang/String;
    .end local v7    # "playlist_urls":[Ljava/lang/String;
    :cond_6
    :try_start_4
    iget-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;

    if-eqz v8, :cond_0

    .line 168
    iget-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V

    .line 169
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/gemini/custom/ihdtv$1;->socket:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method
