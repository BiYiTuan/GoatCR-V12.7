.class public Lcom/gemini/play/MySimpleAdapterInputView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterInputView.java"


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

    .line 32
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterInputView;->current_index:I

    .line 22
    iput v1, p0, Lcom/gemini/play/MySimpleAdapterInputView;->selectedPosition:I

    .line 27
    iput v1, p0, Lcom/gemini/play/MySimpleAdapterInputView;->clickTemp:I

    .line 33
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterInputView;->_this:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterInputView;->init()V

    .line 36
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterInputView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterInputView;->typeFace:Landroid/graphics/Typeface;

    .line 41
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterInputView;->rate:F

    .line 42
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

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "v":Landroid/view/View;
    const v2, 0x7f070007

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, "vt":Landroid/widget/TextView;
    iget v2, p0, Lcom/gemini/play/MySimpleAdapterInputView;->rate:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    iget-object v2, p0, Lcom/gemini/play/MySimpleAdapterInputView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget v2, p0, Lcom/gemini/play/MySimpleAdapterInputView;->clickTemp:I

    if-ne v2, p1, :cond_0

    .line 60
    const v2, 0x7f060060

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const v2, 0x7f06005b

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSeclection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterInputView;->clickTemp:I

    .line 46
    return-void
.end method
