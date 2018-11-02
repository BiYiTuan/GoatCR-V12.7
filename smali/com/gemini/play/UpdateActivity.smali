.class public Lcom/gemini/play/UpdateActivity;
.super Ljava/lang/Object;
.source "UpdateActivity.java"


# static fields
.field private static StrURL:Ljava/lang/String;

.field private static Updatename:Ljava/lang/String;

.field private static pDialog:Lcom/gemini/play/MyProgressDialog$Builder;

.field private static running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    sput-object v0, Lcom/gemini/play/UpdateActivity;->StrURL:Ljava/lang/String;

    .line 36
    const-string v0, "gemini-iptv"

    sput-object v0, Lcom/gemini/play/UpdateActivity;->Updatename:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/UpdateActivity;->running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lcom/gemini/play/UpdateActivity;->running:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/gemini/play/UpdateActivity;->StrURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/gemini/play/UpdateActivity;->getDataSource(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static getDataSource(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 22
    .param p0, "t"    # Landroid/app/Activity;
    .param p1, "strPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "UpdateActivity Url strPath "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 250
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 252
    const-string v17, "Tag"

    const-string v18, "error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 259
    .local v10, "myURL":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 260
    .local v4, "conn":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 261
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    .line 262
    .local v6, "fileSize":I
    if-gtz v6, :cond_1

    .line 264
    const-string v17, "UpdateActivity APK 0KB "

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 269
    .local v8, "is":Ljava/io/InputStream;
    if-nez v8, :cond_2

    .line 271
    const-string v17, "UpdateActivity APK NULL "

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 274
    :cond_2
    const-string v17, "UpdateActivity 1"

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 275
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/gemini/play/UpdateActivity;->Updatename:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".apk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 276
    .local v16, "savePathString":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v9, "myTempFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 278
    .local v13, "path":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "UpdateActivity APK:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " url= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 281
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/gemini/play/UpdateActivity;->Updatename:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".apk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "FileStream":Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 283
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 284
    .local v3, "buf":[B
    const/4 v12, 0x0

    .line 287
    .local v12, "numreads":I
    :cond_3
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 288
    .local v11, "numread":I
    if-gtz v11, :cond_5

    .line 300
    :goto_1
    sget-boolean v17, Lcom/gemini/play/UpdateActivity;->running:Z

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 302
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/gemini/play/UpdateActivity;->installFile(Landroid/app/Activity;Ljava/io/File;)V

    .line 307
    :cond_4
    :try_start_0
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_2
    const-string v17, "UpdateActivity Download Finish"

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v3, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 293
    add-int/2addr v12, v11

    .line 294
    int-to-double v0, v12

    move-wide/from16 v18, v0

    int-to-double v0, v6

    move-wide/from16 v20, v0

    div-double v14, v18, v20

    .line 295
    .local v14, "pre":D
    sget-object v17, Lcom/gemini/play/UpdateActivity;->pDialog:Lcom/gemini/play/MyProgressDialog$Builder;

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v14

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/gemini/play/MyProgressDialog$Builder;->setProgress(I)V

    .line 298
    sget-boolean v17, Lcom/gemini/play/UpdateActivity;->running:Z

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 309
    .end local v14    # "pre":D
    :catch_0
    move-exception v5

    .line 311
    .local v5, "ex":Ljava/lang/Exception;
    const-string v17, "Tag"

    const-string v18, "error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static installFile(Landroid/app/Activity;Ljava/io/File;)V
    .locals 4
    .param p0, "t"    # Landroid/app/Activity;
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "application/vnd.android.package-archive"

    .line 325
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gemini/play/UpdateActivity;->Updatename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method public static readRssXml(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 4
    .param p0, "inStream"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 214
    .local v2, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 215
    .local v1, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v0, Lcom/gemini/play/VesionXMLContent;

    invoke-direct {v0}, Lcom/gemini/play/VesionXMLContent;-><init>()V

    .line 216
    .local v0, "handler":Lcom/gemini/play/VesionXMLContent;
    invoke-virtual {v1, p0, v0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 217
    invoke-virtual {v0}, Lcom/gemini/play/VesionXMLContent;->getVersion()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static showUpdate(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5
    .param p0, "t"    # Landroid/app/Activity;
    .param p1, "wHandler"    # Landroid/os/Handler;

    .prologue
    .line 166
    const-string v2, "data"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, "settings":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 168
    .local v1, "update":Ljava/lang/String;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/gemini/play/UpdateActivity;->running:Z

    .line 170
    const-string v2, "update"

    sget-object v3, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v3}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    sput-object v1, Lcom/gemini/play/UpdateActivity;->StrURL:Ljava/lang/String;

    .line 179
    :goto_0
    new-instance v2, Lcom/gemini/play/MyProgressDialog$Builder;

    invoke-direct {v2, p0}, Lcom/gemini/play/MyProgressDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/gemini/play/UpdateActivity;->pDialog:Lcom/gemini/play/MyProgressDialog$Builder;

    .line 180
    sget-object v2, Lcom/gemini/play/UpdateActivity;->pDialog:Lcom/gemini/play/MyProgressDialog$Builder;

    const v3, 0x7f0b00b4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyProgressDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyProgressDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/gemini/play/UpdateActivity$3;

    invoke-direct {v4, p1}, Lcom/gemini/play/UpdateActivity$3;-><init>(Landroid/os/Handler;)V

    .line 181
    invoke-virtual {v2, v3, v4}, Lcom/gemini/play/MyProgressDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyProgressDialog$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/gemini/play/MyProgressDialog$Builder;->create()Lcom/gemini/play/MyProgressDialog;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/gemini/play/MyProgressDialog;->show()V

    .line 198
    new-instance v2, Lcom/gemini/play/UpdateActivity$4;

    invoke-direct {v2, p0}, Lcom/gemini/play/UpdateActivity$4;-><init>(Landroid/app/Activity;)V

    .line 209
    invoke-virtual {v2}, Lcom/gemini/play/UpdateActivity$4;->start()V

    .line 210
    return-void

    .line 177
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gemini/play/UpdateActivity;->Updatename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gemini/play/UpdateActivity;->StrURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public static startUpdate(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "t"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v3, "data"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, "settings":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 107
    .local v2, "update":Ljava/lang/String;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/gemini/play/UpdateActivity;->running:Z

    .line 109
    const-string v3, "update"

    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    sput-object v2, Lcom/gemini/play/UpdateActivity;->StrURL:Ljava/lang/String;

    .line 118
    :goto_0
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v3, 0x7f0b00b4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gemini/play/MyDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 122
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 123
    invoke-virtual {v0, p1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 127
    :goto_1
    const v3, 0x7f0b0083

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/UpdateActivity$1;

    invoke-direct {v4, p0}, Lcom/gemini/play/UpdateActivity$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 136
    const v3, 0x7f0b0032

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/UpdateActivity$2;

    invoke-direct {v4, v0}, Lcom/gemini/play/UpdateActivity$2;-><init>(Lcom/gemini/play/MyDialog$Builder;)V

    invoke-virtual {v0, v3, v4}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 145
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gemini/play/MyDialog;->show()V

    .line 146
    return-void

    .line 116
    .end local v0    # "builder":Lcom/gemini/play/MyDialog$Builder;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/UpdateActivity;->Updatename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/UpdateActivity;->StrURL:Ljava/lang/String;

    goto :goto_0

    .line 125
    .restart local v0    # "builder":Lcom/gemini/play/MyDialog$Builder;
    :cond_1
    const v3, 0x7f0b00b5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method public getVersionxml(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "resourceUrl"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "db":Ljava/lang/String;
    const/4 v4, 0x0

    .line 226
    .local v4, "url":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    move-object v4, v5

    .line 230
    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_0
    const/4 v2, 0x0

    .line 234
    .local v2, "is":Lorg/xml/sax/InputSource;
    :try_start_1
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    .local v3, "is":Lorg/xml/sax/InputSource;
    if-eqz v3, :cond_0

    .line 237
    :try_start_2
    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 238
    invoke-static {v3}, Lcom/gemini/play/UpdateActivity;->readRssXml(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :cond_0
    move-object v2, v3

    .line 243
    .end local v3    # "is":Lorg/xml/sax/InputSource;
    .restart local v2    # "is":Lorg/xml/sax/InputSource;
    :goto_1
    return-object v0

    .line 227
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "is":Lorg/xml/sax/InputSource;
    :catch_1
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "is":Lorg/xml/sax/InputSource;
    .restart local v3    # "is":Lorg/xml/sax/InputSource;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Lorg/xml/sax/InputSource;
    .restart local v2    # "is":Lorg/xml/sax/InputSource;
    goto :goto_2
.end method
