.class public Lcom/gemini/play/MyHomeBar2;
.super Landroid/widget/LinearLayout;
.source "MyHomeBar2.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private animation:Landroid/view/animation/TranslateAnimation;

.field private barindex:I

.field private focus_drawable:Landroid/graphics/drawable/Drawable;

.field private iface:Lcom/gemini/play/LauncherInterface;

.field private mlayout:Landroid/widget/LinearLayout;

.field private pDialog:Landroid/app/ProgressDialog;

.field private styles:[Ljava/lang/String;

.field private t:[Landroid/widget/TextView;

.field private textfocuse:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    .line 43
    iput v3, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    .line 44
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->iface:Lcom/gemini/play/LauncherInterface;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->focus_drawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    .line 52
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090037

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    invoke-direct {p0}, Lcom/gemini/play/MyHomeBar2;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    .line 43
    iput v3, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    .line 44
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->iface:Lcom/gemini/play/LauncherInterface;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->focus_drawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    .line 59
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090037

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    invoke-direct {p0}, Lcom/gemini/play/MyHomeBar2;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    .line 43
    iput v3, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    .line 44
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->iface:Lcom/gemini/play/LauncherInterface;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->focus_drawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    .line 66
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090037

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    invoke-direct {p0}, Lcom/gemini/play/MyHomeBar2;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyHomeBar2;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 37
    iget v0, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    return v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyHomeBar2;I)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/gemini/play/MyHomeBar2;->getOpenIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyHomeBar2;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyHomeBar2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/MyHomeBar2;->download_defined(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/gemini/play/MyHomeBar2;)Lcom/gemini/play/LauncherInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->iface:Lcom/gemini/play/LauncherInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/play/MyHomeBar2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gemini/play/MyHomeBar2;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/gemini/play/MyHomeBar2;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/gemini/play/MyHomeBar2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/MyHomeBar2;->getDataSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private download_defined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v4, 0x0

    .line 315
    .local v4, "mApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 318
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 320
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 321
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_0

    .line 325
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 351
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_1
    return-void

    .line 318
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v6, 0x7f0b0078

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 333
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v6, 0x7f0b0079

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 334
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v6, 0x7f0b0083

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/gemini/play/MyHomeBar2$3;

    invoke-direct {v6, p0, v0, p2}, Lcom/gemini/play/MyHomeBar2$3;-><init>(Lcom/gemini/play/MyHomeBar2;Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v6, 0x7f0b0032

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/gemini/play/MyHomeBar2$4;

    invoke-direct {v6, p0, v0}, Lcom/gemini/play/MyHomeBar2$4;-><init>(Lcom/gemini/play/MyHomeBar2;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method private getDataSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "strPath"    # Ljava/lang/String;
    .param p2, "Updatename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 392
    const-string v17, "Tag"

    const-string v18, "error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 397
    :cond_0
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 399
    .local v10, "myURL":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 400
    .local v4, "conn":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 401
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    .line 402
    .local v6, "fileSize":I
    if-gtz v6, :cond_1

    .line 404
    const-string v17, "Tag"

    const-string v18, "error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 410
    .local v8, "is":Ljava/io/InputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "UpdateActivity strPath:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 411
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/a.apk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 412
    .local v16, "savePathString":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v9, "myTempFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 414
    .local v13, "path":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "UpdateActivity APK:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 417
    const-string v2, "a.apk"

    .line 418
    .local v2, "FileStream":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 419
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 420
    .local v3, "buf":[B
    const/4 v12, 0x0

    .line 423
    .local v12, "numreads":I
    :goto_1
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 424
    .local v11, "numread":I
    if-gtz v11, :cond_2

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ProgressDialog;->cancel()V

    .line 437
    const-string v17, "a"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/gemini/play/MyHomeBar2;->installFile(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    :try_start_0
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_2
    const-string v17, "UpdateActivity Download Finish"

    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v3, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 429
    add-int/2addr v12, v11

    .line 430
    int-to-double v0, v12

    move-wide/from16 v18, v0

    int-to-double v0, v6

    move-wide/from16 v20, v0

    div-double v14, v18, v20

    .line 431
    .local v14, "pre":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v14

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1

    .line 443
    .end local v14    # "pre":D
    :catch_0
    move-exception v5

    .line 445
    .local v5, "ex":Ljava/lang/Exception;
    const-string v17, "Tag"

    const-string v18, "error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getOpenIndex(I)I
    .locals 2
    .param p1, "barindex"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "live"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "vod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    const/4 v0, 0x2

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    const/4 v0, 0x5

    goto :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    const/4 v0, 0x3

    goto :goto_0

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    const/4 v0, 0x4

    goto :goto_0

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "defined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 306
    const/4 v0, 0x6

    goto :goto_0

    .line 307
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 74
    const v6, 0x7f0700c1

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyHomeBar2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/gemini/play/MyHomeBar2;->mlayout:Landroid/widget/LinearLayout;

    .line 76
    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    const v6, 0x7f070148

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyHomeBar2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v10

    .line 77
    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    const v6, 0x7f070149

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyHomeBar2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v9

    .line 78
    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    const v6, 0x7f07014a

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyHomeBar2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v11

    .line 79
    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    const v6, 0x7f07014b

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyHomeBar2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v12

    .line 80
    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    const v6, 0x7f07014c

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyHomeBar2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v7, v13

    .line 83
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jufeng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v11

    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v8, 0x7f0b0077

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    sget-object v6, Lcom/gemini/play/MGplayer;->style:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_1

    .line 88
    const-string v6, "live|vod|back|setting|exit"

    sput-object v6, Lcom/gemini/play/MGplayer;->style:Ljava/lang/String;

    .line 90
    :cond_1
    sget-object v6, Lcom/gemini/play/MGplayer;->style:Ljava/lang/String;

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cxiptv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/gemini/custom/cxiptv;->need_moatv:Z

    if-nez v6, :cond_2

    .line 92
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    const-string v7, "app"

    aput-object v7, v6, v9

    .line 94
    :cond_2
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    array-length v6, v6

    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    array-length v7, v7

    if-lt v6, v7, :cond_3

    .line 96
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-direct {p0, v6, v7}, Lcom/gemini/play/MyHomeBar2;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 97
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-direct {p0, v6, v7}, Lcom/gemini/play/MyHomeBar2;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v11

    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-direct {p0, v6, v7}, Lcom/gemini/play/MyHomeBar2;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 99
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v12

    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v7, v7, v12

    invoke-direct {p0, v6, v7}, Lcom/gemini/play/MyHomeBar2;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 100
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v13

    iget-object v7, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    aget-object v7, v7, v13

    invoke-direct {p0, v6, v7}, Lcom/gemini/play/MyHomeBar2;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 103
    :cond_3
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 105
    .local v5, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v3

    .line 107
    .local v3, "rate":F
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 109
    move v1, v0

    .line 110
    .local v1, "kk":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    const/16 v7, 0x80

    const/16 v8, 0x80

    const/16 v9, 0x80

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v6, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v6, v6, 0x5

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 116
    sget v6, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v6, v6, 0x8

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 117
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v0

    new-instance v7, Lcom/gemini/play/MyHomeBar2$1;

    invoke-direct {v7, p0, v1}, Lcom/gemini/play/MyHomeBar2$1;-><init>(Lcom/gemini/play/MyHomeBar2;I)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "kk":I
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/gemini/play/MyHomeBar2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 145
    .local v4, "resources":Landroid/content/res/Resources;
    const v6, 0x7f0a0044

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/gemini/play/MyHomeBar2;->focus_drawable:Landroid/graphics/drawable/Drawable;

    .line 147
    const v6, 0x7f0700a4

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyHomeBar2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    .line 148
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 149
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v6, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v6, v6, 0x5

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 150
    sget v6, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v6, v6, 0x8

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 151
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v10

    const v7, 0x7f0a0017

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 154
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v10

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "spain1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 158
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v6, v6, v10

    const-string v7, "\u5168\u7403\u76f4\u64ad"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_5
    return-void
.end method

.method private installFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "Updatename"    # Ljava/lang/String;

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 457
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v1, "application/vnd.android.package-archive"

    .line 461
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 462
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Landroid/widget/TextView;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v1, "live"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v1, "vod"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_2
    const-string v1, "back"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v2, 0x7f0b007c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_3
    const-string v1, "app"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jhome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    const-string v1, "\uc751\uc6a9"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    :cond_4
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :cond_5
    const-string v1, "setting"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 278
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v2, 0x7f0b007d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_6
    const-string v1, "exit"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 280
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 281
    :cond_7
    const-string v1, "defined"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "\\*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "defineds":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 286
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public selectIndex(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x80

    const/4 v6, 0x0

    .line 164
    iget v4, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    sub-int v3, p1, v4

    .line 165
    .local v3, "step":I
    if-nez v3, :cond_0

    .line 211
    :goto_0
    return-void

    .line 168
    :cond_0
    sget v4, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v2, v4, 0x5

    .line 169
    .local v2, "len":I
    const/4 v0, 0x0

    .line 171
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    if-lez v3, :cond_1

    .line 173
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    iget v4, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    mul-int/2addr v4, v2

    int-to-float v4, v4

    mul-int v5, p1, v2

    int-to-float v5, v5

    invoke-direct {v0, v4, v5, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 179
    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :goto_1
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_2
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 181
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 182
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    .end local v1    # "ii":I
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    iget v4, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    mul-int/2addr v4, v2

    int-to-float v4, v4

    mul-int v5, p1, v2

    int-to-float v5, v5

    invoke-direct {v0, v4, v5, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    .line 185
    .restart local v1    # "ii":I
    :cond_2
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 187
    new-instance v4, Lcom/gemini/play/MyHomeBar2$2;

    invoke-direct {v4, p0, p1}, Lcom/gemini/play/MyHomeBar2$2;-><init>(Lcom/gemini/play/MyHomeBar2;I)V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 206
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 207
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar2;->textfocuse:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iput p1, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    goto :goto_0
.end method

.method public selectafter()V
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    .line 221
    .local v0, "index":I
    add-int/lit8 v0, v0, -0x1

    .line 222
    if-gez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyHomeBar2;->selectIndex(I)V

    .line 226
    return-void
.end method

.method public selectenter()V
    .locals 5

    .prologue
    .line 242
    iget v2, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    invoke-direct {p0, v2}, Lcom/gemini/play/MyHomeBar2;->getOpenIndex(I)I

    move-result v1

    .line 243
    .local v1, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "styles["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    iget v4, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2;->styles:[Ljava/lang/String;

    iget v3, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    aget-object v2, v2, v3

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "defineds":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 249
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-direct {p0, v2, v3}, Lcom/gemini/play/MyHomeBar2;->download_defined(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v0    # "defineds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2;->iface:Lcom/gemini/play/LauncherInterface;

    invoke-interface {v2, v1}, Lcom/gemini/play/LauncherInterface;->callback(I)V

    goto :goto_0
.end method

.method public selectpre()V
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lcom/gemini/play/MyHomeBar2;->barindex:I

    .line 231
    .local v0, "index":I
    add-int/lit8 v0, v0, 0x1

    .line 232
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->t:[Landroid/widget/TextView;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 235
    :cond_0
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyHomeBar2;->selectIndex(I)V

    .line 236
    return-void
.end method

.method public setInterface(Lcom/gemini/play/LauncherInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/LauncherInterface;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2;->iface:Lcom/gemini/play/LauncherInterface;

    .line 216
    return-void
.end method

.method public showUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    .line 358
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 359
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 361
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 363
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2;->_this:Landroid/content/Context;

    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/MyHomeBar2$5;

    invoke-direct {v2, p0}, Lcom/gemini/play/MyHomeBar2$5;-><init>(Lcom/gemini/play/MyHomeBar2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateActivity strPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 373
    new-instance v0, Lcom/gemini/play/MyHomeBar2$6;

    invoke-direct {v0, p0, p1}, Lcom/gemini/play/MyHomeBar2$6;-><init>(Lcom/gemini/play/MyHomeBar2;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar2$6;->start()V

    .line 384
    return-void
.end method
