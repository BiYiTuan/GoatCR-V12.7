.class public Lcom/gemini/play/MyListView2;
.super Landroid/widget/LinearLayout;
.source "MyListView2.java"


# static fields
.field public static currentID:Ljava/lang/String;


# instance fields
.field private _this:Landroid/content/Context;

.field private adapter:Lcom/gemini/play/MySimpleAdapterLiveGridView;

.field private gridview:Landroid/widget/GridView;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private isShow:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public rHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/gemini/play/MyListView2;->currentID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->_this:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyListView2;->isShow:Z

    .line 28
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView2;->list:Ljava/util/ArrayList;

    .line 32
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->adapter:Lcom/gemini/play/MySimpleAdapterLiveGridView;

    .line 332
    new-instance v0, Lcom/gemini/play/MyListView2$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyListView2$4;-><init>(Lcom/gemini/play/MyListView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyListView2;->rHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/gemini/play/MyListView2;->_this:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090044

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/gemini/play/MyListView2;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->_this:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyListView2;->isShow:Z

    .line 28
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView2;->list:Ljava/util/ArrayList;

    .line 32
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->adapter:Lcom/gemini/play/MySimpleAdapterLiveGridView;

    .line 332
    new-instance v0, Lcom/gemini/play/MyListView2$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyListView2$4;-><init>(Lcom/gemini/play/MyListView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyListView2;->rHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/gemini/play/MyListView2;->_this:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090044

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/gemini/play/MyListView2;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->_this:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyListView2;->isShow:Z

    .line 28
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView2;->list:Ljava/util/ArrayList;

    .line 32
    iput-object v1, p0, Lcom/gemini/play/MyListView2;->adapter:Lcom/gemini/play/MySimpleAdapterLiveGridView;

    .line 332
    new-instance v0, Lcom/gemini/play/MyListView2$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyListView2$4;-><init>(Lcom/gemini/play/MyListView2;)V

    iput-object v0, p0, Lcom/gemini/play/MyListView2;->rHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/gemini/play/MyListView2;->_this:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090044

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    invoke-direct {p0}, Lcom/gemini/play/MyListView2;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyListView2;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyListView2;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyListView2;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyListView2;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method private bitmapcache_init()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 60
    iget-object v2, p0, Lcom/gemini/play/MyListView2;->_this:Landroid/content/Context;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 61
    .local v1, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    .line 63
    .local v0, "rate":F
    const v2, 0x7f0700a9

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyListView2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    .line 69
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->set_init()V

    .line 71
    iget-object v2, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    new-instance v3, Lcom/gemini/play/MyListView2$1;

    invoke-direct {v3, p0}, Lcom/gemini/play/MyListView2$1;-><init>(Lcom/gemini/play/MyListView2;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    new-instance v3, Lcom/gemini/play/MyListView2$2;

    invoke-direct {v3, p0}, Lcom/gemini/play/MyListView2$2;-><init>(Lcom/gemini/play/MyListView2;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method public collect_list()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 377
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 406
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 388
    :sswitch_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 389
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->listFocus()V

    goto :goto_0

    .line 393
    :sswitch_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 394
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->listFocus()V

    goto :goto_0

    .line 399
    :sswitch_3
    const-string v1, "list dispatchKeyEvent"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 400
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 401
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->listFocus()V

    goto :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCurrentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/gemini/play/MyListView2;->currentID:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/gemini/play/MyListView2;->currentID:Ljava/lang/String;

    .line 354
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public hidePlayList()V
    .locals 1

    .prologue
    .line 285
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyListView2;->setVisibility(I)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyListView2;->isShow:Z

    .line 287
    return-void
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 300
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 301
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 302
    iget-object v1, p0, Lcom/gemini/play/MyListView2;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 303
    return-void
.end method

.method public hide_ad_image()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/gemini/play/MyListView2;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 321
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 322
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 323
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 324
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocusFromTouch()Z

    .line 325
    return-void
.end method

.method public setCurrentID(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 360
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MyListView2;->currentID:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setCurrentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 365
    sput-object p1, Lcom/gemini/play/MyListView2;->currentID:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/gemini/play/MyListView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 330
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 189
    return-void
.end method

.method public set_ad_Image(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "ad"    # Landroid/widget/ImageView;

    .prologue
    .line 121
    return-void
.end method

.method public set_init()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 129
    new-instance v0, Lcom/gemini/play/MySimpleAdapterLiveGridView;

    iget-object v1, p0, Lcom/gemini/play/MyListView2;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyListView2;->list:Ljava/util/ArrayList;

    const v3, 0x7f090040

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ItemId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ItemText"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterLiveGridView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyListView2;->adapter:Lcom/gemini/play/MySimpleAdapterLiveGridView;

    .line 134
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/gemini/play/MyListView2;->adapter:Lcom/gemini/play/MySimpleAdapterLiveGridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    return-void

    .line 129
    :array_0
    .array-data 4
        0x7f07000b
        0x7f070018
    .end array-data
.end method

.method public set_list()V
    .locals 9

    .prologue
    .line 144
    iget-object v4, p0, Lcom/gemini/play/MyListView2;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlSize()I

    move-result v3

    .line 146
    .local v3, "size":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set_list size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 150
    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->idGet(I)I

    move-result v1

    .line 153
    .local v1, "id":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemText"

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->nameGet(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v4, "ItemId"

    const-string v5, "%03d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v4, p0, Lcom/gemini/play/MyListView2;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "id":I
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->set_list_notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method public set_list(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->set_list()V

    .line 140
    return-void
.end method

.method public set_list_notifyDataSetChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v2, p0, Lcom/gemini/play/MyListView2;->adapter:Lcom/gemini/play/MySimpleAdapterLiveGridView;

    invoke-virtual {v2}, Lcom/gemini/play/MySimpleAdapterLiveGridView;->notifyDataSetChanged()V

    .line 174
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "num":I
    sget-boolean v2, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-eqz v2, :cond_1

    .line 178
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v1}, Lcom/gemini/play/LIVEplayer;->getVideoNum(IZ)I

    move-result v0

    .line 181
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_list currentid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 184
    .end local v0    # "num":I
    :cond_0
    return-void

    .line 180
    .restart local v0    # "num":I
    :cond_1
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-boolean v3, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v2, v1}, Lcom/gemini/play/LIVEplayer;->getVideoNum(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public showPlayList(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->set_list()V

    .line 249
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->showViewTimeout()V

    .line 251
    iput-boolean v2, p0, Lcom/gemini/play/MyListView2;->isShow:Z

    .line 253
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->listFocus()V

    .line 254
    invoke-virtual {p0, v3}, Lcom/gemini/play/MyListView2;->setVisibility(I)V

    .line 255
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p1, :cond_4

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "num":I
    sget-boolean v4, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-eqz v4, :cond_2

    .line 259
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v3}, Lcom/gemini/play/LIVEplayer;->getVideoNum(IZ)I

    move-result v1

    .line 263
    :goto_1
    move v0, v1

    .line 264
    .local v0, "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1 LIVEplayer.getCurrentID():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "setSelection:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/gemini/play/MyListView2;->gridview:Landroid/widget/GridView;

    new-instance v4, Lcom/gemini/play/MyListView2$3;

    invoke-direct {v4, p0, v0}, Lcom/gemini/play/MyListView2$3;-><init>(Lcom/gemini/play/MyListView2;I)V

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 279
    .end local v0    # "i":I
    .end local v1    # "num":I
    :cond_1
    :goto_2
    invoke-virtual {p0, v3}, Lcom/gemini/play/MyListView2;->setVisibility(I)V

    .line 280
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->listFocus()V

    goto :goto_0

    .line 261
    .restart local v1    # "num":I
    :cond_2
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget-boolean v5, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v5, :cond_3

    :goto_3
    invoke-static {v4, v2}, Lcom/gemini/play/LIVEplayer;->getVideoNum(IZ)I

    move-result v1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_3

    .line 274
    .end local v1    # "num":I
    :cond_4
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne p1, v2, :cond_1

    .line 276
    invoke-virtual {p0, v3}, Lcom/gemini/play/MyListView2;->setSelection(I)V

    goto :goto_2
.end method

.method public showPlayList(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gemini/play/MyListView2;->showPlayList(Ljava/lang/String;Z)V

    .line 199
    return-void
.end method

.method public showPlayList(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "check_type_selection"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->set_list()V

    .line 210
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->showViewTimeout()V

    .line 212
    iput-boolean v1, p0, Lcom/gemini/play/MyListView2;->isShow:Z

    .line 214
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->listFocus()V

    .line 216
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "i":I
    sget-boolean v3, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-eqz v3, :cond_1

    .line 221
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p1, v2}, Lcom/gemini/play/LIVEplayer;->getVideoNum(ILjava/lang/String;Z)I

    move-result v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show playlist type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " LIVEplayer.getCurrentID():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Selection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 230
    :goto_1
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyListView2;->setSelection(I)V

    .line 236
    .end local v0    # "i":I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/gemini/play/MyListView2;->setVisibility(I)V

    .line 237
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->listFocus()V

    goto :goto_0

    .line 226
    .restart local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-boolean v4, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v4, :cond_2

    :goto_3
    invoke-static {v3, p1, v1}, Lcom/gemini/play/LIVEplayer;->getVideoNum(ILjava/lang/String;Z)I

    move-result v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no show playlist type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " LIVEplayer.getCurrentID():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Selection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 226
    goto :goto_3

    .line 233
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/gemini/play/MyListView2;->setSelection(I)V

    goto :goto_2
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    :cond_0
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/gemini/play/MyListView2;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyListView2;->hideViewTimeout()V

    .line 311
    return-void
.end method

.method public show_ad_image()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method
