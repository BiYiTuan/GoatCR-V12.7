.class public Lcom/gemini/play/MyVodSelectionsView;
.super Landroid/widget/LinearLayout;
.source "MyVodSelectionsView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

.field private iface:Lcom/gemini/play/ListViewInterface;

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

.field private selgrid:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    .line 28
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->list:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090069

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    invoke-direct {p0}, Lcom/gemini/play/MyVodSelectionsView;->init()V

    .line 38
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

    .line 26
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    .line 28
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->list:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090069

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/gemini/play/MyVodSelectionsView;->init()V

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

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    .line 28
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->list:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090069

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/gemini/play/MyVodSelectionsView;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodSelectionsView;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodSelectionsView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodSelectionsView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodSelectionsView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodSelectionsView;)Lcom/gemini/play/MySimpleAdapterVodSelectionsView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodSelectionsView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f070131

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodSelectionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    .line 60
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    new-instance v1, Lcom/gemini/play/MyVodSelectionsView$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodSelectionsView$1;-><init>(Lcom/gemini/play/MyVodSelectionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    new-instance v1, Lcom/gemini/play/MyVodSelectionsView$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodSelectionsView$2;-><init>(Lcom/gemini/play/MyVodSelectionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 96
    invoke-virtual {p0}, Lcom/gemini/play/MyVodSelectionsView;->init_list()V

    .line 98
    return-void
.end method


# virtual methods
.method public hideSelectionsView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v4, :cond_0

    .line 152
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 153
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 154
    new-instance v1, Lcom/gemini/play/MyVodSelectionsView$4;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodSelectionsView$4;-><init>(Lcom/gemini/play/MyVodSelectionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 172
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodSelectionsView;->setFocusable(Z)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodSelectionsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodSelectionsView;->setFocusable(Z)V

    .line 178
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodSelectionsView;->setVisibility(I)V

    goto :goto_0
.end method

.method public init_list()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 184
    new-instance v0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    iget-object v1, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodSelectionsView;->list:Ljava/util/ArrayList;

    const v3, 0x7f090068

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ItemView"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ItemTitle"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    .line 189
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    new-instance v1, Lcom/gemini/play/MyVodSelectionsView$5;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodSelectionsView$5;-><init>(Lcom/gemini/play/MyVodSelectionsView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 205
    return-void

    .line 184
    :array_0
    .array-data 4
        0x7f070022
        0x7f07001a
    .end array-data
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 250
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 251
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 252
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView;->selgrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocusFromTouch()Z

    .line 253
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/gemini/play/MyVodSelectionsView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 258
    return-void
.end method

.method public set_list(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "urls"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 209
    const-string v5, "\\|"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "urlss":[Ljava/lang/String;
    iget-object v5, p0, Lcom/gemini/play/MyVodSelectionsView;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 213
    const/4 v3, 0x0

    .line 215
    .local v3, "selectindex":I
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 217
    aget-object v5, v4, v0

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "item":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 220
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "ItemId"

    aget-object v6, v1, v9

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v5, "ItemUrl"

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v5, "ItemView"

    const v6, 0x7f0a004e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v5, "ItemTitle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    const v8, 0x7f0b008d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyVodSelectionsView;->_this:Landroid/content/Context;

    const v8, 0x7f0b008e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v5, p0, Lcom/gemini/play/MyVodSelectionsView;->list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-eqz p2, :cond_1

    aget-object v5, v1, v9

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    move v3, v0

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "item":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    invoke-virtual {v5, v3}, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->setSeclection(I)V

    .line 235
    iget-object v5, p0, Lcom/gemini/play/MyVodSelectionsView;->adapter:Lcom/gemini/play/MySimpleAdapterVodSelectionsView;

    invoke-virtual {v5}, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->notifyDataSetChanged()V

    .line 236
    return-void
.end method

.method public showSelectionsView(Lcom/gemini/play/VodListStatus;I)V
    .locals 1
    .param p1, "s"    # Lcom/gemini/play/VodListStatus;
    .param p2, "collect"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gemini/play/MyVodSelectionsView;->showSelectionsView(Lcom/gemini/play/VodListStatus;ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public showSelectionsView(Lcom/gemini/play/VodListStatus;ILjava/lang/String;)V
    .locals 5
    .param p1, "s"    # Lcom/gemini/play/VodListStatus;
    .param p2, "collect"    # I
    .param p3, "num"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/gemini/play/MyVodSelectionsView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p1, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, p3}, Lcom/gemini/play/MyVodSelectionsView;->set_list(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodSelectionsView;->setVisibility(I)V

    .line 116
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v4, :cond_1

    .line 118
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 119
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 120
    new-instance v1, Lcom/gemini/play/MyVodSelectionsView$3;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodSelectionsView$3;-><init>(Lcom/gemini/play/MyVodSelectionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodSelectionsView;->setFocusable(Z)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodSelectionsView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 143
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodSelectionsView;->setFocusable(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/gemini/play/MyVodSelectionsView;->listFocus()V

    goto :goto_0
.end method
