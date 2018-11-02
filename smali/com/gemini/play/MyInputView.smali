.class public Lcom/gemini/play/MyInputView;
.super Landroid/widget/LinearLayout;
.source "MyInputView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private adapter:Lcom/gemini/play/MySimpleAdapterInputView;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private inputgrid:Landroid/widget/GridView;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 30
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    .line 31
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->adapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyInputView;->list:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/gemini/play/MyInputView;->_this:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09003b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    invoke-direct {p0}, Lcom/gemini/play/MyInputView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 30
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    .line 31
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->adapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyInputView;->list:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/gemini/play/MyInputView;->_this:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09003b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/gemini/play/MyInputView;->init()V

    .line 47
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

    .line 29
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 30
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    .line 31
    iput-object v0, p0, Lcom/gemini/play/MyInputView;->adapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyInputView;->list:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/gemini/play/MyInputView;->_this:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09003b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/gemini/play/MyInputView;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyInputView;)Lcom/gemini/play/MySimpleAdapterInputView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyInputView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->adapter:Lcom/gemini/play/MySimpleAdapterInputView;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 58
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    .line 59
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    new-instance v1, Lcom/gemini/play/MyInputView$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyInputView$1;-><init>(Lcom/gemini/play/MyInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    new-instance v1, Lcom/gemini/play/MyInputView$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyInputView$2;-><init>(Lcom/gemini/play/MyInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 88
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 90
    invoke-virtual {p0}, Lcom/gemini/play/MyInputView;->init_list()V

    .line 92
    return-void
.end method


# virtual methods
.method public hideInputView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 131
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 132
    new-instance v1, Lcom/gemini/play/MyInputView$4;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyInputView$4;-><init>(Lcom/gemini/play/MyInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyInputView;->setFocusable(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyInputView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 152
    return-void
.end method

.method public init_list()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 156
    new-instance v0, Lcom/gemini/play/MySimpleAdapterInputView;

    iget-object v1, p0, Lcom/gemini/play/MyInputView;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyInputView;->list:Ljava/util/ArrayList;

    const v3, 0x7f090039

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemChar"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f070007

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterInputView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyInputView;->adapter:Lcom/gemini/play/MySimpleAdapterInputView;

    .line 158
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/gemini/play/MyInputView;->adapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->adapter:Lcom/gemini/play/MySimpleAdapterInputView;

    new-instance v1, Lcom/gemini/play/MyInputView$5;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyInputView$5;-><init>(Lcom/gemini/play/MyInputView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterInputView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 174
    return-void
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 192
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 193
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 194
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 195
    iget-object v0, p0, Lcom/gemini/play/MyInputView;->inputgrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocusFromTouch()Z

    .line 196
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/gemini/play/MyInputView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 201
    return-void
.end method

.method public set_list()V
    .locals 5

    .prologue
    .line 178
    iget-object v3, p0, Lcom/gemini/play/MyInputView;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 179
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    .line 180
    .local v2, "t":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemChar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v3, p0, Lcom/gemini/play/MyInputView;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/gemini/play/MyInputView;->adapter:Lcom/gemini/play/MySimpleAdapterInputView;

    invoke-virtual {v3}, Lcom/gemini/play/MySimpleAdapterInputView;->notifyDataSetChanged()V

    .line 188
    return-void
.end method

.method public showInputView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/gemini/play/MyInputView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyInputView;->set_list()V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyInputView;->setVisibility(I)V

    .line 104
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 105
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 106
    new-instance v1, Lcom/gemini/play/MyInputView$3;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyInputView$3;-><init>(Lcom/gemini/play/MyInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyInputView;->setFocusable(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyInputView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
