.class public Lcom/gemini/play/MyVodTypeView;
.super Landroid/widget/LinearLayout;
.source "MyVodTypeView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private channelHandler:Landroid/os/Handler;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private listview:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    .line 33
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 111
    new-instance v0, Lcom/gemini/play/MyVodTypeView$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodTypeView$1;-><init>(Lcom/gemini/play/MyVodTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->channelHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090082

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView;->init()V

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

    .line 31
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    .line 33
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 111
    new-instance v0, Lcom/gemini/play/MyVodTypeView$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodTypeView$1;-><init>(Lcom/gemini/play/MyVodTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->channelHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090082

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView;->init()V

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

    .line 31
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    .line 33
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 111
    new-instance v0, Lcom/gemini/play/MyVodTypeView$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodTypeView$1;-><init>(Lcom/gemini/play/MyVodTypeView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView;->channelHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090082

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodTypeView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodTypeView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/gemini/play/MyVodTypeView;->inputPasswordView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodTypeView;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/MyVodTypeView;->selectItem(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/play/MyVodTypeView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 18

    .prologue
    .line 148
    const v2, 0x7f0700db

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gemini/play/MyVodTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyVodTypeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060088

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 151
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 153
    const v2, 0x7f0700db

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gemini/play/MyVodTypeView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 154
    .local v9, "listview":Landroid/widget/ListView;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v10, "map0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemId"

    const-string v4, "0"

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "ItemView"

    const v4, 0x7f0a0052

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v2, v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "ItemTitle"

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :goto_0
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v11, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemId"

    const-string v4, "1"

    invoke-virtual {v11, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v2, "ItemView"

    const v4, 0x7f0a0053

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v2, v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 174
    const-string v2, "ItemTitle"

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :goto_1
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v12, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemId"

    const-string v4, "2"

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v2, "ItemView"

    const v4, 0x7f0a0054

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v2, v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_2

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 187
    const-string v2, "ItemTitle"

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :goto_2
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v13, "map3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemId"

    const-string v4, "3"

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "ItemView"

    const v4, 0x7f0a0055

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v2, v2

    const/4 v4, 0x4

    if-lt v2, v4, :cond_3

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 199
    const-string v2, "ItemTitle"

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_3
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v14, "map4":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemId"

    const-string v4, "4"

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v2, "ItemView"

    const v4, 0x7f0a0056

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "ItemTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v15, "map5":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemId"

    const-string v4, "5"

    invoke-virtual {v15, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "ItemView"

    const v4, 0x7f0a0057

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v2, "ItemTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v16, "map6":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemId"

    const-string v4, "6"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v2, "ItemView"

    const v4, 0x7f0a0002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v2, "ItemTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v1, Lcom/gemini/play/MySimpleAdapterVodTypeView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f090080

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v17, "ItemView"

    aput-object v17, v5, v6

    const/4 v6, 0x1

    const-string v17, "ItemTitle"

    aput-object v17, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-direct/range {v1 .. v6}, Lcom/gemini/play/MySimpleAdapterVodTypeView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 229
    .local v1, "adapter":Lcom/gemini/play/MySimpleAdapterVodTypeView;
    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    new-instance v2, Lcom/gemini/play/MyVodTypeView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/gemini/play/MyVodTypeView$2;-><init>(Lcom/gemini/play/MyVodTypeView;)V

    invoke-virtual {v1, v2}, Lcom/gemini/play/MySimpleAdapterVodTypeView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyVodTypeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060088

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 246
    .local v8, "drawable1":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, v8}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 248
    new-instance v2, Lcom/gemini/play/MyVodTypeView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/gemini/play/MyVodTypeView$3;-><init>(Lcom/gemini/play/MyVodTypeView;)V

    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 261
    new-instance v2, Lcom/gemini/play/MyVodTypeView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/gemini/play/MyVodTypeView$4;-><init>(Lcom/gemini/play/MyVodTypeView;Landroid/widget/ListView;)V

    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    new-instance v2, Lcom/gemini/play/MyVodTypeView$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/gemini/play/MyVodTypeView$5;-><init>(Lcom/gemini/play/MyVodTypeView;)V

    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 338
    return-void

    .line 164
    .end local v1    # "adapter":Lcom/gemini/play/MySimpleAdapterVodTypeView;
    .end local v8    # "drawable1":Landroid/graphics/drawable/Drawable;
    .end local v11    # "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "map3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "map4":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "map5":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "map6":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v2, "ItemTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v5, 0x7f0b00dc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 177
    .restart local v11    # "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v2, "ItemTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v5, 0x7f0b00dd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 190
    .restart local v12    # "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v2, "ItemTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v5, 0x7f0b00de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 202
    .restart local v13    # "map3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const-string v2, "ItemTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v5, 0x7f0b00df

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 224
    nop

    :array_0
    .array-data 4
        0x7f070022
        0x7f07001a
    .end array-data
.end method

.method private inputPasswordView(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 343
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 345
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 346
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 347
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 349
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/MyVodTypeView$6;

    invoke-direct {v4, p0, v2, p1}, Lcom/gemini/play/MyVodTypeView$6;-><init>(Lcom/gemini/play/MyVodTypeView;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView;->_this:Landroid/content/Context;

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 371
    return-void
.end method

.method private selectItem(ILjava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    invoke-interface {v0, p1, p2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 142
    return-void
.end method


# virtual methods
.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 376
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 377
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 378
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 379
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 380
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 385
    return-void
.end method
