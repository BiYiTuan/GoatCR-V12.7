.class public Lcom/gemini/play/MyVodTop3View;
.super Landroid/widget/LinearLayout;
.source "MyVodTop3View.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private listview:Landroid/widget/ListView;

.field private rate:F

.field private typeFace:Landroid/graphics/Typeface;

.field private vh:Landroid/widget/TextView;

.field private vh1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->_this:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->listview:Landroid/widget/ListView;

    .line 19
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 24
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh1:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh:Landroid/widget/TextView;

    .line 43
    iput-object p1, p0, Lcom/gemini/play/MyVodTop3View;->_this:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09007f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/gemini/play/MyVodTop3View;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->_this:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->listview:Landroid/widget/ListView;

    .line 19
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 24
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh1:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh:Landroid/widget/TextView;

    .line 36
    iput-object p1, p0, Lcom/gemini/play/MyVodTop3View;->_this:Landroid/content/Context;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09007f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    invoke-virtual {p0}, Lcom/gemini/play/MyVodTop3View;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->_this:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->listview:Landroid/widget/ListView;

    .line 19
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 24
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh1:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh:Landroid/widget/TextView;

    .line 29
    iput-object p1, p0, Lcom/gemini/play/MyVodTop3View;->_this:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09007f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lcom/gemini/play/MyVodTop3View;->init()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodTop3View;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTop3View;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/gemini/play/MyVodTop3View;->_this:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodTop3View;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTop3View;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/gemini/play/MyVodTop3View;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method


# virtual methods
.method init()V
    .locals 5

    .prologue
    .line 51
    iget-object v2, p0, Lcom/gemini/play/MyVodTop3View;->_this:Landroid/content/Context;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/gemini/play/MyVodTop3View;->typeFace:Landroid/graphics/Typeface;

    .line 52
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v2

    iput v2, p0, Lcom/gemini/play/MyVodTop3View;->rate:F

    .line 54
    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodTop3View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gemini/play/MyVodTop3View;->vh:Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/gemini/play/MyVodTop3View;->vh:Landroid/widget/TextView;

    iget v3, p0, Lcom/gemini/play/MyVodTop3View;->rate:F

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    iget-object v2, p0, Lcom/gemini/play/MyVodTop3View;->vh:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/gemini/play/MyVodTop3View;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodTop3View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gemini/play/MyVodTop3View;->vh1:Landroid/widget/TextView;

    .line 59
    iget-object v2, p0, Lcom/gemini/play/MyVodTop3View;->vh1:Landroid/widget/TextView;

    iget v3, p0, Lcom/gemini/play/MyVodTop3View;->rate:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    iget-object v2, p0, Lcom/gemini/play/MyVodTop3View;->vh1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/gemini/play/MyVodTop3View;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    const v2, 0x7f070106

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodTop3View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 63
    .local v1, "options":Landroid/widget/ImageView;
    new-instance v2, Lcom/gemini/play/MyVodTop3View$1;

    invoke-direct {v2, p0}, Lcom/gemini/play/MyVodTop3View$1;-><init>(Lcom/gemini/play/MyVodTop3View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodTop3View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .local v0, "back":Landroid/widget/ImageView;
    new-instance v2, Lcom/gemini/play/MyVodTop3View$2;

    invoke-direct {v2, p0}, Lcom/gemini/play/MyVodTop3View$2;-><init>(Lcom/gemini/play/MyVodTop3View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/gemini/play/MyVodTop3View;->iface:Lcom/gemini/play/ListViewInterface;

    .line 83
    return-void
.end method

.method public set_vod_top_center_text(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public set_vod_top_text(Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 87
    sget v0, Lcom/gemini/play/MGplayer;->vod_showpage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/MyVodTop3View;->vh:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
