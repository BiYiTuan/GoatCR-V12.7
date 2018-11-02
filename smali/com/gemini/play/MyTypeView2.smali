.class public Lcom/gemini/play/MyTypeView2;
.super Landroid/widget/LinearLayout;
.source "MyTypeView2.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private listview:Lcom/gemini/play/MyPickerView;

.field public onTypePressed:Lcom/gemini/play/ListViewInterface;

.field public rHandler:Landroid/os/Handler;

.field private selectid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 30
    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->selectid:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/gemini/play/MyTypeView2$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView2$2;-><init>(Lcom/gemini/play/MyTypeView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    .line 253
    new-instance v0, Lcom/gemini/play/MyTypeView2$3;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView2$3;-><init>(Lcom/gemini/play/MyTypeView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->rHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090070

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/gemini/play/MyTypeView2;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 30
    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->selectid:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/gemini/play/MyTypeView2$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView2$2;-><init>(Lcom/gemini/play/MyTypeView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    .line 253
    new-instance v0, Lcom/gemini/play/MyTypeView2$3;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView2$3;-><init>(Lcom/gemini/play/MyTypeView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->rHandler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090070

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    invoke-direct {p0}, Lcom/gemini/play/MyTypeView2;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 30
    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->selectid:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/gemini/play/MyTypeView2$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView2$2;-><init>(Lcom/gemini/play/MyTypeView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    .line 253
    new-instance v0, Lcom/gemini/play/MyTypeView2$3;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyTypeView2$3;-><init>(Lcom/gemini/play/MyTypeView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyTypeView2;->rHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090070

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    invoke-direct {p0}, Lcom/gemini/play/MyTypeView2;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/gemini/play/MyTypeView2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/gemini/play/MyTypeView2;->selectid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyTypeView2;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView2;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyTypeView2;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView2;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/MyTypeView2;->sendMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/play/MyTypeView2;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/gemini/play/MyTypeView2;->inputPasswordView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/gemini/play/MyTypeView2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyTypeView2;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/Roboto-Bold.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 58
    .local v1, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    .line 60
    .local v0, "rate":F
    const v2, 0x7f0700db

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyPickerView;

    iput-object v2, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    .line 61
    iget-object v2, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyPickerView;->setFontSize(I)V

    .line 62
    iget-object v2, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    invoke-virtual {v2, v1}, Lcom/gemini/play/MyPickerView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v2, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    iget-object v3, p0, Lcom/gemini/play/MyTypeView2;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyPickerView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 69
    return-void
.end method

.method private inputPasswordView(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 275
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 277
    iget-object v3, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 279
    iget-object v3, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/MyTypeView2$4;

    invoke-direct {v4, p0, v2, p1}, Lcom/gemini/play/MyTypeView2$4;-><init>(Lcom/gemini/play/MyTypeView2;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    iget-object v3, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 302
    return-void
.end method

.method private sendMessage(ILjava/lang/String;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "d"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 246
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 249
    iput p1, v1, Landroid/os/Message;->what:I

    .line 250
    iget-object v2, p0, Lcom/gemini/play/MyTypeView2;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method


# virtual methods
.method public hideTypeList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView2;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0, v2}, Lcom/gemini/play/MyTypeView2;->setFocusable(Z)V

    .line 183
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyTypeView2;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyPickerView;->setFocusable(Z)V

    .line 196
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyPickerView;->setFocusableInTouchMode(Z)V

    .line 197
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPickerView;->requestFocus()Z

    .line 198
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPickerView;->requestFocusFromTouch()Z

    .line 199
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    .line 240
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 219
    sparse-switch p1, :sswitch_data_0

    .line 227
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 223
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyTypeView2;->selectid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/gemini/play/MyTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gemini/play/MyTypeView2;->selectid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/gemini/play/MyTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 191
    return-void
.end method

.method public set_list()V
    .locals 7

    .prologue
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v3, "map0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemID"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v4, "ItemName"

    iget-object v5, p0, Lcom/gemini/play/MyTypeView2;->_this:Landroid/content/Context;

    const v6, 0x7f0b00a4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemID"

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v4, "ItemName"

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->typeNameGet(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v4, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    invoke-virtual {v4, v1}, Lcom/gemini/play/MyPickerView;->setData(Ljava/util/ArrayList;)V

    .line 89
    iget-object v4, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    new-instance v5, Lcom/gemini/play/MyTypeView2$1;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyTypeView2$1;-><init>(Lcom/gemini/play/MyTypeView2;)V

    invoke-virtual {v4, v5}, Lcom/gemini/play/MyPickerView;->setOnSelectListener(Lcom/gemini/play/MyPickerView$onSelectListener;)V

    .line 98
    iget-object v4, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    invoke-virtual {v4}, Lcom/gemini/play/MyPickerView;->getFocus()V

    .line 99
    iget-object v4, p0, Lcom/gemini/play/MyTypeView2;->listview:Lcom/gemini/play/MyPickerView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/gemini/play/MyPickerView;->setSelected(I)V

    .line 100
    return-void
.end method

.method public showTypeList()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView2;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView2;->set_list()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyTypeView2;->setVisibility(I)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyTypeView2;->setFocusable(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/gemini/play/MyTypeView2;->listFocus()V

    goto :goto_0
.end method
