.class public final Lcom/memo/cable/ShellUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/memo/cable/ShellUtils$CommandResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static execCmd(Ljava/lang/String;Z)Lcom/memo/cable/ShellUtils$CommandResult;
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, v2}, Lcom/memo/cable/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/memo/cable/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/lang/String;ZZ)Lcom/memo/cable/ShellUtils$CommandResult;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/memo/cable/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/memo/cable/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;Z)Lcom/memo/cable/ShellUtils$CommandResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/memo/cable/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/memo/cable/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/memo/cable/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static execCmd(Ljava/util/List;ZZ)Lcom/memo/cable/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/memo/cable/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/memo/cable/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/memo/cable/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static execCmd([Ljava/lang/String;Z)Lcom/memo/cable/ShellUtils$CommandResult;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/memo/cable/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/memo/cable/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;ZZ)Lcom/memo/cable/ShellUtils$CommandResult;
    .locals 13

    const/4 v9, -0x1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/memo/cable/ShellUtils$CommandResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v9, v1, v2}, Lcom/memo/cable/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    if-eqz p1, :cond_2

    const-string v2, "su"

    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    :try_start_1
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    array-length v4, p0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v6, p0, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v6, :cond_3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :try_start_3
    const-string v2, "sh"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->write([B)V

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v4, v7

    move-object v6, v5

    move-object v5, v3

    move-object v7, v8

    move-object v3, v2

    move v2, v9

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v8, 0x0

    aput-object v4, v3, v8

    const/4 v4, 0x1

    aput-object v6, v3, v4

    const/4 v4, 0x2

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/memo/cable/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    :cond_4
    :goto_5
    new-instance v3, Lcom/memo/cable/ShellUtils$CommandResult;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_6
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_7
    invoke-direct {v3, v2, v1, v0}, Lcom/memo/cable/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_5
    :try_start_6
    const-string v2, "exit\n"

    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v6

    if-eqz p2, :cond_c

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v1, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v5, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_8
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :catch_1
    move-exception v3

    move-object v5, v1

    move-object v1, v2

    move v2, v6

    move-object v6, v4

    move-object v4, v7

    move-object v7, v8

    goto :goto_4

    :cond_6
    :goto_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v5, v4

    :goto_a
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/memo/cable/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_7
    throw v0

    :cond_8
    move-object v3, v4

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    :goto_b
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object v2, v4, v3

    invoke-static {v4}, Lcom/memo/cable/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    move v2, v6

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v7, v4

    move-object v8, v6

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v5, v4

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v3, v5

    move-object v8, v7

    move-object v5, v6

    move-object v7, v4

    goto :goto_a

    :catch_2
    move-exception v2

    move-object v7, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v2

    move v2, v9

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_4

    :catch_3
    move-exception v2

    move-object v6, v5

    move-object v7, v8

    move-object v5, v3

    move-object v3, v2

    move v2, v9

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_4

    :catch_4
    move-exception v2

    move-object v4, v7

    move-object v7, v8

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v3

    move-object v3, v2

    move v2, v6

    move-object v6, v5

    move-object v5, v12

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v4, v7

    move-object v7, v8

    move-object v11, v1

    move-object v1, v2

    move v2, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v0

    move-object v0, v11

    goto/16 :goto_4

    :catch_6
    move-exception v1

    move-object v4, v7

    move-object v7, v8

    move-object v11, v2

    move v2, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, v11

    goto/16 :goto_4

    :catch_7
    move-exception v1

    move-object v5, v3

    move-object v3, v1

    move-object v1, v2

    move v2, v6

    move-object v6, v4

    move-object v4, v7

    move-object v7, v8

    goto/16 :goto_4

    :cond_b
    move v2, v6

    goto/16 :goto_5

    :cond_c
    move-object v2, v3

    move-object v3, v5

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_b
.end method
