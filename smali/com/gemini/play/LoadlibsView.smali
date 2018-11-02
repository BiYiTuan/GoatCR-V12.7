.class public Lcom/gemini/play/LoadlibsView;
.super Ljava/lang/Object;
.source "LoadlibsView.java"


# static fields
.field private static _t:Landroid/app/Activity;

.field private static dialog:Lcom/gemini/play/MyProgressDialog;

.field private static dialog2:Lcom/gemini/play/MyProgressDialog;

.field private static pDialog:Lcom/gemini/play/MyProgressDialog$Builder;

.field private static pDialog2:Lcom/gemini/play/MyProgressDialog$Builder;

.field public static rHandler:Landroid/os/Handler;

.field private static running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/LoadlibsView;->running:Z

    .line 167
    new-instance v0, Lcom/gemini/play/LoadlibsView$3;

    invoke-direct {v0}, Lcom/gemini/play/LoadlibsView$3;-><init>()V

    sput-object v0, Lcom/gemini/play/LoadlibsView;->rHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 24
    sput-boolean p0, Lcom/gemini/play/LoadlibsView;->running:Z

    return p0
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3, p4}, Lcom/gemini/play/LoadlibsView;->getDataSource(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/gemini/play/LoadlibsView;->_t:Landroid/app/Activity;

    return-object v0
.end method

.method private static getDataSource(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 22
    .param p0, "t"    # Landroid/app/Activity;
    .param p1, "strPath"    # Ljava/lang/String;
    .param p2, "sofile"    # Ljava/lang/String;
    .param p3, "ter_md5"    # Ljava/lang/String;
    .param p4, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 77
    const-string v15, "Tag"

    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .local v12, "myURL":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 85
    .local v4, "conn":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 86
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    .line 87
    .local v7, "fileSize":I
    if-gtz v7, :cond_1

    .line 89
    const-string v15, "LoadlibsView 0KB "

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 94
    .local v9, "is":Ljava/io/InputStream;
    if-nez v9, :cond_2

    .line 96
    const-string v15, "LoadlibsView NULL "

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 107
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ".so"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "FileStream":Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 109
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/16 v15, 0x400

    new-array v3, v15, [B

    .line 110
    .local v3, "buf":[B
    const/4 v14, 0x0

    .line 113
    .local v14, "numreads":I
    :cond_3
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 114
    .local v13, "numread":I
    if-gtz v13, :cond_5

    .line 126
    :goto_1
    sget-boolean v15, Lcom/gemini/play/LoadlibsView;->running:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_4

    .line 128
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->file_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 129
    .local v10, "md5":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file_md5:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " # "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 130
    if-eqz p3, :cond_4

    if-eqz v10, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 132
    const-string v15, "data"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 133
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "_version"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v5, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "_version:"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 139
    sget-object v15, Lcom/gemini/play/LoadlibsView;->dialog:Lcom/gemini/play/MyProgressDialog;

    invoke-virtual {v15}, Lcom/gemini/play/MyProgressDialog;->dismiss()V

    .line 141
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 142
    .local v11, "msg":Landroid/os/Message;
    const/4 v15, 0x1

    iput v15, v11, Landroid/os/Message;->what:I

    .line 143
    sget-object v15, Lcom/gemini/play/LoadlibsView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v15, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "md5":Ljava/lang/String;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_4
    :try_start_0
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_2
    const-string v15, "UpdateActivity Download Finish"

    invoke-static {v15}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_5
    const/4 v15, 0x0

    invoke-virtual {v8, v3, v15, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 119
    add-int/2addr v14, v13

    .line 120
    int-to-double v0, v14

    move-wide/from16 v18, v0

    int-to-double v0, v7

    move-wide/from16 v20, v0

    div-double v16, v18, v20

    .line 121
    .local v16, "pre":D
    sget-object v15, Lcom/gemini/play/LoadlibsView;->pDialog:Lcom/gemini/play/MyProgressDialog$Builder;

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v16

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/gemini/play/MyProgressDialog$Builder;->setProgress(I)V

    .line 124
    sget-boolean v15, Lcom/gemini/play/LoadlibsView;->running:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    goto/16 :goto_1

    .line 158
    .end local v16    # "pre":D
    :catch_0
    move-exception v6

    .line 160
    .local v6, "ex":Ljava/lang/Exception;
    const-string v15, "Tag"

    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static showDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "t"    # Landroid/app/Activity;
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;
    .param p3, "osfile"    # Ljava/lang/String;
    .param p4, "version"    # I

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/LoadlibsView;->running:Z

    .line 41
    sput-object p0, Lcom/gemini/play/LoadlibsView;->_t:Landroid/app/Activity;

    .line 44
    new-instance v0, Lcom/gemini/play/MyProgressDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyProgressDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gemini/play/LoadlibsView;->pDialog:Lcom/gemini/play/MyProgressDialog$Builder;

    .line 46
    sget-object v0, Lcom/gemini/play/LoadlibsView;->pDialog:Lcom/gemini/play/MyProgressDialog$Builder;

    const v1, 0x7f0b0061

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyProgressDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyProgressDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/gemini/play/LoadlibsView$1;

    invoke-direct {v2}, Lcom/gemini/play/LoadlibsView$1;-><init>()V

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyProgressDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyProgressDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/gemini/play/MyProgressDialog$Builder;->create()Lcom/gemini/play/MyProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/LoadlibsView;->dialog:Lcom/gemini/play/MyProgressDialog;

    .line 57
    sget-object v0, Lcom/gemini/play/LoadlibsView;->dialog:Lcom/gemini/play/MyProgressDialog;

    invoke-virtual {v0}, Lcom/gemini/play/MyProgressDialog;->show()V

    .line 58
    new-instance v0, Lcom/gemini/play/LoadlibsView$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/LoadlibsView$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v0}, Lcom/gemini/play/LoadlibsView$2;->start()V

    .line 70
    return-void
.end method
