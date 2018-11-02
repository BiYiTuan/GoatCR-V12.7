.class final Lcom/gemini/play/MGplayer$15;
.super Ljava/lang/Object;
.source "MGplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MGplayer;->createHttpServer()V
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
    .line 3429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 3435
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "==start server "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/gemini/play/MGplayer;->http_server_port:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3437
    new-instance v15, Ljava/net/ServerSocket;

    sget v16, Lcom/gemini/play/MGplayer;->http_server_port:I

    invoke-direct/range {v15 .. v16}, Ljava/net/ServerSocket;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/gemini/play/MGplayer$15;->server:Ljava/net/ServerSocket;

    .line 3439
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->server:Ljava/net/ServerSocket;

    if-eqz v15, :cond_1

    .line 3440
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->server:Ljava/net/ServerSocket;

    invoke-virtual {v15}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    .line 3443
    :cond_1
    const-string v15, "==start server 2=="

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3445
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 3446
    .local v6, "input":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3447
    .local v2, "buffer":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 3449
    .local v9, "line":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "==start server line=="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3451
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    if-eqz v15, :cond_4

    if-eqz v9, :cond_4

    const-string v15, "GET /sswwtv.php"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_4

    .line 3455
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/sswwtv.dat"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3457
    .local v5, "imagePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3458
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 3459
    sget-object v15, Lcom/gemini/custom/spain1;->sswwtv_url:Ljava/lang/String;

    invoke-static {v15, v5}, Lcom/gemini/play/MGplayer;->donwFileSswwtv(Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    :cond_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3463
    .local v7, "inputStream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 3465
    .local v11, "output":Ljava/io/OutputStream;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nContent-Length: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3467
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\r\n\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3470
    .local v10, "msg":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/OutputStream;->write([B)V

    .line 3472
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "==start server 3=="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " length:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3474
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    new-array v13, v15, [B

    .line 3475
    .local v13, "temp":[B
    const/4 v8, 0x0

    .line 3476
    .local v8, "len":I
    const/4 v14, 0x0

    .line 3477
    .local v14, "totallen":I
    :goto_1
    invoke-virtual {v7, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_3

    .line 3478
    new-instance v12, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v12, v13, v15, v8}, Ljava/lang/String;-><init>([BII)V

    .line 3479
    .local v12, "t":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/OutputStream;->write([B)V

    .line 3480
    add-int/2addr v14, v8

    .line 3481
    goto :goto_1

    .line 3483
    .end local v12    # "t":Ljava/lang/String;
    :cond_3
    const/16 v15, 0x3e8

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->sleep(I)V

    .line 3484
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 3485
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 3486
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3491
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "imagePath":Ljava/lang/String;
    .end local v7    # "inputStream":Ljava/io/FileInputStream;
    .end local v8    # "len":I
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "output":Ljava/io/OutputStream;
    .end local v13    # "temp":[B
    .end local v14    # "totallen":I
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->close()V

    .line 3492
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3544
    .end local v2    # "buffer":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 3545
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 3547
    return-void

    .line 3488
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v9    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 3489
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 3494
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    if-eqz v15, :cond_5

    sget-object v15, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    if-eqz v15, :cond_5

    if-eqz v9, :cond_5

    const-string v15, "GET /playlist.m3u8"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v15

    if-eqz v15, :cond_5

    .line 3496
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 3511
    .restart local v11    # "output":Ljava/io/OutputStream;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nContent-Length: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    .line 3513
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\r\n\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3516
    .restart local v10    # "msg":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/OutputStream;->write([B)V

    .line 3518
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "==start server 3=="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3528
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "==start server 4=="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 3530
    sget-object v15, Lcom/gemini/play/MGplayer;->Ghttp_playlist_text:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/io/OutputStream;->write([B)V

    .line 3531
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 3532
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3537
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "output":Ljava/io/OutputStream;
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->close()V

    .line 3538
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    goto/16 :goto_0

    .line 3534
    :catch_2
    move-exception v3

    .line 3535
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 3539
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    if-eqz v15, :cond_0

    .line 3540
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;

    invoke-virtual {v15}, Ljava/net/Socket;->close()V

    .line 3541
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/gemini/play/MGplayer$15;->socket:Ljava/net/Socket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
