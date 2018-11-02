.class Lcom/gemini/play/MySimpleAdapterLiveGridView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterLiveGridView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private current_index:I

.field private rate:F

.field private selectedPosition:I

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->current_index:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->selectedPosition:I

    .line 32
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->_this:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterLiveGridView;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->typeFace:Landroid/graphics/Typeface;

    .line 49
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->rate:F

    .line 50
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spain1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spainglobal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget v0, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->rate:F

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->rate:F

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0xff

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "v":Landroid/view/View;
    const v3, 0x7f07000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    .local v1, "vh":Landroid/widget/TextView;
    const v3, 0x7f070018

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, "vt":Landroid/widget/TextView;
    iget v3, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->rate:F

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    iget-object v3, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    iget v3, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->rate:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    iget-object v3, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    return-object v0
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->current_index:I

    .line 44
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterLiveGridView;->selectedPosition:I

    .line 39
    return-void
.end method
