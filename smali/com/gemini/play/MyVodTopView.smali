.class public Lcom/gemini/play/MyVodTopView;
.super Landroid/widget/LinearLayout;
.source "MyVodTopView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private listview:Landroid/widget/ListView;

.field private rate:F

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->_this:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->listview:Landroid/widget/ListView;

    .line 21
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 42
    iput-object p1, p0, Lcom/gemini/play/MyVodTopView;->_this:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09007e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/gemini/play/MyVodTopView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->_this:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->listview:Landroid/widget/ListView;

    .line 21
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput-object p1, p0, Lcom/gemini/play/MyVodTopView;->_this:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09007e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lcom/gemini/play/MyVodTopView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->_this:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->listview:Landroid/widget/ListView;

    .line 21
    iput-object v0, p0, Lcom/gemini/play/MyVodTopView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 28
    iput-object p1, p0, Lcom/gemini/play/MyVodTopView;->_this:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09007e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lcom/gemini/play/MyVodTopView;->init()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodTopView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTopView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/gemini/play/MyVodTopView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodTopView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTopView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/gemini/play/MyVodTopView;->_this:Landroid/content/Context;

    return-object v0
.end method

.method private setFlickerAnimation(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "iv_chat_head"    # Landroid/widget/ImageView;

    .prologue
    .line 109
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 110
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 111
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 112
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 113
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method


# virtual methods
.method init()V
    .locals 8

    .prologue
    const/high16 v7, 0x40c00000    # 6.0f

    .line 50
    iget-object v5, p0, Lcom/gemini/play/MyVodTopView;->_this:Landroid/content/Context;

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/gemini/play/MyVodTopView;->typeFace:Landroid/graphics/Typeface;

    .line 51
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v5

    iput v5, p0, Lcom/gemini/play/MyVodTopView;->rate:F

    .line 53
    const v5, 0x7f070040

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodTopView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, "vh":Landroid/widget/TextView;
    iget v5, p0, Lcom/gemini/play/MyVodTopView;->rate:F

    const/high16 v6, 0x40e00000    # 7.0f

    mul-float/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    iget-object v5, p0, Lcom/gemini/play/MyVodTopView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    const v5, 0x7f07003e

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodTopView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 58
    .local v3, "vh1":Landroid/widget/TextView;
    iget v5, p0, Lcom/gemini/play/MyVodTopView;->rate:F

    mul-float/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    iget-object v5, p0, Lcom/gemini/play/MyVodTopView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    const v5, 0x7f07003f

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodTopView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    .local v4, "vh2":Landroid/widget/TextView;
    iget v5, p0, Lcom/gemini/play/MyVodTopView;->rate:F

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    iget-object v5, p0, Lcom/gemini/play/MyVodTopView;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    new-instance v5, Lcom/gemini/play/MyVodTopView$1;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodTopView$1;-><init>(Lcom/gemini/play/MyVodTopView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v5, 0x7f070160

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodTopView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 73
    .local v1, "t":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/gemini/play/MyVodTopView;->setFlickerAnimation(Landroid/widget/ImageView;)V

    .line 75
    const v5, 0x7f070106

    invoke-virtual {p0, v5}, Lcom/gemini/play/MyVodTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, "options":Landroid/widget/ImageView;
    new-instance v5, Lcom/gemini/play/MyVodTopView$2;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyVodTopView$2;-><init>(Lcom/gemini/play/MyVodTopView;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/gemini/play/MyVodTopView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 88
    return-void
.end method

.method public set_vod_top_center_text(Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 98
    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "vh":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public set_vod_top_left_text(Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 104
    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "vh":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public set_vod_top_text(Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 92
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    .local v0, "vh":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
