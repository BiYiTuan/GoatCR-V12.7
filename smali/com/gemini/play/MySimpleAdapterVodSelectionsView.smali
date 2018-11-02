.class Lcom/gemini/play/MySimpleAdapterVodSelectionsView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterVodSelectionsView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private clickTemp:I

.field private current_index:I

.field private rate:F

.field private selectedPosition:I

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 2
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
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v1, -0x1

    .line 35
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->current_index:I

    .line 23
    iput v1, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->selectedPosition:I

    .line 28
    iput v1, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->clickTemp:I

    .line 36
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->_this:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->typeFace:Landroid/graphics/Typeface;

    .line 44
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->rate:F

    .line 45
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

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "v":Landroid/view/View;
    const v3, 0x7f07001a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, "vt":Landroid/widget/TextView;
    iget v3, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->rate:F

    const/high16 v4, 0x41100000    # 9.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    iget-object v3, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 73
    .local v0, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    sget v3, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v3, v3, 0xe

    iput v3, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 74
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget v3, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->clickTemp:I

    if-ne v3, p1, :cond_0

    .line 77
    const v3, 0x7f060060

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    :goto_0
    return-object v1

    .line 79
    :cond_0
    const v3, 0x7f06005b

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSeclection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterVodSelectionsView;->clickTemp:I

    .line 49
    return-void
.end method
