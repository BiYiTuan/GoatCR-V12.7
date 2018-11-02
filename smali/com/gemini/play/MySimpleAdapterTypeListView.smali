.class Lcom/gemini/play/MySimpleAdapterTypeListView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterTypeListView.java"


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
    .line 33
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->current_index:I

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->selectedPosition:I

    .line 34
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->_this:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterTypeListView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->typeFace:Landroid/graphics/Typeface;

    .line 51
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->rate:F

    .line 52
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v7, 0x41700000    # 15.0f

    const/16 v6, 0xff

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "v":Landroid/view/View;
    const v4, 0x7f070016

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 59
    .local v2, "vh":Landroid/widget/TextView;
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->rate:F

    const/high16 v5, 0x40e00000    # 7.0f

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    iget-object v4, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    const v4, 0x7f07000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 63
    .local v3, "vi":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->rate:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 65
    iget v4, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->rate:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 66
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    return-object v1
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->current_index:I

    .line 46
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterTypeListView;->selectedPosition:I

    .line 41
    return-void
.end method
