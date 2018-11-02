.class public Lcom/gemini/play/MyVodClassifyView;
.super Landroid/widget/LinearLayout;
.source "MyVodClassifyView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private isShow:Z

.field private listview:Landroid/widget/ListView;

.field public rHandler:Landroid/os/Handler;

.field private selectid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->selectid:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyVodClassifyView;->isShow:Z

    .line 281
    new-instance v0, Lcom/gemini/play/MyVodClassifyView$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodClassifyView$7;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->rHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/gemini/play/MyVodClassifyView;->_this:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090073

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    invoke-direct {p0}, Lcom/gemini/play/MyVodClassifyView;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->selectid:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyVodClassifyView;->isShow:Z

    .line 281
    new-instance v0, Lcom/gemini/play/MyVodClassifyView$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodClassifyView$7;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->rHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/gemini/play/MyVodClassifyView;->_this:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090073

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/gemini/play/MyVodClassifyView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->selectid:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyVodClassifyView;->isShow:Z

    .line 281
    new-instance v0, Lcom/gemini/play/MyVodClassifyView$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodClassifyView$7;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->rHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/gemini/play/MyVodClassifyView;->_this:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090073

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/gemini/play/MyVodClassifyView;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodClassifyView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassifyView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodClassifyView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassifyView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 65
    iget-object v3, p0, Lcom/gemini/play/MyVodClassifyView;->_this:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/Roboto-Bold.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 66
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v1

    .line 68
    .local v1, "rate":F
    const v3, 0x7f0700db

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodClassifyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    .line 70
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v3, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyVodClassifyView$1;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodClassifyView$1;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 80
    iget-object v3, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyVodClassifyView$2;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodClassifyView$2;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object v3, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyVodClassifyView$3;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodClassifyView$3;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 323
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 314
    :sswitch_1
    const-string v0, "list dispatchKeyEvent"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 315
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 316
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->listFocus()V

    .line 317
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->showViewTimeout()V

    .line 318
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public hideClassifyList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/gemini/play/MyVodClassifyView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/gemini/play/MyVodClassifyView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->listNoFocus()V

    .line 201
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :goto_0
    return-void

    .line 206
    :cond_1
    iput-boolean v3, p0, Lcom/gemini/play/MyVodClassifyView;->isShow:Z

    .line 208
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v5, :cond_2

    .line 210
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-direct {v0, v4, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 211
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 212
    new-instance v1, Lcom/gemini/play/MyVodClassifyView$6;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodClassifyView$6;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodClassifyView;->setFocusable(Z)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodClassifyView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 235
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodClassifyView;->setFocusable(Z)V

    .line 236
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodClassifyView;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/gemini/play/MyVodClassifyView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 267
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 268
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 269
    iget-object v1, p0, Lcom/gemini/play/MyVodClassifyView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 270
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/gemini/play/MyVodClassifyView;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 249
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 250
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 251
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 252
    return-void
.end method

.method public listNoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 257
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 258
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/gemini/play/MyVodClassifyView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 263
    return-void
.end method

.method public set_list(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columner["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].type_type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 109
    const/4 v8, 0x0

    .line 110
    .local v8, "type_names":[Ljava/lang/String;
    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_0

    .line 111
    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 113
    :cond_0
    if-eqz v8, :cond_1

    .line 115
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v1, v8

    if-ge v6, v1, :cond_1

    .line 117
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemID"

    add-int/lit8 v3, v6, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "ItemIcon"

    const v3, 0x7f0a004e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "ItemName"

    aget-object v3, v8, v6

    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 124
    .end local v6    # "i":I
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Lcom/gemini/play/MySimpleAdapterTypeListView;

    iget-object v1, p0, Lcom/gemini/play/MyVodClassifyView;->_this:Landroid/content/Context;

    const v3, 0x7f09002b

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "ItemIcon"

    aput-object v9, v4, v5

    const-string v5, "ItemName"

    aput-object v5, v4, v10

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterTypeListView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 128
    .local v0, "adapter":Lcom/gemini/play/MySimpleAdapterTypeListView;
    iget-object v1, p0, Lcom/gemini/play/MyVodClassifyView;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    new-instance v1, Lcom/gemini/play/MyVodClassifyView$4;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodClassifyView$4;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterTypeListView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 143
    return-void

    .line 124
    nop

    :array_0
    .array-data 4
        0x7f07000a
        0x7f070016
    .end array-data
.end method

.method public showClassifyList(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->showViewTimeout()V

    .line 150
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->listFocus()V

    .line 152
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 155
    :cond_0
    iput-boolean v4, p0, Lcom/gemini/play/MyVodClassifyView;->isShow:Z

    .line 157
    invoke-virtual {p0, p1}, Lcom/gemini/play/MyVodClassifyView;->set_list(I)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodClassifyView;->setVisibility(I)V

    .line 161
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v4, :cond_1

    .line 163
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 164
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 165
    new-instance v1, Lcom/gemini/play/MyVodClassifyView$5;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodClassifyView$5;-><init>(Lcom/gemini/play/MyVodClassifyView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 183
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassifyView;->setFocusable(Z)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodClassifyView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 187
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassifyView;->setFocusable(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->listFocus()V

    goto :goto_0
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassifyView;->hideViewTimeout()V

    .line 278
    return-void
.end method
