.class public Lcom/gemini/goat/ValidateActivity;
.super Landroid/app/Activity;
.source "ValidateActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/goat/ValidateActivity$MyWebViewClient;,
        Lcom/gemini/goat/ValidateActivity$PluginInterface;
    }
.end annotation


# static fields
.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field private interfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private is_showed_network_setting:Z

.field private load_progressbar:Lcom/gemini/play/NumberProgressBar;

.field private load_textview:Landroid/widget/TextView;

.field private loader_finish:Z

.field private loading_text:Landroid/widget/TextView;

.field private loading_text2:Landroid/widget/TextView;

.field private mPlugin:Lcom/gemini/goat/ValidateActivity$PluginInterface;

.field private mWebSettings:Landroid/webkit/WebSettings;

.field private mWebView:Landroid/webkit/WebView;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field private siminfo:Lcom/gemini/play/PhoneInfo;

.field private wHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gemini/goat/ValidateActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    .line 95
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->mWebSettings:Landroid/webkit/WebSettings;

    .line 96
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->mPlugin:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    .line 97
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->loading_text:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->loading_text2:Landroid/widget/TextView;

    .line 100
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    .line 102
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->load_progressbar:Lcom/gemini/play/NumberProgressBar;

    .line 103
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->load_textview:Landroid/widget/TextView;

    .line 104
    iput-boolean v1, p0, Lcom/gemini/goat/ValidateActivity;->is_showed_network_setting:Z

    .line 106
    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->siminfo:Lcom/gemini/play/PhoneInfo;

    .line 108
    iput-boolean v1, p0, Lcom/gemini/goat/ValidateActivity;->loader_finish:Z

    .line 1895
    new-instance v0, Lcom/gemini/goat/ValidateActivity$7;

    invoke-direct {v0, p0}, Lcom/gemini/goat/ValidateActivity$7;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->wHandler:Landroid/os/Handler;

    .line 2200
    new-instance v0, Lcom/gemini/goat/ValidateActivity$10;

    invoke-direct {v0, p0}, Lcom/gemini/goat/ValidateActivity$10;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    iput-object v0, p0, Lcom/gemini/goat/ValidateActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/goat/ValidateActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/gemini/goat/ValidateActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/gemini/goat/ValidateActivity;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->loading_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/gemini/goat/ValidateActivity;->networkActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/gemini/goat/ValidateActivity;->updateActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/NumberProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->load_progressbar:Lcom/gemini/play/NumberProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gemini/goat/ValidateActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->wHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/goat/ValidateActivity;)Lcom/gemini/play/PhoneInfo;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->siminfo:Lcom/gemini/play/PhoneInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/gemini/goat/ValidateActivity;->loginActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->loading_text2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/gemini/goat/ValidateActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->load_textview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/gemini/goat/ValidateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/gemini/goat/ValidateActivity;->loader_finish:Z

    return v0
.end method

.method static synthetic access$902(Lcom/gemini/goat/ValidateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/goat/ValidateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/gemini/goat/ValidateActivity;->loader_finish:Z

    return p1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 2154
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->downloadImage_thread()V

    .line 2155
    return-void
.end method

.method private loginActivity()V
    .locals 2

    .prologue
    .line 1934
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1935
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/gemini/goat/LoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1936
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/gemini/goat/ValidateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1937
    return-void
.end method

.method private networkActivity()V
    .locals 3

    .prologue
    .line 2158
    iget-boolean v1, p0, Lcom/gemini/goat/ValidateActivity;->is_showed_network_setting:Z

    if-nez v1, :cond_0

    .line 2159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gemini/goat/ValidateActivity;->is_showed_network_setting:Z

    .line 2161
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2162
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b00c2

    invoke-virtual {p0, v1}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 2163
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/goat/ValidateActivity$8;

    invoke-direct {v2, p0}, Lcom/gemini/goat/ValidateActivity$8;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 2169
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/goat/ValidateActivity$9;

    invoke-direct {v2, p0}, Lcom/gemini/goat/ValidateActivity$9;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 2174
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 2198
    .end local v0    # "builder":Lcom/gemini/play/MyDialog$Builder;
    :cond_0
    return-void
.end method

.method private updateActivity()V
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->wHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/gemini/play/UpdateActivity;->showUpdate(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 2151
    return-void
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 515
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 518
    sget-object v1, Lcom/gemini/goat/ValidateActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 521
    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 522
    if-eqz v0, :cond_1

    .line 524
    sget-object v1, Lcom/gemini/goat/ValidateActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 526
    :cond_1
    return-void
.end method


# virtual methods
.method public isExistsInterface(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 644
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    const/4 v1, 0x1

    .line 648
    :goto_1
    return v1

    .line 644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2241
    const/16 v0, 0x14

    if-ne v0, p2, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 2242
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlClear()V

    .line 2243
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2245
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2246
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v4, 0x7f09004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->setContentView(I)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 120
    invoke-static/range {p0 .. p0}, Lcom/memo/sdk/MemoTVCastSDK;->init(Landroid/content/Context;)V

    .line 122
    const-string v4, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v27

    .line 123
    .local v27, "permissionCheck":I
    if-eqz v27, :cond_0

    .line 124
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.READ_PHONE_STATE"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 127
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->verifyStoragePermissions(Landroid/app/Activity;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/vov/vitamio/Vitamio;->isInitialized(Landroid/content/Context;)Z

    move-result v29

    .line 135
    .local v29, "ret":Z
    if-nez v29, :cond_2

    .line 511
    .end local v29    # "ret":Z
    :cond_1
    :goto_0
    return-void

    .line 139
    .restart local v29    # "ret":Z
    :cond_2
    new-instance v4, Lcom/gemini/play/PhoneInfo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/gemini/play/PhoneInfo;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->siminfo:Lcom/gemini/play/PhoneInfo;

    .line 141
    const-string v4, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager;

    .line 142
    .local v13, "am":Landroid/app/ActivityManager;
    invoke-virtual {v13}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->saveInterface()V

    .line 147
    const v4, 0x7f07017e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    .line 148
    const v4, 0x7f0700e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text2:Landroid/widget/TextView;

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 152
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->t(Landroid/app/Activity;)I

    move-result v29

    .line 153
    .local v29, "ret":I
    if-eqz v29, :cond_5

    .line 155
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_3

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text2:Landroid/widget/TextView;

    const v5, 0x7f0b003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_3
    const/4 v4, 0x2

    move/from16 v0, v29

    if-ne v0, v4, :cond_4

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text2:Landroid/widget/TextView;

    const v5, 0x7f0b003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 161
    :cond_4
    const/4 v4, 0x3

    move/from16 v0, v29

    if-ne v0, v4, :cond_1

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text2:Landroid/widget/TextView;

    const v5, 0x7f0b003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 168
    :cond_5
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "szysx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dhtv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "familytv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 169
    :cond_6
    const v4, 0x7f0700e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/gemini/play/NumberProgressBar;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->load_progressbar:Lcom/gemini/play/NumberProgressBar;

    .line 170
    const v4, 0x7f0700e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/gemini/play/NumberProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 175
    :goto_1
    const v4, 0x7f0700e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->load_textview:Landroid/widget/TextView;

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->load_progressbar:Lcom/gemini/play/NumberProgressBar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/gemini/play/NumberProgressBar;->setProgress(I)V

    .line 179
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v33

    .line 180
    .local v33, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v28

    .line 182
    .local v28, "rate":F
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fszj"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->load_progressbar:Lcom/gemini/play/NumberProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->load_textview:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    const v4, 0x7f0700e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text:Landroid/widget/TextView;

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v5, v5, v28

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text:Landroid/widget/TextView;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/FrameLayout$LayoutParams;

    .line 192
    .local v23, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x50

    move-object/from16 v0, v23

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x32

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->loading_text:Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .end local v23    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quanxing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->load_progressbar:Lcom/gemini/play/NumberProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->load_textview:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/gemini/play/LocalService;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 203
    sget v4, Lcom/gemini/play/MGplayer;->start_tvbus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 204
    new-instance v4, Lcom/tvbus/engine/TvbusApi;

    invoke-direct {v4}, Lcom/tvbus/engine/TvbusApi;-><init>()V

    sput-object v4, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    .line 205
    sget-object v4, Lcom/gemini/play/MGplayer;->tvbuser:Lcom/tvbus/engine/TvbusApi;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/tvbus/engine/TvbusApi;->startTVBusService(Landroid/content/Context;)V

    .line 222
    :cond_9
    sget v4, Lcom/gemini/play/MGplayer;->start_tvbus_vod:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 226
    :cond_a
    new-instance v4, Lcom/gemini/goat/ValidateActivity$PluginInterface;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/gemini/goat/ValidateActivity$PluginInterface;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mPlugin:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebSettings:Landroid/webkit/WebSettings;

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/gemini/goat/ValidateActivity$MyWebViewClient;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/gemini/goat/ValidateActivity;->mPlugin:Lcom/gemini/goat/ValidateActivity$PluginInterface;

    const-string v6, "Authentication"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 232
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quanxing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-static {}, Lcom/gemini/play/MGplayer;->gu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 234
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 240
    sget v4, Lcom/gemini/play/MGplayer;->screenWidth:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4094000000000000L    # 1280.0

    div-double/2addr v4, v6

    sget v6, Lcom/gemini/play/MGplayer;->screenHeight:I

    int-to-double v6, v6

    const-wide v8, 0x4086800000000000L    # 720.0

    div-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_e

    sget v4, Lcom/gemini/play/MGplayer;->screenHeight:I

    int-to-double v4, v4

    const-wide v6, 0x4086800000000000L    # 720.0

    div-double v24, v4, v6

    .line 241
    .local v24, "mWebrate":D
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview rate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v24

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ValidateActivity.screenWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/gemini/play/MGplayer;->screenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v24

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/gemini/goat/ValidateActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/gemini/goat/ValidateActivity$1;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 312
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "loadimage"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 313
    .local v22, "loadimage":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadimage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 314
    if-eqz v22, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/background/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/gemini/goat/ValidateActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/background/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 316
    .local v20, "imagePath":Ljava/lang/String;
    new-instance v26, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    .local v26, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x4

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 318
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static/range {v20 .. v20}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v15, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 319
    .local v15, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v15}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 339
    .end local v15    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v20    # "imagePath":Ljava/lang/String;
    .end local v26    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_3
    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_13

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MGplayer.tv.gete = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v5}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 342
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    .line 483
    :goto_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cxiptv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "badatv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hanatv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    :cond_c
    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->switchLanguage(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 172
    .end local v22    # "loadimage":Ljava/lang/String;
    .end local v24    # "mWebrate":D
    .end local v28    # "rate":F
    .end local v33    # "typeFace":Landroid/graphics/Typeface;
    :cond_d
    const v4, 0x7f0700e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/gemini/play/NumberProgressBar;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/gemini/goat/ValidateActivity;->load_progressbar:Lcom/gemini/play/NumberProgressBar;

    .line 173
    const v4, 0x7f0700e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/gemini/play/NumberProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/gemini/play/NumberProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 240
    .restart local v28    # "rate":F
    .restart local v33    # "typeFace":Landroid/graphics/Typeface;
    :cond_e
    sget v4, Lcom/gemini/play/MGplayer;->screenWidth:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4094000000000000L    # 1280.0

    div-double v24, v4, v6

    goto/16 :goto_2

    .line 322
    .restart local v22    # "loadimage":Ljava/lang/String;
    .restart local v24    # "mWebrate":D
    :cond_f
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jhome"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/gemini/custom/jhome;->bg_default:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    const v5, 0x7f0a002e

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 331
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 324
    :cond_10
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quanxing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    const v5, 0x7f0a0040

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    goto :goto_5

    .line 326
    :cond_11
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "badatv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    goto :goto_5

    .line 329
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    const v5, 0x7f0a0007

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    goto :goto_5

    .line 343
    :cond_13
    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_14
    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    .line 344
    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gemini"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 345
    :cond_15
    const-string v4, ""

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->playlistkey(Ljava/lang/String;)I

    .line 346
    const-string v4, "0000"

    const-string v5, "ALL"

    invoke-static {v4, v5}, Lcom/gemini/play/LIVEplayer;->typePush(Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MGplayer.tv.gete() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v5}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 348
    sget-object v4, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v4}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 349
    .local v16, "eurl":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_16

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MGplayer.tv.gete = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v5}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 352
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    .line 354
    :cond_16
    const/4 v4, 0x1

    const-string v5, "ALL"

    const-string v6, ""

    sget-object v7, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v7}, Lcom/gemini/play/MGplayer;->gete()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, "0000"

    const-string v10, ""

    const-string v11, "hd"

    const-string v12, ""

    invoke-static/range {v4 .. v12}, Lcom/gemini/play/LIVEplayer;->urlPush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v21, "intent":Landroid/content/Intent;
    const-class v4, Lcom/gemini/play/LivePlayerActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 360
    const/4 v4, 0x0

    sput-boolean v4, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    goto/16 :goto_4

    .line 361
    .end local v16    # "eurl":Ljava/lang/String;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_17
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quanxing2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 363
    const-string v19, "http://temp.stacbak.net:18006/gemini-iptv/"

    .line 364
    .local v19, "home_url":Ljava/lang/String;
    sget v4, Lcom/gemini/custom/quanxing;->version:I

    sput v4, Lcom/gemini/play/MGplayer;->current_version:I

    .line 365
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 366
    .local v30, "settings":Landroid/content/SharedPreferences;
    const-string v4, "home_page"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 367
    .local v17, "home_page":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 370
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    const-string v5, "http://moonhd.8866.org:18006/gemini-iptv/"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v4, "home_page2"

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 372
    .local v18, "home_page2":Ljava/lang/String;
    if-eqz v18, :cond_18

    .line 373
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_18
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v31, Landroid/os/Handler;

    invoke-direct/range {v31 .. v31}, Landroid/os/Handler;-><init>()V

    .line 377
    .local v31, "timeHander":Landroid/os/Handler;
    new-instance v32, Lcom/gemini/goat/ValidateActivity$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/gemini/goat/ValidateActivity$2;-><init>(Lcom/gemini/goat/ValidateActivity;Landroid/os/Handler;)V

    .line 390
    .local v32, "timeRunnable":Ljava/lang/Runnable;
    const-wide/16 v4, 0x7530

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 392
    .end local v17    # "home_page":Ljava/lang/String;
    .end local v18    # "home_page2":Ljava/lang/String;
    .end local v19    # "home_url":Ljava/lang/String;
    .end local v30    # "settings":Landroid/content/SharedPreferences;
    .end local v31    # "timeHander":Landroid/os/Handler;
    .end local v32    # "timeRunnable":Ljava/lang/Runnable;
    :cond_19
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quanxing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 393
    const-string v19, "http://zeus.eatuo.com:9800/qxiptv.asp"

    .line 394
    .restart local v19    # "home_url":Ljava/lang/String;
    sget v4, Lcom/gemini/custom/quanxing;->version:I

    sput v4, Lcom/gemini/play/MGplayer;->current_version:I

    .line 395
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 396
    .restart local v30    # "settings":Landroid/content/SharedPreferences;
    const-string v4, "home_page"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 397
    .restart local v17    # "home_page":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 400
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v4, "home_page2"

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 402
    .restart local v18    # "home_page2":Ljava/lang/String;
    if-eqz v18, :cond_1a

    .line 403
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_1a
    new-instance v31, Landroid/os/Handler;

    invoke-direct/range {v31 .. v31}, Landroid/os/Handler;-><init>()V

    .line 406
    .restart local v31    # "timeHander":Landroid/os/Handler;
    new-instance v32, Lcom/gemini/goat/ValidateActivity$3;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/gemini/goat/ValidateActivity$3;-><init>(Lcom/gemini/goat/ValidateActivity;Landroid/os/Handler;)V

    .line 419
    .restart local v32    # "timeRunnable":Ljava/lang/Runnable;
    const-wide/16 v4, 0x7530

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 421
    .end local v17    # "home_page":Ljava/lang/String;
    .end local v18    # "home_page2":Ljava/lang/String;
    .end local v19    # "home_url":Ljava/lang/String;
    .end local v30    # "settings":Landroid/content/SharedPreferences;
    .end local v31    # "timeHander":Landroid/os/Handler;
    .end local v32    # "timeRunnable":Ljava/lang/Runnable;
    :cond_1b
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zeus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 422
    const-string v19, "http://haohd.qwaszxpro.com:19800/qxiptv_16.asp"

    .line 423
    .restart local v19    # "home_url":Ljava/lang/String;
    sget v4, Lcom/gemini/custom/quanxing;->version:I

    sput v4, Lcom/gemini/play/MGplayer;->current_version:I

    .line 424
    const-string v4, "data"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/gemini/play/MGplayer;->MyGetSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 425
    .restart local v30    # "settings":Landroid/content/SharedPreferences;
    const-string v4, "home_page"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 426
    .restart local v17    # "home_page":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 429
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    const-string v5, "http://android.webok.net:19800/qxiptv_16.asp"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const-string v4, "home_page2"

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 431
    .restart local v18    # "home_page2":Ljava/lang/String;
    if-eqz v18, :cond_1c

    .line 432
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_1c
    sget-object v4, Lcom/gemini/play/MGplayer;->epgList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v31, Landroid/os/Handler;

    invoke-direct/range {v31 .. v31}, Landroid/os/Handler;-><init>()V

    .line 436
    .restart local v31    # "timeHander":Landroid/os/Handler;
    new-instance v32, Lcom/gemini/goat/ValidateActivity$4;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/gemini/goat/ValidateActivity$4;-><init>(Lcom/gemini/goat/ValidateActivity;Landroid/os/Handler;)V

    .line 449
    .restart local v32    # "timeRunnable":Ljava/lang/Runnable;
    const-wide/16 v4, 0x7530

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 452
    .end local v17    # "home_page":Ljava/lang/String;
    .end local v18    # "home_page2":Ljava/lang/String;
    .end local v19    # "home_url":Ljava/lang/String;
    .end local v30    # "settings":Landroid/content/SharedPreferences;
    .end local v31    # "timeHander":Landroid/os/Handler;
    .end local v32    # "timeRunnable":Ljava/lang/Runnable;
    :cond_1d
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->isMobile(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 453
    new-instance v14, Lcom/gemini/play/MyDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .local v14, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v4, 0x7f0b00ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 455
    const v4, 0x7f0b0083

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gemini/goat/ValidateActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/gemini/goat/ValidateActivity$5;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    invoke-virtual {v14, v4, v5}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 462
    const v4, 0x7f0b00bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gemini/goat/ValidateActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/gemini/goat/ValidateActivity$6;-><init>(Lcom/gemini/goat/ValidateActivity;)V

    invoke-virtual {v14, v4, v5}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 470
    invoke-virtual {v14}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gemini/play/MyDialog;->show()V

    goto/16 :goto_4

    .line 472
    .end local v14    # "builder":Lcom/gemini/play/MyDialog$Builder;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/goat/ValidateActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->getWebView(Landroid/webkit/WebView;)V

    goto/16 :goto_4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2224
    sparse-switch p1, :sswitch_data_0

    .line 2237
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2226
    :sswitch_0
    invoke-static {p0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 2227
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 2230
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/gemini/play/LocalService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/gemini/goat/ValidateActivity;->stopService(Landroid/content/Intent;)Z

    .line 2231
    invoke-virtual {p0}, Lcom/gemini/goat/ValidateActivity;->finish()V

    .line 2232
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 2233
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 2224
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 2249
    packed-switch p1, :pswitch_data_0

    .line 2258
    :cond_0
    :goto_0
    return-void

    .line 2251
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2220
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public saveInterface()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLoadingImage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTClanucherActivity2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetTimeNow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetMember"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetTimeNowPRC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCAddType2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetType2Pass"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetGeminiTiemer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetDownload"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetOneScroll"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetEveryVideo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLoadWebView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCEnableHlsPlugIn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCAddPlayback"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCAddPlayback2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCAddPlaybackType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetUdp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCKey"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetNumber"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetEpgStyle"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCAudoBoot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetEpgList"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetCpuName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCCheckTimeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCVodSetColumn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLiveWatermark"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLivePlayLeftRight"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLivePlayShowScroll"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLivePlayShowScroll2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetAdLiveImage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLiveWatermarkSite"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLivePlaylistIcon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCAddUrl2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCVodCount"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLiveWatermarkSite2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCUpdateTip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCStartPlayback"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetTimeZonePRC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetAdLiveImageSite"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCStartForcetv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLanguage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLoadingAccountImage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCOutputKeyBroad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCCheckVideoTimes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetValue"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetValue"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetProgress"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLiveUiType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLoadingImage2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLoadingAccountImage2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetPhoneNumber"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetProvidersName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetEpgBackground2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetIMSI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetIMEI"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLookiptv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCMD5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCJson"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSendServerCmdCookies"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSendServerCmd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSendServerCookies"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSendServerCmdCookies2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSendServerCmd2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSendServerCookies2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLookiptvEverySend2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetProgress2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetVodEpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetAppID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetUUID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetSign"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetShowLivePlaylist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetIP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCShowUpdateDialog"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCPostServerCmdAndCookies"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCPostServerCmd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCPostServerCmd2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCPostServerCookies"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLivePlaytimeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLookiptvMacCpuid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetWifiAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetControlPlayer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCPlaybackDaytime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetTimeEndPRC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLookiptvUserAndKey"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetCpuNameInfo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCHttpsrequest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSendHttpsServerCmdCookies2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSendHttpsServerCmdCookies"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCHttpsSendServerCmd2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCHttpsSendServerCmd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCHttpsSendServerCookies2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCHttpsSendServerCookies"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCHttpsPostServerCmdAndCookies"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCHttpsPostServerCmd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCHttpsPostServerCookies"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCMenu"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCLoadLIbs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetSystemID"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetVodShowPage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCUpnp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCSetLiveShowMAC"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity;->interfaceList:Ljava/util/ArrayList;

    const-string v1, "CTCGetLocalKey"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    return-void
.end method

.method public switchLanguage(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/gemini/goat/ValidateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 530
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/gemini/goat/ValidateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 531
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 532
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 533
    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 534
    return-void
.end method
