.class public Lcom/gemini/play/MyBackTypeView;
.super Landroid/widget/LinearLayout;
.source "MyBackTypeView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private listview:Landroid/widget/ListView;

.field private passwordOK:Z

.field public rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyBackTypeView;->passwordOK:Z

    .line 298
    new-instance v0, Lcom/gemini/play/MyBackTypeView$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackTypeView$5;-><init>(Lcom/gemini/play/MyBackTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090028

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/gemini/play/MyBackTypeView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyBackTypeView;->passwordOK:Z

    .line 298
    new-instance v0, Lcom/gemini/play/MyBackTypeView$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackTypeView$5;-><init>(Lcom/gemini/play/MyBackTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090028

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/gemini/play/MyBackTypeView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyBackTypeView;->passwordOK:Z

    .line 298
    new-instance v0, Lcom/gemini/play/MyBackTypeView$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackTypeView$5;-><init>(Lcom/gemini/play/MyBackTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090028

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/gemini/play/MyBackTypeView;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyBackTypeView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackTypeView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyBackTypeView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackTypeView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyBackTypeView;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyBackTypeView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/MyBackTypeView;->sendMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/play/MyBackTypeView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyBackTypeView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/gemini/play/MyBackTypeView;->inputPasswordView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/gemini/play/MyBackTypeView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackTypeView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 62
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/Roboto-Bold.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 63
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v1

    .line 65
    .local v1, "rate":F
    const v3, 0x7f0700db

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    .line 67
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f060061

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyBackTypeView$1;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackTypeView$1;-><init>(Lcom/gemini/play/MyBackTypeView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 91
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyBackTypeView$2;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackTypeView$2;-><init>(Lcom/gemini/play/MyBackTypeView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyBackTypeView$3;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackTypeView$3;-><init>(Lcom/gemini/play/MyBackTypeView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 117
    return-void
.end method

.method private inputPasswordView(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 362
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 363
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 364
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 366
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/MyBackTypeView$6;

    invoke-direct {v4, p0, v2, p1}, Lcom/gemini/play/MyBackTypeView$6;-><init>(Lcom/gemini/play/MyBackTypeView;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 390
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 391
    return-void
.end method

.method private sendMessage(ILjava/lang/String;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "d"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 291
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    iput p1, v1, Landroid/os/Message;->what:I

    .line 295
    iget-object v2, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 339
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 355
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 345
    :pswitch_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->hideTypeList()V

    .line 346
    iget-object v2, p0, Lcom/gemini/play/MyBackTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 350
    :pswitch_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 351
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->listFocus()V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hideTypeList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->listNoFocus()V

    .line 212
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyBackTypeView;->setFocusable(Z)V

    .line 244
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyBackTypeView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 269
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 270
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 271
    iget-object v1, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 272
    return-void
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 250
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 251
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 252
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 253
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 254
    return-void
.end method

.method public listNoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 259
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 260
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 319
    const-string v2, "TypeView onKeyDown"

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 321
    packed-switch p1, :pswitch_data_0

    .line 334
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 325
    :pswitch_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->hideTypeList()V

    .line 326
    iget-object v2, p0, Lcom/gemini/play/MyBackTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 330
    :pswitch_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 331
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->listFocus()V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/gemini/play/MyBackTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 265
    return-void
.end method

.method public set_list()V
    .locals 11

    .prologue
    const v5, 0x7f0a004e

    const/4 v10, 0x2

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v8, "map0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemID"

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "ItemIcon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "ItemName"

    iget-object v3, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-static {}, Lcom/gemini/play/BACKplayer;->playbackTypeSize()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 132
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemID"

    invoke-static {v6}, Lcom/gemini/play/BACKplayer;->playbackTypeIdGet(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "ItemIcon"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "ItemName"

    invoke-static {v6}, Lcom/gemini/play/BACKplayer;->playbackTypeNameGet(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lcom/gemini/play/MySimpleAdapterTypeListView;

    iget-object v1, p0, Lcom/gemini/play/MyBackTypeView;->_this:Landroid/content/Context;

    const v3, 0x7f09006e

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "ItemIcon"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "ItemName"

    aput-object v9, v4, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterTypeListView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 143
    .local v0, "adapter":Lcom/gemini/play/MySimpleAdapterTypeListView;
    iget-object v1, p0, Lcom/gemini/play/MyBackTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    new-instance v1, Lcom/gemini/play/MyBackTypeView$4;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyBackTypeView$4;-><init>(Lcom/gemini/play/MyBackTypeView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterTypeListView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 158
    return-void

    .line 139
    :array_0
    .array-data 4
        0x7f07000a
        0x7f070016
    .end array-data
.end method

.method public showTypeList()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->showViewTimeout()V

    .line 165
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->listFocus()V

    .line 167
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->set_list()V

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyBackTypeView;->setVisibility(I)V

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyBackTypeView;->setFocusable(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->listFocus()V

    goto :goto_0
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/gemini/play/MyBackTypeView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackTypeView;->hideViewTimeout()V

    .line 280
    return-void
.end method
