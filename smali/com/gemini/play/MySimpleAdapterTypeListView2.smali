.class Lcom/gemini/play/MySimpleAdapterTypeListView2;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterTypeListView2.java"


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
    .line 29
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->current_index:I

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->selectedPosition:I

    .line 30
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->_this:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterTypeListView2;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->typeFace:Landroid/graphics/Typeface;

    .line 47
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->rate:F

    .line 48
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0xff

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "v":Landroid/view/View;
    const v2, 0x7f070016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    .local v1, "vh":Landroid/widget/TextView;
    iget v2, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->rate:F

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    iget-object v2, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    iget v2, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->current_index:I

    if-ne p1, v2, :cond_0

    .line 59
    const v2, 0x7f0a0047

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 70
    :goto_0
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    return-object v0

    .line 61
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->current_index:I

    .line 42
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterTypeListView2;->selectedPosition:I

    .line 37
    return-void
.end method
