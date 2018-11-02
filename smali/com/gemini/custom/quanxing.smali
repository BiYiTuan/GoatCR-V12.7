.class public Lcom/gemini/custom/quanxing;
.super Ljava/lang/Object;
.source "quanxing.java"


# static fields
.field public static checkRunRunnable:Ljava/lang/Runnable;

.field public static checkruntimes:I

.field public static checkrunurl:Ljava/lang/String;

.field public static checktimeout:I

.field public static exit_url:Ljava/lang/String;

.field public static hotlink:Ljava/lang/String;

.field public static iconpassword:Ljava/lang/String;

.field public static iconurl:Ljava/lang/String;

.field public static iconversion:I

.field public static load_timeout:I

.field public static login_url:Ljava/lang/String;

.field public static panel:I

.field public static path:Ljava/lang/String;

.field public static qxid:Ljava/lang/String;

.field public static tip_text8:Ljava/lang/String;

.field public static tips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static urlpassword:Ljava/lang/String;

.field public static version:I

.field public static xmlpassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gemini/custom/quanxing;->tips:Ljava/util/ArrayList;

    .line 42
    sput-object v1, Lcom/gemini/custom/quanxing;->tip_text8:Ljava/lang/String;

    .line 43
    sput-object v1, Lcom/gemini/custom/quanxing;->xmlpassword:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/gemini/custom/quanxing;->iconurl:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/gemini/custom/quanxing;->iconpassword:Ljava/lang/String;

    .line 46
    sput v2, Lcom/gemini/custom/quanxing;->iconversion:I

    .line 47
    sput v2, Lcom/gemini/custom/quanxing;->panel:I

    .line 48
    sput v2, Lcom/gemini/custom/quanxing;->checkruntimes:I

    .line 49
    sput-object v1, Lcom/gemini/custom/quanxing;->checkrunurl:Ljava/lang/String;

    .line 50
    sput v2, Lcom/gemini/custom/quanxing;->checktimeout:I

    .line 51
    sput-object v1, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 53
    const-string v0, "qxid.dat"

    sput-object v0, Lcom/gemini/custom/quanxing;->qxid:Ljava/lang/String;

    .line 54
    const/16 v0, 0x18

    sput v0, Lcom/gemini/custom/quanxing;->version:I

    .line 55
    sput-object v1, Lcom/gemini/custom/quanxing;->exit_url:Ljava/lang/String;

    .line 56
    sput v2, Lcom/gemini/custom/quanxing;->load_timeout:I

    .line 58
    const-string v0, "/data/data/org.validate.steven/temp/"

    sput-object v0, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    .line 62
    const-string v0, "http://174.127.103.148:9000/exit.asp"

    sput-object v0, Lcom/gemini/custom/quanxing;->login_url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DateCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    .line 406
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 408
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 409
    .local v0, "d1":Ljava/util/Date;
    const/4 v1, 0x0

    .line 411
    .local v1, "d2":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 412
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 418
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 419
    const/4 v4, 0x1

    .line 421
    :goto_1
    return v4

    .line 413
    :catch_0
    move-exception v2

    .line 415
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 421
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static Thread_LoadImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 499
    new-instance v0, Lcom/gemini/custom/quanxing$2;

    invoke-direct {v0, p1, p0}, Lcom/gemini/custom/quanxing$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 534
    invoke-virtual {v0}, Lcom/gemini/custom/quanxing$2;->start()V

    .line 535
    return-void
.end method

.method public static donloadBackground(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "_this"    # Landroid/content/Context;
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "donloadBackground:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 484
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 487
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "loadimage"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-static {p0, p1}, Lcom/gemini/custom/quanxing;->Thread_LoadImage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static donwFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "outdir"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v3, "file":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->mkdir()Z

    .line 257
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 259
    move-object/from16 v4, p2

    .line 260
    .local v4, "fileName":Ljava/lang/String;
    move-object/from16 v12, p1

    .line 262
    .local v12, "path":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "path:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "#fileName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 265
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 266
    .local v9, "myURL":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 267
    .local v2, "conn":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 269
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 270
    .local v5, "fileSize":I
    if-gtz v5, :cond_1

    .line 300
    :cond_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 276
    .local v7, "is":Ljava/io/InputStream;
    if-nez v7, :cond_2

    .line 278
    const-string v14, "WGET DOWN NULL"

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 280
    :cond_2
    const-string v14, "WGET 1"

    invoke-static {v14}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 282
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 284
    .local v13, "savePathString":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v8, "myTempFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 288
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 289
    .local v1, "buf":[B
    const/4 v11, 0x0

    .line 292
    .local v11, "numreads":I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 293
    .local v10, "numread":I
    if-lez v10, :cond_0

    .line 297
    const/4 v14, 0x0

    invoke-virtual {v6, v1, v14, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static getResult(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gemini/custom/PreviewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 457
    invoke-static {p0}, Lcom/gemini/custom/quanxing;->parseXmlfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 458
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/gemini/custom/PreviewInfo;>;"
    if-nez v2, :cond_1

    move-object v3, v6

    .line 477
    :cond_0
    :goto_0
    return-object v3

    .line 461
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v3, "ins":Ljava/util/List;, "Ljava/util/List<Lcom/gemini/custom/PreviewInfo;>;"
    if-nez v3, :cond_2

    move-object v3, v6

    .line 464
    goto :goto_0

    .line 466
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/custom/PreviewInfo;

    .line 467
    .local v1, "info":Lcom/gemini/custom/PreviewInfo;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 468
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 469
    .local v4, "num":I
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 470
    const/4 v4, 0x7

    .line 472
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Week"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "week":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/gemini/custom/PreviewInfo;->getWeek()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 474
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getSDAvailableSize()J
    .locals 10

    .prologue
    .line 354
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 355
    const-wide/16 v6, 0x0

    .line 361
    .local v0, "availableBlocks":J
    .local v2, "blockSize":J
    .local v4, "path":Ljava/io/File;
    .local v5, "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v6

    .line 357
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 358
    .restart local v4    # "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v5    # "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 360
    .restart local v2    # "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 361
    .restart local v0    # "availableBlocks":J
    mul-long v6, v2, v0

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    goto :goto_0
.end method

.method private static getSDTotalSize()J
    .locals 10

    .prologue
    .line 343
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 344
    const-wide/16 v6, 0x0

    .line 350
    .local v0, "blockSize":J
    .local v2, "path":Ljava/io/File;
    .local v3, "stat":Landroid/os/StatFs;
    .local v4, "totalBlocks":J
    :goto_0
    return-wide v6

    .line 346
    .end local v0    # "blockSize":J
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "totalBlocks":J
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 347
    .restart local v2    # "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 348
    .restart local v3    # "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 349
    .restart local v0    # "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 350
    .restart local v4    # "totalBlocks":J
    mul-long v6, v0, v4

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {}, Lcom/gemini/custom/quanxing;->runCheck()V

    .line 84
    return-void
.end method

.method public static parseXmlfile(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "xmlfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/gemini/custom/PreviewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 427
    new-instance v2, Lcom/gemini/custom/XmlHandler;

    invoke-direct {v2}, Lcom/gemini/custom/XmlHandler;-><init>()V

    .line 429
    .local v2, "handler":Lcom/gemini/custom/XmlHandler;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 430
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 433
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    const-string v6, ".xml"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 453
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    :cond_0
    :goto_0
    return-object v5

    .line 436
    .restart local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "====== xmlfile ======="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 440
    .local v3, "input":Ljava/io/InputStream;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v5, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 441
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 453
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    :goto_1
    invoke-virtual {v2}, Lcom/gemini/custom/XmlHandler;->getInfos()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 448
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 449
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 450
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 451
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static previewInit()V
    .locals 9

    .prologue
    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v7}, Lcom/gemini/play/MGplayer;->getPackName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/temp/xml/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "xml_path":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlSize()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 91
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->introidGet(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "xml_file":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preview xml "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 93
    const-string v6, "x.xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/custom/quanxing;->getResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/gemini/custom/PreviewInfo;>;"
    const-string v3, ""

    .line 97
    .local v3, "temp":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 89
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/gemini/custom/PreviewInfo;>;"
    .end local v3    # "temp":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/gemini/custom/PreviewInfo;>;"
    .restart local v3    # "temp":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/custom/PreviewInfo;

    .line 101
    .local v1, "info":Lcom/gemini/custom/PreviewInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/gemini/custom/PreviewInfo;->getTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/gemini/custom/PreviewInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    goto :goto_2

    .line 103
    .end local v1    # "info":Lcom/gemini/custom/PreviewInfo;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preview init temp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 104
    invoke-static {v0, v3}, Lcom/gemini/play/LIVEplayer;->introductionSet(ILjava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 107
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/gemini/custom/PreviewInfo;>;"
    .end local v3    # "temp":Ljava/lang/String;
    .end local v4    # "xml_file":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static readSDFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 366
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-object v5

    .line 369
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 378
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 382
    .local v3, "fis":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 384
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 390
    .end local v0    # "c":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 400
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 388
    .restart local v0    # "c":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 394
    .end local v0    # "c":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static runCheck()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 112
    .local v0, "checkRunHandler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/custom/quanxing$1;

    invoke-direct {v1, v0}, Lcom/gemini/custom/quanxing$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/gemini/custom/quanxing;->checkRunRunnable:Ljava/lang/Runnable;

    .line 151
    sget-object v1, Lcom/gemini/custom/quanxing;->checkRunRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public static saveToSDCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, 0xa

    .line 305
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 339
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v2, 0x0

    .line 311
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Lcom/gemini/custom/quanxing;->getSDTotalSize()J

    move-result-wide v4

    .line 312
    .local v4, "size1":J
    invoke-static {}, Lcom/gemini/custom/quanxing;->getSDAvailableSize()J

    move-result-wide v6

    .line 314
    .local v6, "size2":J
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "size1 ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "size1 ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/gemini/custom/quanxing;->getSDTotalSize()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_1

    invoke-static {}, Lcom/gemini/custom/quanxing;->getSDAvailableSize()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_1

    .line 319
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-direct {v1, v8, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 332
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "size1":J
    .end local v6    # "size2":J
    :catch_1
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 334
    :catch_2
    move-exception v0

    .line 336
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 332
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 337
    :goto_3
    throw v8

    .line 334
    :catch_3
    move-exception v0

    .line 336
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 330
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "size1":J
    .restart local v6    # "size2":J
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 324
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static unIcon(Landroid/content/Context;)V
    .locals 9
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v6}, Lcom/gemini/play/MGplayer;->getPackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/temp/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    .line 195
    const-string v5, "data"

    invoke-static {p0, v5, v8}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "iconversion"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 196
    .local v4, "iconversion_save":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iconversion save:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconversion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/gemini/custom/quanxing;->iconversion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "iconurl_save":Ljava/lang/String;
    sget-object v5, Lcom/gemini/custom/quanxing;->iconurl:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 200
    const-string v3, "http://android.webok.net:9000/epg/icon.zip"

    .line 203
    :goto_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iconurl path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gemini/custom/quanxing;->iconurl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    sget-object v5, Lcom/gemini/custom/quanxing;->iconurl:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "iconname":Ljava/lang/String;
    sget v5, Lcom/gemini/custom/quanxing;->iconversion:I

    if-lt v4, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 208
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iconurl name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    :try_start_0
    sget-object v5, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    invoke-static {v3, v5, v2}, Lcom/gemini/custom/quanxing;->donwFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    sget-object v7, Lcom/gemini/custom/quanxing;->iconpassword:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/gemini/custom/quanxing;->unzipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v5, "data"

    invoke-static {p0, v5, v8}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 221
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "iconversion"

    sget v6, Lcom/gemini/custom/quanxing;->iconversion:I

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 202
    .end local v2    # "iconname":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/gemini/custom/quanxing;->iconurl:Ljava/lang/String;

    goto/16 :goto_0

    .line 211
    .restart local v2    # "iconname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static unXml(Landroid/content/Context;)V
    .locals 11
    .param p0, "_this"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->getPackName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/temp/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    .line 158
    const-string v7, "data"

    invoke-static {p0, v7, v10}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 160
    .local v4, "settings":Landroid/content/SharedPreferences;
    const-string v7, "epgtime"

    const-string v8, "1970-1-1"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "stime":Ljava/lang/String;
    const-string v7, "epgoldtime"

    const-string v8, "1970-1-1"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "otime":Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/gemini/custom/quanxing;->DateCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 165
    const-string v7, "epgurl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v9}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/xml.zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "url":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xml path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "name":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xml name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    :try_start_0
    sget-object v7, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    invoke-static {v6, v7, v2}, Lcom/gemini/custom/quanxing;->donwFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    const-string v7, "data"

    invoke-static {p0, v7, v10}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 181
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "epgoldtime"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/gemini/custom/quanxing;->path:Ljava/lang/String;

    sget-object v9, Lcom/gemini/custom/quanxing;->xmlpassword:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/gemini/custom/quanxing;->unzipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 173
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unzipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outdir"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v2, 0x0

    .line 233
    .local v2, "zfile":Lnet/lingala/zip4j/core/ZipFile;
    :try_start_0
    new-instance v3, Lnet/lingala/zip4j/core/ZipFile;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v2    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    .local v3, "zfile":Lnet/lingala/zip4j/core/ZipFile;
    :try_start_1
    const-string v4, "gbk"

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/core/ZipFile;->setFileNameCharset(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Lnet/lingala/zip4j/core/ZipFile;->isValidZipFile()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v3

    .line 250
    .end local v3    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v2    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    :goto_0
    return-void

    .line 239
    .end local v2    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v3    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "odir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 243
    :cond_1
    invoke-virtual {v3}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/core/ZipFile;->setPassword([C)V

    .line 246
    :cond_2
    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 249
    .end local v3    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v2    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    goto :goto_0

    .line 247
    .end local v1    # "odir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lnet/lingala/zip4j/exception/ZipException;
    :goto_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v0    # "e":Lnet/lingala/zip4j/exception/ZipException;
    .end local v2    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v3    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    .restart local v2    # "zfile":Lnet/lingala/zip4j/core/ZipFile;
    goto :goto_1
.end method
