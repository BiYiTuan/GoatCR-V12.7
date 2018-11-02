.class public Lcom/gemini/play/MyPreviewView;
.super Landroid/widget/LinearLayout;
.source "MyPreviewView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

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

.field private listdright:Landroid/widget/ImageButton;

.field private listtext:Landroid/widget/TextView;

.field private listview:Landroid/widget/ListView;

.field private previewdates:[Ljava/lang/String;

.field private previewindex:I

.field private previewweeks:[Ljava/lang/String;

.field public rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    .line 41
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listtext:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listdright:Landroid/widget/ImageButton;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->previewdates:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->previewweeks:[Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/gemini/play/MyPreviewView;->previewindex:I

    .line 49
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->list:Ljava/util/ArrayList;

    .line 51
    iput-boolean v3, p0, Lcom/gemini/play/MyPreviewView;->isShow:Z

    .line 583
    new-instance v0, Lcom/gemini/play/MyPreviewView$9;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyPreviewView$9;-><init>(Lcom/gemini/play/MyPreviewView;)V

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    invoke-direct {p0}, Lcom/gemini/play/MyPreviewView;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    .line 41
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listtext:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listdright:Landroid/widget/ImageButton;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->previewdates:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->previewweeks:[Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/gemini/play/MyPreviewView;->previewindex:I

    .line 49
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->list:Ljava/util/ArrayList;

    .line 51
    iput-boolean v3, p0, Lcom/gemini/play/MyPreviewView;->isShow:Z

    .line 583
    new-instance v0, Lcom/gemini/play/MyPreviewView$9;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyPreviewView$9;-><init>(Lcom/gemini/play/MyPreviewView;)V

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/gemini/play/MyPreviewView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    .line 41
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listtext:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->listdright:Landroid/widget/ImageButton;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->previewdates:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->previewweeks:[Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/gemini/play/MyPreviewView;->previewindex:I

    .line 49
    iput-object v2, p0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->list:Ljava/util/ArrayList;

    .line 51
    iput-boolean v3, p0, Lcom/gemini/play/MyPreviewView;->isShow:Z

    .line 583
    new-instance v0, Lcom/gemini/play/MyPreviewView$9;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyPreviewView$9;-><init>(Lcom/gemini/play/MyPreviewView;)V

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/gemini/play/MyPreviewView;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyPreviewView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyPreviewView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->previewdates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyPreviewView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 38
    iget v0, p0, Lcom/gemini/play/MyPreviewView;->previewindex:I

    return v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyPreviewView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gemini/play/MyPreviewView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyPreviewView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 79
    invoke-direct {p0}, Lcom/gemini/play/MyPreviewView;->previewDate()V

    .line 81
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 82
    .local v8, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v7

    .line 84
    .local v7, "rate":F
    const v0, 0x7f0700db

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    .line 85
    const v0, 0x7f0700d7

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->listtext:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->listdright:Landroid/widget/ImageButton;

    .line 88
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/gemini/play/MyPreviewView$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyPreviewView$1;-><init>(Lcom/gemini/play/MyPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/gemini/play/MyPreviewView$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyPreviewView$2;-><init>(Lcom/gemini/play/MyPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 178
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    new-instance v1, Lcom/gemini/play/MyPreviewView$3;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyPreviewView$3;-><init>(Lcom/gemini/play/MyPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 191
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listdright:Landroid/widget/ImageButton;

    new-instance v1, Lcom/gemini/play/MyPreviewView$4;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyPreviewView$4;-><init>(Lcom/gemini/play/MyPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listtext:Landroid/widget/TextView;

    new-instance v1, Lcom/gemini/play/MyPreviewView$5;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyPreviewView$5;-><init>(Lcom/gemini/play/MyPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    const v1, 0x7f060061

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 208
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listtext:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listtext:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 213
    new-instance v0, Lcom/gemini/play/MySimpleAdapterPreviewView;

    iget-object v1, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyPreviewView;->list:Ljava/util/ArrayList;

    const v3, 0x7f09005f

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "ItemTime"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "ItemPriview"

    aput-object v9, v4, v5

    const/4 v5, 0x2

    const-string v9, "ItemImage"

    aput-object v9, v4, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterPreviewView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    .line 216
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    new-instance v1, Lcom/gemini/play/MyPreviewView$6;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyPreviewView$6;-><init>(Lcom/gemini/play/MyPreviewView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterPreviewView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 231
    return-void

    .line 213
    :array_0
    .array-data 4
        0x7f070019
        0x7f070017
        0x7f07000c
    .end array-data
.end method

.method private previewDate()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x5

    .line 634
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    if-ge v3, v11, :cond_2

    .line 636
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 637
    .local v0, "calendar":Ljava/util/Calendar;
    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 639
    new-instance v1, Ljava/util/Date;

    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 640
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 643
    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    sget-object v5, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 644
    sget-object v5, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 645
    :cond_1
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 646
    .local v2, "day":I
    sub-int v5, v2, v3

    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 647
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 648
    .local v4, "week":I
    iget-object v5, p0, Lcom/gemini/play/MyPreviewView;->previewdates:[Ljava/lang/String;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 649
    iget-object v5, p0, Lcom/gemini/play/MyPreviewView;->previewweeks:[Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->week(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "day":I
    .end local v4    # "week":I
    :cond_2
    return-void
.end method


# virtual methods
.method public clear_list()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterPreviewView;->notifyDataSetChanged()V

    .line 237
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 660
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 662
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 683
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 675
    :sswitch_1
    const-string v0, "list dispatchKeyEvent"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 676
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 677
    invoke-virtual {p0}, Lcom/gemini/play/MyPreviewView;->listFocus()V

    .line 678
    const/4 v0, 0x1

    goto :goto_0

    .line 662
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method public hidePreviewList()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 495
    iget-object v1, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 537
    :goto_0
    return-void

    .line 503
    :cond_1
    iput-boolean v2, p0, Lcom/gemini/play/MyPreviewView;->isShow:Z

    .line 505
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v4, :cond_2

    .line 507
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 508
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 509
    new-instance v1, Lcom/gemini/play/MyPreviewView$8;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyPreviewView$8;-><init>(Lcom/gemini/play/MyPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 528
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyPreviewView;->setFocusable(Z)V

    .line 529
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyPreviewView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 533
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyPreviewView;->setFocusable(Z)V

    .line 534
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyPreviewView;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lcom/gemini/play/MyPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 564
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 565
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 566
    iget-object v1, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 567
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/gemini/play/MyPreviewView;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 551
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 552
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 553
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 554
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 555
    return-void
.end method

.method public scrollPreviewList(I)V
    .locals 7
    .param p1, "date"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 437
    iget-object v1, p0, Lcom/gemini/play/MyPreviewView;->listtext:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gemini/play/MyPreviewView;->_this:Landroid/content/Context;

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyPreviewView;->previewdates:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyPreviewView;->previewweeks:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {p0}, Lcom/gemini/play/MyPreviewView;->showViewTimeout()V

    .line 441
    invoke-virtual {p0}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    :goto_0
    return-void

    .line 446
    :cond_0
    iput-boolean v5, p0, Lcom/gemini/play/MyPreviewView;->isShow:Z

    .line 448
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyPreviewView;->setVisibility(I)V

    .line 450
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v5, :cond_1

    .line 452
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 453
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 454
    new-instance v1, Lcom/gemini/play/MyPreviewView$7;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyPreviewView$7;-><init>(Lcom/gemini/play/MyPreviewView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 480
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyPreviewView;->setFocusable(Z)V

    .line 481
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyPreviewView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 485
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/gemini/play/MyPreviewView;->setFocusable(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/gemini/play/MyPreviewView;->listFocus()V

    goto :goto_0
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 560
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 542
    return-void
.end method

.method public set_list(Ljava/lang/String;)V
    .locals 1
    .param p1, "preview"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/gemini/play/MyPreviewView;->set_list(Ljava/lang/String;Z)V

    .line 242
    return-void
.end method

.method public set_list(Ljava/lang/String;Z)V
    .locals 32
    .param p1, "preview"    # Ljava/lang/String;
    .param p2, "timeout"    # Z

    .prologue
    .line 246
    if-eqz p1, :cond_0

    const-string v26, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 253
    .local v4, "calendar":Ljava/util/Calendar;
    sget-object v26, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    if-eqz v26, :cond_2

    .line 254
    sget-object v26, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 256
    :cond_2
    sget-wide v26, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_3

    .line 258
    new-instance v5, Ljava/util/Date;

    sget-wide v26, Lcom/gemini/play/MGplayer;->seconds_prc:J

    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 259
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 261
    .end local v5    # "date":Ljava/util/Date;
    :cond_3
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 262
    .local v13, "nhour":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 265
    .local v14, "nminute":I
    const-string v26, "\\|"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 266
    .local v15, "previews":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v26, v0

    if-lez v26, :cond_0

    .line 269
    const/4 v9, -0x1

    .line 271
    .local v9, "index":I
    const/16 v25, 0x0

    .line 272
    .local v25, "url":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v26

    const-string v27, "quanxing"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 273
    sget-object v26, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 277
    :goto_1
    const/16 v17, 0x0

    .line 278
    .local v17, "statues":Ljava/lang/String;
    if-eqz v25, :cond_9

    sget-object v26, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 280
    const-string v26, "no"

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/MGplayer;->mediaplayerstatue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 291
    :cond_4
    :goto_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "status:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "url:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyPreviewView;->list:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 294
    const/4 v8, 0x0

    .local v8, "ii":I
    :goto_3
    array-length v0, v15

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v8, v0, :cond_e

    .line 296
    aget-object v26, v15, v8

    const-string v27, "#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, "items":[Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 298
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v0, v10

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    .line 300
    const-string v26, "ItemTime"

    const/16 v27, 0x0

    aget-object v27, v10, v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const/16 v26, 0x0

    aget-object v26, v10, v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 302
    .local v24, "times":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    .line 304
    const/16 v26, 0x0

    aget-object v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 305
    .local v7, "hour":I
    const/16 v26, 0x1

    aget-object v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 306
    .local v12, "minute":I
    if-ge v7, v13, :cond_a

    .line 308
    add-int/lit8 v9, v9, 0x1

    .line 315
    .end local v7    # "hour":I
    .end local v12    # "minute":I
    :cond_5
    :goto_4
    const-string v26, "ItemPriview"

    const/16 v27, 0x1

    aget-object v27, v10, v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    if-eqz v17, :cond_d

    .line 319
    const-string v26, "#"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 320
    .local v16, "statue":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    const/16 v26, 0x0

    aget-object v26, v16, v26

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    const/16 v26, 0x2

    aget-object v26, v16, v26

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 322
    :cond_6
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyPreviewView;->previewdates:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/MyPreviewView;->previewindex:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":00"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "date":Ljava/lang/String;
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->fromDateStringToLong(Ljava/lang/String;)J

    move-result-wide v26

    const-wide/16 v28, 0x2710

    div-long v18, v26, v28

    .line 324
    .local v18, "time":J
    const/16 v26, 0x0

    aget-object v26, v16, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 325
    .local v22, "time_start":J
    const/16 v26, 0x2

    aget-object v26, v16, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 327
    .local v20, "time_end":J
    cmp-long v26, v18, v22

    if-lez v26, :cond_b

    cmp-long v26, v18, v20

    if-gez v26, :cond_b

    .line 329
    const-string v26, "ItemImage"

    const v27, 0x7f0a0009

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v26, "ItemBack"

    const-string v27, "1"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .end local v5    # "date":Ljava/lang/String;
    .end local v16    # "statue":[Ljava/lang/String;
    .end local v18    # "time":J
    .end local v20    # "time_end":J
    .end local v22    # "time_start":J
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyPreviewView;->list:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v24    # "times":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 275
    .end local v8    # "ii":I
    .end local v10    # "items":[Ljava/lang/String;
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "statues":Ljava/lang/String;
    :cond_8
    sget-object v26, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_1

    .line 282
    .restart local v17    # "statues":Ljava/lang/String;
    :cond_9
    if-eqz v25, :cond_4

    .line 283
    const-string v26, "day"

    invoke-static/range {v25 .. v26}, Lcom/gemini/play/MyGemini;->getUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "day":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "day:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 285
    if-eqz v6, :cond_4

    .line 287
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    mul-int/lit8 v28, v28, 0x18

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0xa28

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v18, v26, v28

    .line 288
    .restart local v18    # "time":J
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v28, 0xa

    div-long v28, v18, v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x2710

    div-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    .line 310
    .end local v6    # "day":Ljava/lang/String;
    .end local v18    # "time":J
    .restart local v7    # "hour":I
    .restart local v8    # "ii":I
    .restart local v10    # "items":[Ljava/lang/String;
    .restart local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "minute":I
    .restart local v24    # "times":[Ljava/lang/String;
    :cond_a
    if-ne v7, v13, :cond_5

    if-gt v12, v14, :cond_5

    .line 312
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 333
    .end local v7    # "hour":I
    .end local v12    # "minute":I
    .restart local v5    # "date":Ljava/lang/String;
    .restart local v16    # "statue":[Ljava/lang/String;
    .restart local v18    # "time":J
    .restart local v20    # "time_end":J
    .restart local v22    # "time_start":J
    :cond_b
    const-string v26, "ItemBack"

    const-string v27, "0"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 337
    .end local v5    # "date":Ljava/lang/String;
    .end local v18    # "time":J
    .end local v20    # "time_end":J
    .end local v22    # "time_start":J
    :cond_c
    const-string v26, "ItemBack"

    const-string v27, "-1"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 341
    .end local v16    # "statue":[Ljava/lang/String;
    :cond_d
    const-string v26, "ItemBack"

    const-string v27, "-1"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 346
    .end local v10    # "items":[Ljava/lang/String;
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "times":[Ljava/lang/String;
    :cond_e
    const/16 v26, 0x1

    move/from16 v0, p2

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/gemini/play/MySimpleAdapterPreviewView;->setCurrentIndex(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyPreviewView;->listview:Landroid/widget/ListView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 353
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/gemini/play/MySimpleAdapterPreviewView;->notifyDataSetChanged()V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyPreviewView;->listFocus()V

    goto/16 :goto_0

    .line 352
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterPreviewView;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    invoke-virtual/range {v26 .. v27}, Lcom/gemini/play/MySimpleAdapterPreviewView;->setCurrentIndex(I)V

    goto :goto_6
.end method

.method public showPreviewList(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 380
    const/4 v1, 0x0

    iput v1, p0, Lcom/gemini/play/MyPreviewView;->previewindex:I

    .line 381
    invoke-static {p1}, Lcom/gemini/play/LIVEplayer;->getVideoIntroduction(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "preview":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/gemini/play/MyPreviewView;->clear_list()V

    .line 383
    iget v1, p0, Lcom/gemini/play/MyPreviewView;->previewindex:I

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyPreviewView;->scrollPreviewList(I)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyPreviewView;->set_list(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public showPreviewListNext(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 423
    return-void
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    :cond_0
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 571
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyPreviewView;->hideViewTimeout()V

    .line 575
    return-void
.end method
