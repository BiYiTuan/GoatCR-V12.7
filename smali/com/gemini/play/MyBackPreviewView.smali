.class public Lcom/gemini/play/MyBackPreviewView;
.super Landroid/widget/LinearLayout;
.source "MyBackPreviewView.java"


# static fields
.field public static backpreviewdaytime:I


# instance fields
.field private _this:Landroid/content/Context;

.field adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

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

.field private listview:Landroid/widget/ListView;

.field private previewdates:[Ljava/lang/String;

.field private previewindex:I

.field private previewweeks:[Ljava/lang/String;

.field public rHandler:Landroid/os/Handler;

.field private textdays:[Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x6

    sput v0, Lcom/gemini/play/MyBackPreviewView;->backpreviewdaytime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    .line 36
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    .line 38
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->list:Ljava/util/ArrayList;

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    .line 42
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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->previewdates:[Ljava/lang/String;

    .line 43
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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->previewweeks:[Ljava/lang/String;

    .line 44
    iput v3, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    .line 583
    new-instance v0, Lcom/gemini/play/MyBackPreviewView$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackPreviewView$12;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->rHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/gemini/play/MyBackPreviewView;->init()V

    .line 66
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

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    .line 36
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    .line 38
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->list:Ljava/util/ArrayList;

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    .line 42
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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->previewdates:[Ljava/lang/String;

    .line 43
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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->previewweeks:[Ljava/lang/String;

    .line 44
    iput v3, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    .line 583
    new-instance v0, Lcom/gemini/play/MyBackPreviewView$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackPreviewView$12;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->rHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    invoke-direct {p0}, Lcom/gemini/play/MyBackPreviewView;->init()V

    .line 59
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

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    .line 36
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    .line 38
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->list:Ljava/util/ArrayList;

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    .line 42
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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->previewdates:[Ljava/lang/String;

    .line 43
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

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->previewweeks:[Ljava/lang/String;

    .line 44
    iput v3, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    .line 583
    new-instance v0, Lcom/gemini/play/MyBackPreviewView$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackPreviewView$12;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->rHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/gemini/play/MyBackPreviewView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyBackPreviewView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyBackPreviewView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->previewdates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyBackPreviewView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 33
    iget v0, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    return v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyBackPreviewView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gemini/play/MyBackPreviewView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackPreviewView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    .line 70
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 71
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v1

    .line 73
    .local v1, "rate":F
    const v3, 0x7f0700db

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    .line 74
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    const v4, 0x7f060061

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const v3, 0x7f070087

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v7

    .line 78
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const v3, 0x7f070088

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v8

    .line 79
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const v3, 0x7f070089

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v9

    .line 80
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const v3, 0x7f07008a

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v10

    .line 81
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v5, 0x4

    const v3, 0x7f07008b

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 82
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v5, 0x5

    const v3, 0x7f07008c

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 83
    iget-object v4, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v5, 0x6

    const v3, 0x7f07008d

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 85
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    mul-float v4, v6, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v3, v3, v8

    mul-float v4, v6, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    mul-float v4, v6, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v3, v3, v10

    mul-float v4, v6, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    mul-float v4, v6, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    mul-float v4, v6, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    mul-float v4, v6, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$1;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$1;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v3, v3, v8

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$2;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$2;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$3;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$3;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v3, v3, v10

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$4;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$4;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$5;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$5;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$6;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$6;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$7;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$7;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$8;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$8;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$9;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$9;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 207
    iget-object v3, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    new-instance v4, Lcom/gemini/play/MyBackPreviewView$10;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyBackPreviewView$10;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/gemini/play/MyBackPreviewView;->init_list()V

    .line 246
    invoke-direct {p0}, Lcom/gemini/play/MyBackPreviewView;->previewDate()V

    .line 248
    iget v3, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyBackPreviewView;->showTextDays(I)V

    .line 249
    return-void
.end method

.method private previewDate()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x5

    .line 278
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    if-ge v3, v11, :cond_2

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 281
    .local v0, "calendar":Ljava/util/Calendar;
    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 283
    new-instance v1, Ljava/util/Date;

    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 284
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 287
    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    sget-object v5, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 288
    sget-object v5, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 290
    :cond_1
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 291
    .local v2, "day":I
    sub-int v5, v2, v3

    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 292
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 293
    .local v4, "week":I
    iget-object v5, p0, Lcom/gemini/play/MyBackPreviewView;->previewdates:[Ljava/lang/String;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 296
    iget-object v5, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v5, v5, v3

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->week(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
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
    .line 482
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 483
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->notifyDataSetChanged()V

    .line 484
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 616
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 618
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 646
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 630
    :sswitch_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 631
    invoke-virtual {p0}, Lcom/gemini/play/MyBackPreviewView;->listFocus()V

    goto :goto_0

    .line 635
    :sswitch_2
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 639
    :sswitch_3
    sget-object v1, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyBackPreviewView;->showPreviewListNext(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/gemini/play/MyBackPreviewView;->listFocus()V

    goto :goto_0

    .line 618
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    return-object v0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 570
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 571
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 572
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 573
    return-void
.end method

.method public init_list()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 254
    new-instance v0, Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->list:Ljava/util/ArrayList;

    const v3, 0x7f09005f

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ItemTime"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ItemPriview"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterBackPreviewView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    .line 259
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    new-instance v1, Lcom/gemini/play/MyBackPreviewView$11;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyBackPreviewView$11;-><init>(Lcom/gemini/play/MyBackPreviewView;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 274
    return-void

    .line 254
    :array_0
    .array-data 4
        0x7f070019
        0x7f070017
    .end array-data
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 599
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 600
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 601
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 602
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 603
    return-void
.end method

.method public listNoFocus()V
    .locals 3

    .prologue
    .line 610
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    const v2, 0x7f040057

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 611
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 612
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/gemini/play/MyBackPreviewView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 566
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->listview:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 556
    return-void
.end method

.method public set_list(Ljava/lang/String;)V
    .locals 1
    .param p1, "preview"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    .line 305
    return-void
.end method

.method public set_list(Ljava/lang/String;Z)V
    .locals 18
    .param p1, "preview"    # Ljava/lang/String;
    .param p2, "timeout"    # Z

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/MyBackPreviewView;->list:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 312
    if-eqz p1, :cond_0

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 314
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    const v16, 0x7f0b0031

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 320
    .local v2, "calendar":Ljava/util/Calendar;
    sget-object v14, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 321
    sget-object v14, Lcom/gemini/play/MGplayer;->now_zone_prc:Ljava/lang/String;

    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 323
    :cond_2
    sget-wide v14, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 325
    new-instance v3, Ljava/util/Date;

    sget-wide v14, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-direct {v3, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 326
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 328
    .end local v3    # "date":Ljava/util/Date;
    :cond_3
    const/16 v14, 0xb

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 329
    .local v10, "nhour":I
    const/16 v14, 0xc

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 330
    .local v11, "nminute":I
    const-string v14, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 331
    .local v12, "previews":[Ljava/lang/String;
    array-length v14, v12

    if-gtz v14, :cond_4

    .line 369
    :goto_0
    return-void

    .line 334
    :cond_4
    const/4 v6, -0x1

    .line 336
    .local v6, "index":I
    const/4 v5, 0x0

    .local v5, "ii":I
    :goto_1
    array-length v14, v12

    if-ge v5, v14, :cond_8

    .line 338
    aget-object v14, v12, v5

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, "items":[Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v14, v7

    const/4 v15, 0x2

    if-lt v14, v15, :cond_6

    .line 342
    const-string v14, "ItemTime"

    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const/4 v14, 0x0

    aget-object v14, v7, v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 344
    .local v13, "times":[Ljava/lang/String;
    array-length v14, v13

    const/4 v15, 0x2

    if-lt v14, v15, :cond_5

    .line 346
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 347
    .local v4, "hour":I
    const/4 v14, 0x1

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 348
    .local v9, "minute":I
    if-ge v4, v10, :cond_7

    .line 350
    add-int/lit8 v6, v6, 0x1

    .line 357
    .end local v4    # "hour":I
    .end local v9    # "minute":I
    :cond_5
    :goto_2
    const-string v14, "ItemPriview"

    const/4 v15, 0x1

    aget-object v15, v7, v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/MyBackPreviewView;->list:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v13    # "times":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 352
    .restart local v4    # "hour":I
    .restart local v9    # "minute":I
    .restart local v13    # "times":[Ljava/lang/String;
    :cond_7
    if-ne v4, v10, :cond_5

    if-gt v9, v11, :cond_5

    .line 354
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 361
    .end local v4    # "hour":I
    .end local v7    # "items":[Ljava/lang/String;
    .end local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "minute":I
    .end local v13    # "times":[Ljava/lang/String;
    :cond_8
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    invoke-virtual {v14, v6}, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->setCurrentIndex(I)V

    .line 367
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    invoke-virtual {v14}, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->notifyDataSetChanged()V

    goto :goto_0

    .line 366
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/MyBackPreviewView;->adapter:Lcom/gemini/play/MySimpleAdapterBackPreviewView;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/gemini/play/MySimpleAdapterBackPreviewView;->setCurrentIndex(I)V

    goto :goto_3
.end method

.method public showPreviewList(Ljava/lang/String;)V
    .locals 0
    .param p1, "perview"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public showPreviewListDay(Ljava/lang/String;I)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "previewindex"    # I

    .prologue
    const/4 v4, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/gemini/play/MyBackPreviewView;->clear_list()V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewindex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, p2}, Lcom/gemini/play/MyBackPreviewView;->showTextDays(I)V

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "preview":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2}, Lcom/gemini/play/BACKplayer;->playbackGetVideoIntroductions(II)Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 411
    if-nez p2, :cond_1

    .line 412
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    .line 421
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    goto :goto_0

    .line 418
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-virtual {p0, v0, v4}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public showPreviewListNext(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 426
    iget v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    .line 427
    iget v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    sget v2, Lcom/gemini/play/MyBackPreviewView;->backpreviewdaytime:I

    if-le v1, v2, :cond_0

    .line 428
    iput v4, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackPreviewView;->clear_list()V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewindex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 435
    iget v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyBackPreviewView;->showTextDays(I)V

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "preview":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    invoke-static {v1, v2}, Lcom/gemini/play/BACKplayer;->playbackGetVideoIntroductions(II)Ljava/lang/String;

    move-result-object v0

    .line 441
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_3

    .line 443
    iget v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    if-nez v1, :cond_2

    .line 444
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    .line 453
    :goto_0
    return-void

    .line 446
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    goto :goto_0

    .line 450
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {p0, v0, v4}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public showPreviewListPre(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 457
    iget v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    .line 458
    iget v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    if-gez v1, :cond_0

    .line 459
    sget v1, Lcom/gemini/play/MyBackPreviewView;->backpreviewdaytime:I

    iput v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackPreviewView;->clear_list()V

    .line 465
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    invoke-static {v1, v2}, Lcom/gemini/play/BACKplayer;->playbackGetVideoIntroductions(II)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "preview":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 468
    iget v1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    if-nez v1, :cond_1

    .line 469
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    .line 478
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    goto :goto_0

    .line 475
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p0, v0, v4}, Lcom/gemini/play/MyBackPreviewView;->set_list(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public showTextDays(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0x7b

    const/4 v4, 0x0

    .line 378
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 380
    if-ne p1, v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/gemini/play/MyBackPreviewView;->_this:Landroid/content/Context;

    const v3, 0x7f060061

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    sget v1, Lcom/gemini/play/MyBackPreviewView;->backpreviewdaytime:I

    if-le v0, v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/16 v2, 0x79

    invoke-static {v5, v5, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/MyBackPreviewView;->textdays:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1

    .line 393
    :cond_2
    iput p1, p0, Lcom/gemini/play/MyBackPreviewView;->previewindex:I

    .line 394
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 577
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/gemini/play/MyBackPreviewView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackPreviewView;->hideViewTimeout()V

    .line 581
    return-void
.end method
