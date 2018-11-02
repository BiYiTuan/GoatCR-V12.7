.class public Lcom/gemini/play/MyVodClassify2View;
.super Landroid/widget/LinearLayout;
.source "MyVodClassify2View.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private adapter_area:Lcom/gemini/play/MySimpleAdapterTypeListView2;

.field private adapter_type:Lcom/gemini/play/MySimpleAdapterTypeListView2;

.field private adapter_year:Lcom/gemini/play/MySimpleAdapterTypeListView2;

.field private button_find:Landroid/widget/Button;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private index_area:I

.field private index_type:I

.field private index_year:I

.field private isShow:Z

.field list_area:Ljava/util/ArrayList;
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

.field list_type:Ljava/util/ArrayList;
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

.field list_year:Ljava/util/ArrayList;
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

.field private listtext_area:Landroid/widget/TextView;

.field private listtext_type:Landroid/widget/TextView;

.field private listtext_year:Landroid/widget/TextView;

.field private listview_area:Landroid/widget/ListView;

.field private listview_index:I

.field private listview_type:Landroid/widget/ListView;

.field private listview_year:Landroid/widget/ListView;

.field public rHandler:Landroid/os/Handler;

.field private select_area:Ljava/lang/String;

.field private select_cmd:Ljava/lang/String;

.field private select_type:Ljava/lang/String;

.field private select_year:Ljava/lang/String;

.field private selectid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_type:Ljava/lang/String;

    .line 50
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_year:Ljava/lang/String;

    .line 51
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_area:Ljava/lang/String;

    .line 52
    const-string v0, "&itype=0&iyear=0&iarea=0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_cmd:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_type:I

    .line 55
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_year:I

    .line 56
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_area:I

    .line 58
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    .line 59
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 60
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->selectid:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/gemini/play/MyVodClassify2View;->isShow:Z

    .line 64
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    .line 576
    new-instance v0, Lcom/gemini/play/MyVodClassify2View$18;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodClassify2View$18;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->rHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090074

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lcom/gemini/play/MyVodClassify2View;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_type:Ljava/lang/String;

    .line 50
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_year:Ljava/lang/String;

    .line 51
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_area:Ljava/lang/String;

    .line 52
    const-string v0, "&itype=0&iyear=0&iarea=0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_cmd:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_type:I

    .line 55
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_year:I

    .line 56
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_area:I

    .line 58
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    .line 59
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 60
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->selectid:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/gemini/play/MyVodClassify2View;->isShow:Z

    .line 64
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    .line 576
    new-instance v0, Lcom/gemini/play/MyVodClassify2View$18;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodClassify2View$18;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->rHandler:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090074

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    invoke-direct {p0}, Lcom/gemini/play/MyVodClassify2View;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_type:Ljava/lang/String;

    .line 50
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_year:Ljava/lang/String;

    .line 51
    const-string v0, "0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_area:Ljava/lang/String;

    .line 52
    const-string v0, "&itype=0&iyear=0&iarea=0"

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_cmd:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_type:I

    .line 55
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_year:I

    .line 56
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->index_area:I

    .line 58
    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    .line 59
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 60
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->selectid:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/gemini/play/MyVodClassify2View;->isShow:Z

    .line 64
    iput-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    .line 576
    new-instance v0, Lcom/gemini/play/MyVodClassify2View$18;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodClassify2View$18;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->rHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090074

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    invoke-direct {p0}, Lcom/gemini/play/MyVodClassify2View;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodClassify2View;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/MySimpleAdapterTypeListView2;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_area:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    return-object v0
.end method

.method static synthetic access$102(Lcom/gemini/play/MyVodClassify2View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View;->select_type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/gemini/play/MyVodClassify2View;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/gemini/play/MyVodClassify2View;->index_area:I

    return p1
.end method

.method static synthetic access$1300(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodClassify2View;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_cmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/gemini/play/MyVodClassify2View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View;->select_cmd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/gemini/play/MyVodClassify2View;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_year:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/gemini/play/MyVodClassify2View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View;->select_year:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/gemini/play/MyVodClassify2View;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->select_area:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/gemini/play/MyVodClassify2View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View;->select_area:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/MySimpleAdapterTypeListView2;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_type:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    return-object v0
.end method

.method static synthetic access$602(Lcom/gemini/play/MyVodClassify2View;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/gemini/play/MyVodClassify2View;->index_type:I

    return p1
.end method

.method static synthetic access$700(Lcom/gemini/play/MyVodClassify2View;)Lcom/gemini/play/MySimpleAdapterTypeListView2;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_year:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    return-object v0
.end method

.method static synthetic access$800(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/gemini/play/MyVodClassify2View;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodClassify2View;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/gemini/play/MyVodClassify2View;->index_year:I

    return p1
.end method

.method private init()V
    .locals 7

    .prologue
    const/high16 v6, 0x41000000    # 8.0f

    .line 92
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 93
    .local v3, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v2

    .line 95
    .local v2, "rate":F
    const v4, 0x7f0700dd

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    .line 96
    const v4, 0x7f0700de

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    .line 97
    const v4, 0x7f0700dc

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    .line 99
    const v4, 0x7f0700d9

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_type:Landroid/widget/TextView;

    .line 100
    const v4, 0x7f0700da

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_year:Landroid/widget/TextView;

    .line 101
    const v4, 0x7f0700d8

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_area:Landroid/widget/TextView;

    .line 103
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_type:Landroid/widget/TextView;

    mul-float v5, v6, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_type:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_year:Landroid/widget/TextView;

    mul-float v5, v6, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_year:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_area:Landroid/widget/TextView;

    mul-float v5, v6, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listtext_area:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$1;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$1;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$2;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$2;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$3;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$3;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 143
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$4;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$4;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    .local v1, "drawable2":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$5;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$5;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 176
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$6;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$6;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$7;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$7;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 201
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$8;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$8;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$9;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$9;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$10;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$10;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 243
    const v4, 0x7f070070

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    .line 244
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    mul-float v5, v6, v2

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 245
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$11;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$11;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v4, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    new-instance v5, Lcom/gemini/play/MyVodClassify2View$12;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodClassify2View$12;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 262
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 590
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 591
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 639
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 599
    :sswitch_1
    iget v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    .line 600
    iget v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 601
    const/4 v1, 0x0

    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->listFocus()V

    .line 603
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->showViewTimeout()V

    goto :goto_1

    .line 607
    :sswitch_2
    iget v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    .line 608
    iget v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    if-gez v1, :cond_2

    .line 609
    const/4 v1, 0x2

    iput v1, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    .line 610
    :cond_2
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->listFocus()V

    .line 611
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->showViewTimeout()V

    goto :goto_1

    .line 616
    :sswitch_3
    const-string v1, "list dispatchKeyEvent"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 617
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 618
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->listFocus()V

    .line 619
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->showViewTimeout()V

    goto :goto_1

    .line 623
    :sswitch_4
    const-string v1, "list dispatchKeyEvent"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->isListLastSelect()Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 626
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->findButtonFocus()V

    .line 627
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->listNoFocus()V

    .line 633
    :goto_2
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->showViewTimeout()V

    goto :goto_0

    .line 631
    :cond_3
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->listFocus()V

    goto :goto_2

    .line 591
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public findButtonFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 513
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 514
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 515
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 516
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->button_find:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 517
    return-void
.end method

.method public findButtonNoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 522
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 524
    return-void
.end method

.method public hideClassifyList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 444
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->listNoFocus()V

    .line 449
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    :goto_0
    return-void

    .line 453
    :cond_1
    iput-boolean v3, p0, Lcom/gemini/play/MyVodClassify2View;->isShow:Z

    .line 455
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v5, :cond_2

    .line 456
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-direct {v0, v4, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 457
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 458
    new-instance v1, Lcom/gemini/play/MyVodClassify2View$17;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodClassify2View$17;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 476
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodClassify2View;->setFocusable(Z)V

    .line 477
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodClassify2View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 479
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodClassify2View;->setFocusable(Z)V

    .line 480
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodClassify2View;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 563
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 564
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 565
    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 566
    return-void
.end method

.method public isListLastSelect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 487
    iget v2, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    if-nez v2, :cond_2

    .line 488
    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->list_type:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/gemini/play/MyVodClassify2View;->index_type:I

    if-gt v2, v3, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 491
    goto :goto_0

    .line 492
    :cond_2
    iget v2, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 493
    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->list_year:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/gemini/play/MyVodClassify2View;->index_year:I

    if-le v2, v3, :cond_0

    move v0, v1

    .line 496
    goto :goto_0

    .line 497
    :cond_3
    iget v2, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    if-ne v2, v0, :cond_4

    .line 498
    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->list_area:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/gemini/play/MyVodClassify2View;->index_area:I

    if-le v2, v3, :cond_0

    move v0, v1

    .line 501
    goto :goto_0

    :cond_4
    move v0, v1

    .line 504
    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/gemini/play/MyVodClassify2View;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 527
    iget v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    if-nez v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 529
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 530
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 531
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 533
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 534
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 535
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 536
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    goto :goto_0

    .line 537
    :cond_2
    iget v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    if-ne v0, v2, :cond_0

    .line 538
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 539
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 540
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 541
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    goto :goto_0
.end method

.method public listNoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 546
    iget v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 548
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 550
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 551
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 552
    :cond_2
    iget v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 554
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 560
    return-void
.end method

.method public set_list_area(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_area:Ljava/util/ArrayList;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "columner["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].type_area = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 348
    const/4 v9, 0x0

    .line 349
    .local v9, "type_names":[Ljava/lang/String;
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_0

    .line 350
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_area:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 352
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v8, "map0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemID"

    const-string v1, "0"

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "ItemName"

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    const v2, 0x7f0b00cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_area:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    if-eqz v9, :cond_1

    .line 358
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v9

    if-ge v6, v0, :cond_1

    .line 359
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemID"

    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, "ItemName"

    aget-object v1, v9, v6

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_area:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 365
    .end local v6    # "i":I
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Lcom/gemini/play/MySimpleAdapterTypeListView2;

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->list_area:Ljava/util/ArrayList;

    const v3, 0x7f09002c

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "ItemName"

    aput-object v5, v4, v11

    new-array v5, v10, [I

    const v10, 0x7f070016

    aput v10, v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterTypeListView2;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_area:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    .line 369
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_area:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_area:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_area:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    new-instance v1, Lcom/gemini/play/MyVodClassify2View$15;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodClassify2View$15;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterTypeListView2;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 382
    return-void
.end method

.method public set_list_type(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_type:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "columner["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].type_year = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 268
    const/4 v9, 0x0

    .line 269
    .local v9, "type_names":[Ljava/lang/String;
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_0

    .line 270
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 272
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v8, "map0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemID"

    const-string v1, "0"

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "ItemName"

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    const v2, 0x7f0b00cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_type:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    if-eqz v9, :cond_1

    .line 278
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v9

    if-ge v6, v0, :cond_1

    .line 279
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemID"

    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "ItemName"

    aget-object v1, v9, v6

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_type:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 285
    .end local v6    # "i":I
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Lcom/gemini/play/MySimpleAdapterTypeListView2;

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->list_type:Ljava/util/ArrayList;

    const v3, 0x7f09002c

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "ItemName"

    aput-object v5, v4, v11

    new-array v5, v10, [I

    const v10, 0x7f070016

    aput v10, v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterTypeListView2;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_type:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    .line 289
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_type:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_type:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_type:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    new-instance v1, Lcom/gemini/play/MyVodClassify2View$13;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodClassify2View$13;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterTypeListView2;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 302
    return-void
.end method

.method public set_list_year(I)V
    .locals 12
    .param p1, "type"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_year:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "columner["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "].type_year = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 308
    const/4 v9, 0x0

    .line 309
    .local v9, "type_names":[Ljava/lang/String;
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_0

    .line 310
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/gemini/play/ColumnStatus;->type_year:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 312
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v8, "map0":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemID"

    const-string v1, "0"

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "ItemName"

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    const v2, 0x7f0b00cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_year:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    if-eqz v9, :cond_1

    .line 318
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v9

    if-ge v6, v0, :cond_1

    .line 319
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemID"

    add-int/lit8 v1, v6, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v0, "ItemName"

    aget-object v1, v9, v6

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->list_year:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 325
    .end local v6    # "i":I
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Lcom/gemini/play/MySimpleAdapterTypeListView2;

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyVodClassify2View;->list_year:Ljava/util/ArrayList;

    const v3, 0x7f09002c

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "ItemName"

    aput-object v5, v4, v11

    new-array v5, v10, [I

    const v10, 0x7f070016

    aput v10, v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterTypeListView2;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_year:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    .line 329
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->listview_year:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_year:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->adapter_year:Lcom/gemini/play/MySimpleAdapterTypeListView2;

    new-instance v1, Lcom/gemini/play/MyVodClassify2View$14;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodClassify2View$14;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterTypeListView2;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 342
    return-void
.end method

.method public showClassifyList(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->showViewTimeout()V

    .line 389
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->listFocus()V

    .line 391
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v1, "0"

    iput-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->select_type:Ljava/lang/String;

    .line 395
    const-string v1, "0"

    iput-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->select_year:Ljava/lang/String;

    .line 396
    const-string v1, "0"

    iput-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->select_area:Ljava/lang/String;

    .line 397
    const-string v1, "&itype=0&iyear=0&iarea=0"

    iput-object v1, p0, Lcom/gemini/play/MyVodClassify2View;->select_cmd:Ljava/lang/String;

    .line 399
    iput v2, p0, Lcom/gemini/play/MyVodClassify2View;->index_type:I

    .line 400
    iput v2, p0, Lcom/gemini/play/MyVodClassify2View;->index_year:I

    .line 401
    iput v2, p0, Lcom/gemini/play/MyVodClassify2View;->index_area:I

    .line 403
    iput-boolean v4, p0, Lcom/gemini/play/MyVodClassify2View;->isShow:Z

    .line 404
    iput v2, p0, Lcom/gemini/play/MyVodClassify2View;->listview_index:I

    .line 406
    invoke-virtual {p0, p1}, Lcom/gemini/play/MyVodClassify2View;->set_list_type(I)V

    .line 407
    invoke-virtual {p0, p1}, Lcom/gemini/play/MyVodClassify2View;->set_list_year(I)V

    .line 408
    invoke-virtual {p0, p1}, Lcom/gemini/play/MyVodClassify2View;->set_list_area(I)V

    .line 410
    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodClassify2View;->setVisibility(I)V

    .line 412
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v4, :cond_1

    .line 413
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 414
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 415
    new-instance v1, Lcom/gemini/play/MyVodClassify2View$16;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodClassify2View$16;-><init>(Lcom/gemini/play/MyVodClassify2View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 433
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->setFocusable(Z)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodClassify2View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 436
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyVodClassify2View;->setFocusable(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->listFocus()V

    goto :goto_0
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodClassify2View;->hideViewTimeout()V

    .line 573
    return-void
.end method
