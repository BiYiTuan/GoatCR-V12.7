.class public Lcom/gemini/play/MyListView1;
.super Landroid/widget/LinearLayout;
.source "MyListView1.java"


# static fields
.field public static currentID:Ljava/lang/String;


# instance fields
.field private _this:Landroid/content/Context;

.field private ad_image:Landroid/widget/ImageView;

.field private adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

.field private all_list:Ljava/util/ArrayList;
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

.field private bitmapCache:Lcom/gemini/play/LruBitmapCache;

.field private current_type:Ljava/lang/String;

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

.field private listdleft:Landroid/widget/Button;

.field private listdright:Landroid/widget/Button;

.field private lists_type:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/listStatus;",
            ">;"
        }
    .end annotation
.end field

.field private listtext:Landroid/widget/TextView;

.field private listview:Landroid/widget/ListView;

.field public rHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    .line 44
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listdleft:Landroid/widget/Button;

    .line 46
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listdright:Landroid/widget/Button;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->all_list:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->lists_type:Ljava/util/ArrayList;

    .line 54
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    .line 57
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->iface:Lcom/gemini/play/ListViewInterface;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyListView1;->isShow:Z

    .line 62
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    .line 66
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->ad_image:Landroid/widget/ImageView;

    .line 902
    new-instance v0, Lcom/gemini/play/MyListView1$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyListView1$12;-><init>(Lcom/gemini/play/MyListView1;)V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/gemini/play/MyListView1;->init()V

    .line 110
    return-void

    .line 107
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    .line 44
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listdleft:Landroid/widget/Button;

    .line 46
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listdright:Landroid/widget/Button;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->all_list:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->lists_type:Ljava/util/ArrayList;

    .line 54
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    .line 57
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->iface:Lcom/gemini/play/ListViewInterface;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyListView1;->isShow:Z

    .line 62
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    .line 66
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->ad_image:Landroid/widget/ImageView;

    .line 902
    new-instance v0, Lcom/gemini/play/MyListView1$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyListView1$12;-><init>(Lcom/gemini/play/MyListView1;)V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    :goto_0
    invoke-direct {p0}, Lcom/gemini/play/MyListView1;->init()V

    .line 96
    return-void

    .line 93
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    .line 44
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listdleft:Landroid/widget/Button;

    .line 46
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->listdright:Landroid/widget/Button;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->all_list:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->lists_type:Ljava/util/ArrayList;

    .line 54
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    .line 57
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->iface:Lcom/gemini/play/ListViewInterface;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/MyListView1;->isShow:Z

    .line 62
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    .line 66
    iput-object v1, p0, Lcom/gemini/play/MyListView1;->ad_image:Landroid/widget/ImageView;

    .line 902
    new-instance v0, Lcom/gemini/play/MyListView1$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyListView1$12;-><init>(Lcom/gemini/play/MyListView1;)V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/gemini/play/MyListView1;->init()V

    .line 82
    return-void

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/gemini/play/MyListView1;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyListView1;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method private bitmapcache_init()V
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlSize()I

    move-result v1

    .line 286
    .local v1, "size":I
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "cpuinfo":Ljava/lang/String;
    const-string v2, "A20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "A20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 288
    :cond_0
    new-instance v2, Lcom/gemini/play/LruBitmapCache;

    invoke-direct {v2}, Lcom/gemini/play/LruBitmapCache;-><init>()V

    iput-object v2, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    .line 289
    :cond_1
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const v11, 0x7f0b0080

    const/high16 v10, 0x41000000    # 8.0f

    const/high16 v9, 0x40c00000    # 6.0f

    .line 114
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 115
    .local v5, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v2

    .line 117
    .local v2, "rate":F
    const v6, 0x7f0700db

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyListView1;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    .line 118
    const v6, 0x7f0700d7

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyListView1;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    .line 119
    const v6, 0x7f070093

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyListView1;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/gemini/play/MyListView1;->listdleft:Landroid/widget/Button;

    .line 120
    const v6, 0x7f070094

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyListView1;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/gemini/play/MyListView1;->listdright:Landroid/widget/Button;

    .line 121
    const v6, 0x7f07006c

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyListView1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 122
    .local v0, "buttonLayout":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "szysx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dhtv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "xtvants"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "goat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    :cond_1
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    const v7, 0x7f060061

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    mul-float v7, v10, v2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    new-instance v7, Lcom/gemini/play/MyListView1$1;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyListView1$1;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    new-instance v7, Lcom/gemini/play/MyListView1$2;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyListView1$2;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    new-instance v7, Lcom/gemini/play/MyListView1$3;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyListView1$3;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 202
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    new-instance v7, Lcom/gemini/play/MyListView1$4;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyListView1$4;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 215
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listdleft:Landroid/widget/Button;

    mul-float v7, v9, v2

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 216
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listdleft:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 217
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listdleft:Landroid/widget/Button;

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    const v8, 0x7f0b0056

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listdleft:Landroid/widget/Button;

    new-instance v7, Lcom/gemini/play/MyListView1$5;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyListView1$5;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listdright:Landroid/widget/Button;

    mul-float v7, v9, v2

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 227
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listdright:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listdright:Landroid/widget/Button;

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    const v8, 0x7f0b002e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listdright:Landroid/widget/Button;

    new-instance v7, Lcom/gemini/play/MyListView1$6;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyListView1$6;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v6, 0x7f070123

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyListView1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 246
    .local v3, "scroller":Landroid/widget/TextView;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "quanxing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    sget v6, Lcom/gemini/play/MGplayer;->leftdaysshow:I

    sput v6, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    .line 251
    :cond_2
    const-string v4, ""

    .line 252
    .local v4, "timeout":Ljava/lang/String;
    sget v6, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 255
    sget-object v6, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    const v8, 0x7f0b0082

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    :cond_3
    :goto_0
    sget-object v6, Lcom/gemini/play/MGplayer;->showliveplaylistname:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    const v8, 0x7f0b0051

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gemini/play/MGplayer;->showliveplaylistname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v6

    mul-float/2addr v6, v10

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 272
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 274
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->set_init()V

    .line 276
    invoke-direct {p0}, Lcom/gemini/play/MyListView1;->bitmapcache_init()V

    .line 277
    return-void

    .line 260
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    const v8, 0x7f0b0081

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method


# virtual methods
.method public collect_list()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 545
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    const v8, 0x7f0b00a7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    new-instance v0, Lcom/gemini/play/MyLiveCollectView;

    invoke-direct {v0}, Lcom/gemini/play/MyLiveCollectView;-><init>()V

    .line 549
    .local v0, "collecter":Lcom/gemini/play/MyLiveCollectView;
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/gemini/play/MyLiveCollectView;->parseAll(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 550
    .local v5, "status":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/UrlStatus;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 552
    .local v4, "size":I
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 554
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_6

    .line 558
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/UrlStatus;

    iget v2, v6, Lcom/gemini/play/UrlStatus;->id:I

    .line 559
    .local v2, "id":I
    sget-boolean v6, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-eq v6, v11, :cond_0

    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 561
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 563
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/UrlStatus;

    iget-object v6, v6, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 565
    const-string v7, "ItemView"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/UrlStatus;

    iget-object v6, v6, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :goto_1
    const-string v7, "ItemTitle"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/UrlStatus;

    iget-object v6, v6, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v6, "ItemId"

    const-string v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v7, "ItemUrl"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/UrlStatus;

    iget-object v6, v6, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v7, "ItemPassword"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/UrlStatus;

    iget-object v6, v6, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/UrlStatus;

    iget-object v6, v6, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    const-string v7, "hd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 578
    const-string v6, "ItemView2"

    const v7, 0x7f0a001b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :goto_2
    iget-object v6, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 568
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "turbotv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 569
    const-string v6, "ItemView"

    const v7, 0x7f0a004f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 571
    :cond_3
    const-string v6, "ItemView"

    const v7, 0x7f0a004e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 579
    :cond_4
    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->sourceGet(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 580
    const-string v6, "ItemView2"

    const v7, 0x7f0a0039

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 582
    :cond_5
    const-string v6, "ItemView2"

    const v7, 0x7f0a0043

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 588
    .end local v2    # "id":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->set_list_notifyDataSetChanged()V

    .line 589
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 951
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 953
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1087
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 970
    :sswitch_1
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 971
    .local v2, "pos":I
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 972
    .local v0, "end":I
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 973
    .local v1, "first":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "livelist down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 974
    if-lt v2, v1, :cond_1

    if-ge v2, v0, :cond_1

    .line 975
    const-string v4, "list dispatchKeyEvent"

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 976
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 977
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    goto :goto_0

    .line 980
    :cond_1
    if-le v2, v0, :cond_3

    .line 981
    const/4 v2, 0x0

    .line 986
    :goto_1
    if-le v2, v0, :cond_2

    .line 987
    const/4 v2, 0x0

    .line 989
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 990
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 991
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    goto :goto_0

    .line 983
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 997
    .end local v0    # "end":I
    .end local v1    # "first":I
    .end local v2    # "pos":I
    :sswitch_2
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 998
    .restart local v2    # "pos":I
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 999
    .restart local v0    # "end":I
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1000
    .restart local v1    # "first":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "livelist up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1001
    if-le v2, v1, :cond_4

    if-gt v2, v0, :cond_4

    .line 1002
    const-string v4, "list dispatchKeyEvent"

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1003
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1004
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    goto/16 :goto_0

    .line 1007
    :cond_4
    if-gez v2, :cond_6

    .line 1008
    move v2, v0

    .line 1013
    :goto_2
    if-gez v2, :cond_5

    .line 1014
    move v2, v0

    .line 1016
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1017
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1018
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    goto/16 :goto_0

    .line 1010
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1025
    .end local v0    # "end":I
    .end local v1    # "first":I
    .end local v2    # "pos":I
    :sswitch_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "simba"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1027
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 1028
    .restart local v2    # "pos":I
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1029
    .restart local v0    # "end":I
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1030
    .restart local v1    # "first":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "livelist up "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1031
    if-le v2, v1, :cond_7

    if-gt v2, v0, :cond_7

    .line 1032
    const-string v4, "list dispatchKeyEvent"

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1033
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 1034
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    goto/16 :goto_0

    .line 1037
    :cond_7
    if-gez v2, :cond_9

    .line 1038
    move v2, v0

    .line 1043
    :goto_3
    if-gez v2, :cond_8

    .line 1044
    move v2, v0

    .line 1046
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1047
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1048
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    goto/16 :goto_0

    .line 1040
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1055
    .end local v0    # "end":I
    .end local v1    # "first":I
    .end local v2    # "pos":I
    :sswitch_4
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "simba"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1057
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 1058
    .restart local v2    # "pos":I
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1059
    .restart local v0    # "end":I
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1060
    .restart local v1    # "first":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "livelist down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1061
    if-lt v2, v1, :cond_a

    if-ge v2, v0, :cond_a

    .line 1062
    const-string v4, "list dispatchKeyEvent"

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1063
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    goto/16 :goto_0

    .line 1067
    :cond_a
    if-le v2, v0, :cond_c

    .line 1068
    const/4 v2, 0x0

    .line 1073
    :goto_4
    if-le v2, v0, :cond_b

    .line 1074
    const/4 v2, 0x0

    .line 1076
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1077
    iget-object v4, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1078
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    goto/16 :goto_0

    .line 1070
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 953
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_3
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCurrentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    sget-object v0, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    sget-object v0, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 924
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method public hidePlayList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 799
    iget-object v1, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 842
    :goto_0
    return-void

    .line 807
    :cond_1
    iput-boolean v2, p0, Lcom/gemini/play/MyListView1;->isShow:Z

    .line 809
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyListView1;->setCurrentID(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->hide_ad_image()V

    .line 812
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v4, :cond_2

    .line 814
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 815
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 816
    new-instance v1, Lcom/gemini/play/MyListView1$11;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyListView1$11;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 835
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyListView1;->setFocusable(Z)V

    .line 836
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyListView1;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 839
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyListView1;->setVisibility(I)V

    .line 840
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->hide_ad_image()V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 870
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 871
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 872
    iget-object v1, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 873
    return-void
.end method

.method public hide_ad_image()V
    .locals 2

    .prologue
    .line 862
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->adimageSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->ad_image:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 866
    :cond_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/gemini/play/MyListView1;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 891
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 892
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 893
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 894
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 895
    return-void
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 945
    const-string v0, "listview onKeyLongPress "

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 946
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setCurrentID(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 930
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 931
    return-void
.end method

.method public setCurrentID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 935
    sput-object p1, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 936
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/gemini/play/MyListView1;->iface:Lcom/gemini/play/ListViewInterface;

    .line 900
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 610
    return-void
.end method

.method public set_ad_Image(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "ad"    # Landroid/widget/ImageView;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/gemini/play/MyListView1;->ad_image:Landroid/widget/ImageView;

    .line 282
    return-void
.end method

.method public set_init()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 293
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v7, :cond_0

    .line 295
    new-instance v0, Lcom/gemini/play/MySimpleAdapterLiveListView;

    iget-object v1, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    const v3, 0x7f090042

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemView"

    aput-object v5, v4, v8

    const-string v5, "ItemId"

    aput-object v5, v4, v7

    const-string v5, "ItemTitle"

    aput-object v5, v4, v9

    const-string v5, "ItemView2"

    aput-object v5, v4, v10

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterLiveListView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    new-instance v1, Lcom/gemini/play/MyListView1$7;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyListView1$7;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterLiveListView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 383
    return-void

    .line 302
    :cond_0
    new-instance v0, Lcom/gemini/play/MySimpleAdapterLiveListView;

    iget-object v1, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    const v3, 0x7f09003f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "ItemView"

    aput-object v5, v4, v8

    const-string v5, "ItemId"

    aput-object v5, v4, v7

    const-string v5, "ItemTitle"

    aput-object v5, v4, v9

    const-string v5, "ItemView2"

    aput-object v5, v4, v10

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterLiveListView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    goto :goto_0

    .line 295
    :array_0
    .array-data 4
        0x7f070022
        0x7f07000b
        0x7f07001a
        0x7f070025
    .end array-data

    .line 302
    :array_1
    .array-data 4
        0x7f070022
        0x7f07000b
        0x7f07001a
        0x7f070025
    .end array-data
.end method

.method public set_list()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 480
    iget-object v7, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    const v9, 0x7f0b00a4

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v7, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 482
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlSize()I

    move-result v6

    .line 483
    .local v6, "size":I
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "cpuinfo":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set_list size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 486
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_b

    .line 488
    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->idGet(I)I

    move-result v3

    .line 489
    .local v3, "id":I
    sget-boolean v7, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-eq v7, v12, :cond_0

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-ne v7, v12, :cond_4

    .line 491
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "A20"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "A20"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x64

    if-ge v6, v7, :cond_3

    .line 494
    :cond_1
    const-string v4, ""

    .line 495
    .local v4, "imagePath":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v7

    const-string v8, "quanxing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v8}, Lcom/gemini/play/MGplayer;->getPackName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/temp/icon/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->imageGet(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    :goto_1
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 504
    iget-object v7, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v7, v4}, Lcom/gemini/play/LruBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 505
    .local v0, "bit":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 507
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 509
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v7

    const-string v8, "badatv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 511
    iget-object v7, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v7, v4, v0}, Lcom/gemini/play/LruBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 519
    :cond_2
    :goto_2
    const-string v7, "ItemView"

    iget-object v8, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v8, v4}, Lcom/gemini/play/LruBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v4    # "imagePath":Ljava/lang/String;
    :cond_3
    :goto_3
    const-string v7, "ItemTitle"

    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->nameGet(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v7, "ItemId"

    const-string v8, "%03d"

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->sourceGet(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 531
    const-string v7, "ItemView2"

    const v8, 0x7f0a001b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :goto_4
    iget-object v7, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 498
    .restart local v4    # "imagePath":Ljava/lang/String;
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/icon/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->imageGet(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 516
    .restart local v0    # "bit":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v7, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    sget v8, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v8, v8, 0xc

    add-int/lit8 v8, v8, -0xa

    sget v9, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v9, v9, 0xc

    add-int/lit8 v9, v9, -0xa

    invoke-static {v0, v8, v9}, Lcom/gemini/play/MGplayer;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/gemini/play/LruBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 522
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    :cond_7
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v7

    const-string v8, "turbotv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 523
    const-string v7, "ItemView"

    const v8, 0x7f0a004f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 525
    :cond_8
    const-string v7, "ItemView"

    const v8, 0x7f0a004e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 532
    .end local v4    # "imagePath":Ljava/lang/String;
    :cond_9
    invoke-static {v2}, Lcom/gemini/play/LIVEplayer;->sourceGet(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "p"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 533
    const-string v7, "ItemView2"

    const v8, 0x7f0a0039

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 535
    :cond_a
    const-string v7, "ItemView2"

    const v8, 0x7f0a0043

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 539
    .end local v3    # "id":I
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->set_list_notifyDataSetChanged()V

    .line 541
    return-void
.end method

.method public set_list(ILjava/lang/String;)V
    .locals 15
    .param p1, "tid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 387
    if-nez p1, :cond_6

    .line 389
    invoke-static/range {p2 .. p2}, Lcom/gemini/play/LIVEplayer;->typeNameGetFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 390
    .local v9, "tname":Ljava/lang/String;
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 399
    .end local v9    # "tname":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 400
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "cpuinfo":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlSize()I

    move-result v8

    .line 403
    .local v8, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_11

    .line 405
    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->idGet(I)I

    move-result v4

    .line 406
    .local v4, "id":I
    const/4 v7, 0x0

    .line 408
    .local v7, "ret":Z
    if-nez p1, :cond_8

    .line 412
    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->typeGet(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_7

    sget-boolean v10, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    invoke-static {v4}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-boolean v10, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    :cond_0
    const/4 v7, 0x1

    .line 421
    :cond_1
    :goto_2
    const/4 v10, 0x1

    if-ne v7, v10, :cond_5

    .line 423
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "A20"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "A20"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x64

    if-ge v8, v10, :cond_4

    .line 427
    :cond_2
    const-string v5, ""

    .line 428
    .local v5, "imagePath":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v10

    const-string v11, "quanxing"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v11}, Lcom/gemini/play/MGplayer;->getPackName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/temp/icon/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->imageGet(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 432
    :goto_3
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 435
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v10, v5}, Lcom/gemini/play/LruBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 436
    .local v1, "bit":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 440
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 442
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v10

    const-string v11, "badatv"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 444
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v10, v5, v1}, Lcom/gemini/play/LruBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 453
    :cond_3
    :goto_4
    const-string v10, "ItemView"

    iget-object v11, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    invoke-virtual {v11, v5}, Lcom/gemini/play/LruBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v1    # "bit":Landroid/graphics/Bitmap;
    .end local v5    # "imagePath":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v10, "ItemTitle"

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->nameGet(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v10, "ItemId"

    const-string v11, "%03d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->idGet(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->sourceGet(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "hd"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 466
    const-string v10, "ItemView2"

    const v11, 0x7f0a001b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :goto_6
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 395
    .end local v2    # "cpuinfo":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v7    # "ret":Z
    .end local v8    # "size":I
    :cond_6
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->listtext:Landroid/widget/TextView;

    const-string v11, "Find"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 412
    .restart local v2    # "cpuinfo":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "id":I
    .restart local v7    # "ret":Z
    .restart local v8    # "size":I
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 415
    :cond_8
    const/4 v10, 0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 417
    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->nameGet(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_a

    sget-boolean v10, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_9

    invoke-static {v4}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-boolean v10, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    :cond_9
    const/4 v7, 0x1

    :goto_7
    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x0

    goto :goto_7

    .line 431
    .restart local v5    # "imagePath":Ljava/lang/String;
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/icon/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->imageGet(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 449
    .restart local v1    # "bit":Landroid/graphics/Bitmap;
    :cond_c
    iget-object v10, p0, Lcom/gemini/play/MyListView1;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    sget v11, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v11, v11, 0xc

    add-int/lit8 v11, v11, -0xa

    sget v12, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v12, v12, 0xc

    add-int/lit8 v12, v12, -0xa

    invoke-static {v1, v11, v12}, Lcom/gemini/play/MGplayer;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Lcom/gemini/play/LruBitmapCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 456
    .end local v1    # "bit":Landroid/graphics/Bitmap;
    :cond_d
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v10

    const-string v11, "turbotv"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 457
    const-string v10, "ItemView"

    const v11, 0x7f0a004f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 459
    :cond_e
    const-string v10, "ItemView"

    const v11, 0x7f0a004e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 467
    .end local v5    # "imagePath":Ljava/lang/String;
    :cond_f
    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->sourceGet(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 468
    const-string v10, "ItemView2"

    const v11, 0x7f0a0039

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 470
    :cond_10
    const-string v10, "ItemView2"

    const v11, 0x7f0a0043

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 475
    .end local v4    # "id":I
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "ret":Z
    :cond_11
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->set_list_notifyDataSetChanged()V

    .line 476
    return-void
.end method

.method public set_list_notifyDataSetChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-object v2, p0, Lcom/gemini/play/MyListView1;->adapter:Lcom/gemini/play/MySimpleAdapterLiveListView;

    invoke-virtual {v2}, Lcom/gemini/play/MySimpleAdapterLiveListView;->notifyDataSetChanged()V

    .line 595
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "num":I
    sget-boolean v2, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-eqz v2, :cond_1

    .line 599
    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v1}, Lcom/gemini/play/LIVEplayer;->getVideoNum(IZ)I

    move-result v0

    .line 602
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

    .line 603
    iget-object v1, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 605
    .end local v0    # "num":I
    :cond_0
    return-void

    .line 601
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
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 714
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 715
    sget-object v5, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sput-object v5, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 717
    iget-object v5, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 719
    :cond_0
    if-ne p1, v4, :cond_2

    .line 720
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->collect_list()V

    .line 725
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    .line 727
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->showViewTimeout()V

    .line 729
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 794
    :goto_1
    return-void

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->set_list()V

    goto :goto_0

    .line 734
    :cond_3
    iput-boolean v4, p0, Lcom/gemini/play/MyListView1;->isShow:Z

    .line 736
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    .line 737
    invoke-virtual {p0, v3}, Lcom/gemini/play/MyListView1;->setVisibility(I)V

    .line 738
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez p1, :cond_7

    .line 740
    const/4 v2, 0x0

    .line 741
    .local v2, "num":I
    sget-boolean v5, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-eqz v5, :cond_5

    .line 742
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v3}, Lcom/gemini/play/LIVEplayer;->getVideoNum(IZ)I

    move-result v2

    .line 746
    :goto_2
    move v1, v2

    .line 747
    .local v1, "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 LIVEplayer.getCurrentID():"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "setSelection:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 748
    iget-object v3, p0, Lcom/gemini/play/MyListView1;->listview:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyListView1$9;

    invoke-direct {v5, p0, v1}, Lcom/gemini/play/MyListView1$9;-><init>(Lcom/gemini/play/MyListView1;I)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 762
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_4
    :goto_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "A20"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v3, v4, :cond_8

    .line 764
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v3, Lcom/gemini/play/MGplayer;->screenWidth:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-direct {v0, v3, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 765
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 766
    new-instance v3, Lcom/gemini/play/MyListView1$10;

    invoke-direct {v3, p0}, Lcom/gemini/play/MyListView1$10;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 786
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyListView1;->setFocusable(Z)V

    .line 787
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyListView1;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 744
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    .restart local v2    # "num":I
    :cond_5
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget-boolean v6, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v6, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v5, v3}, Lcom/gemini/play/LIVEplayer;->getVideoNum(IZ)I

    move-result v2

    goto :goto_2

    .line 757
    .end local v2    # "num":I
    :cond_7
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p1, v4, :cond_4

    .line 759
    invoke-virtual {p0, v3}, Lcom/gemini/play/MyListView1;->setSelection(I)V

    goto :goto_3

    .line 790
    :cond_8
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->show_ad_image()V

    .line 791
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    .line 792
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyListView1;->setFocusable(Z)V

    goto/16 :goto_1
.end method

.method public showPlayList(ILjava/lang/String;Z)V
    .locals 8
    .param p1, "tid"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "check_type_selection"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 626
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p3, v4, :cond_1

    .line 628
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/gemini/play/LIVEplayer;->getVideoType(I)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "videoType":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 631
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyListView1;->showPlayList(I)V

    .line 710
    .end local v2    # "videoType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    sput-object p2, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 637
    sget-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    sput-object v3, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 639
    iget-object v3, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 641
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/gemini/play/MyListView1;->set_list(ILjava/lang/String;)V

    .line 644
    :cond_3
    iput-object p2, p0, Lcom/gemini/play/MyListView1;->current_type:Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->showViewTimeout()V

    .line 648
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 653
    iput-boolean v4, p0, Lcom/gemini/play/MyListView1;->isShow:Z

    .line 655
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    .line 657
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 659
    const/4 v1, 0x0

    .line 660
    .local v1, "i":I
    sget-boolean v3, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-eqz v3, :cond_4

    .line 662
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, p2, v5}, Lcom/gemini/play/LIVEplayer;->getVideoNum(ILjava/lang/String;Z)I

    move-result v1

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show playlist type = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " LIVEplayer.getCurrentID():"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Selection:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 671
    :goto_1
    invoke-virtual {p0, v1}, Lcom/gemini/play/MyListView1;->setSelection(I)V

    .line 677
    .end local v1    # "i":I
    :goto_2
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyListView1;->setVisibility(I)V

    .line 679
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "A20"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v3, v4, :cond_7

    .line 681
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v3, Lcom/gemini/play/MGplayer;->screenWidth:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-direct {v0, v3, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 682
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 683
    new-instance v3, Lcom/gemini/play/MyListView1$8;

    invoke-direct {v3, p0}, Lcom/gemini/play/MyListView1$8;-><init>(Lcom/gemini/play/MyListView1;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 701
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyListView1;->setFocusable(Z)V

    .line 702
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyListView1;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 667
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    .restart local v1    # "i":I
    :cond_4
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-boolean v3, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    invoke-static {v6, p2, v3}, Lcom/gemini/play/LIVEplayer;->getVideoNum(ILjava/lang/String;Z)I

    move-result v1

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no show playlist type = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " LIVEplayer.getCurrentID():"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Selection:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v3, v5

    .line 667
    goto :goto_3

    .line 674
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyListView1;->setSelection(I)V

    goto :goto_2

    .line 705
    :cond_7
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->show_ad_image()V

    .line 706
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->listFocus()V

    .line 707
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyListView1;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method public showPlayList(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, v0, p1, v0}, Lcom/gemini/play/MyListView1;->showPlayList(ILjava/lang/String;Z)V

    .line 622
    return-void
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 885
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    :cond_0
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 877
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/gemini/play/MyListView1;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyListView1;->hideViewTimeout()V

    .line 881
    return-void
.end method

.method public show_ad_image()V
    .locals 8

    .prologue
    .line 846
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->adimageSize()I

    move-result v3

    if-lez v3, :cond_0

    .line 848
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->adimageSize()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 849
    .local v1, "id":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gemini/play/MyListView1;->_this:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ad/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->adimageGet(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, "imagePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 854
    .local v0, "bit":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/gemini/play/MyListView1;->ad_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 855
    iget-object v3, p0, Lcom/gemini/play/MyListView1;->ad_image:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "id":I
    .end local v2    # "imagePath":Ljava/lang/String;
    :cond_0
    return-void
.end method
