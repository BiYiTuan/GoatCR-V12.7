.class public Lcom/gemini/play/MyHomeBar;
.super Landroid/widget/LinearLayout;
.source "MyHomeBar.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private animation:Landroid/view/animation/TranslateAnimation;

.field private barindex:I

.field private iface:Lcom/gemini/play/LauncherInterface;

.field private mlayout:Landroid/widget/LinearLayout;

.field private rHandler:Landroid/os/Handler;

.field private t:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    .line 26
    iput v3, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    .line 27
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar;->iface:Lcom/gemini/play/LauncherInterface;

    .line 145
    new-instance v0, Lcom/gemini/play/MyHomeBar$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyHomeBar$2;-><init>(Lcom/gemini/play/MyHomeBar;)V

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar;->_this:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    invoke-direct {p0}, Lcom/gemini/play/MyHomeBar;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    .line 26
    iput v3, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    .line 27
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar;->iface:Lcom/gemini/play/LauncherInterface;

    .line 145
    new-instance v0, Lcom/gemini/play/MyHomeBar$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyHomeBar$2;-><init>(Lcom/gemini/play/MyHomeBar;)V

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar;->_this:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/gemini/play/MyHomeBar;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    .line 26
    iput v3, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    .line 27
    iput-object v2, p0, Lcom/gemini/play/MyHomeBar;->iface:Lcom/gemini/play/LauncherInterface;

    .line 145
    new-instance v0, Lcom/gemini/play/MyHomeBar$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyHomeBar$2;-><init>(Lcom/gemini/play/MyHomeBar;)V

    iput-object v0, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar;->_this:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    invoke-direct {p0}, Lcom/gemini/play/MyHomeBar;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyHomeBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar;

    .prologue
    .line 20
    iget v0, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    return v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyHomeBar;)Lcom/gemini/play/LauncherInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar;->iface:Lcom/gemini/play/LauncherInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyHomeBar;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyHomeBar;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/16 v7, 0x80

    .line 55
    const v4, 0x7f0700c1

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyHomeBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    .line 57
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    const/4 v6, 0x0

    const v4, 0x7f070148

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyHomeBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 58
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    const/4 v6, 0x1

    const v4, 0x7f070149

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyHomeBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 59
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    const/4 v6, 0x2

    const v4, 0x7f07014a

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyHomeBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 60
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    const/4 v6, 0x3

    const v4, 0x7f07014b

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyHomeBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 61
    iget-object v5, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    const/4 v6, 0x4

    const v4, 0x7f07014c

    invoke-virtual {p0, v4}, Lcom/gemini/play/MyHomeBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 63
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar;->_this:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 65
    .local v3, "typeFace":Landroid/graphics/Typeface;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dm.density "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/gemini/play/MGplayer;->screenHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/gemini/play/MGplayer;->screenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 66
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 68
    .local v2, "rate":I
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 70
    move v1, v0

    .line 71
    .local v1, "kk":I
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v4, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    new-instance v5, Lcom/gemini/play/MyHomeBar$1;

    invoke-direct {v5, p0, v1}, Lcom/gemini/play/MyHomeBar$1;-><init>(Lcom/gemini/play/MyHomeBar;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "kk":I
    :cond_0
    return-void
.end method

.method private selectTextView(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x80

    .line 227
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/MyHomeBar;->t:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v2, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    return-void
.end method


# virtual methods
.method public flash()V
    .locals 9

    .prologue
    .line 234
    sget v6, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v3, v6, 0x5

    .line 235
    .local v3, "len":I
    iget v6, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    add-int/lit8 v1, v6, -0x2

    .line 236
    .local v1, "index2":I
    rsub-int/lit8 v6, v1, 0x0

    mul-int v2, v6, v3

    .line 237
    .local v2, "left":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    .line 238
    .local v4, "top":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    .line 239
    .local v5, "width":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 240
    .local v0, "height":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 241
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    add-int v7, v2, v5

    add-int v8, v4, v0

    invoke-virtual {v6, v2, v4, v7, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 242
    return-void
.end method

.method public getBarindex()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    return v0
.end method

.method public selectIndex(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "direct"    # I

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/gemini/play/MyHomeBar;->selectIndex(III)V

    .line 168
    return-void
.end method

.method public selectIndex(III)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "direct"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectIndex ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 173
    sget v6, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v3, v6, 0x5

    .line 174
    .local v3, "len":I
    iput p1, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    .line 175
    add-int/lit8 v1, p1, -0x2

    .line 177
    .local v1, "index2":I
    if-ne p2, v10, :cond_3

    .line 178
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    mul-int v7, p3, v3

    int-to-float v7, v7

    invoke-direct {v6, v8, v7, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v6, p0, Lcom/gemini/play/MyHomeBar;->animation:Landroid/view/animation/TranslateAnimation;

    .line 183
    :cond_0
    :goto_0
    if-eq p2, v10, :cond_1

    if-nez p2, :cond_4

    .line 185
    :cond_1
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->animation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 187
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->animation:Landroid/view/animation/TranslateAnimation;

    new-instance v7, Lcom/gemini/play/MyHomeBar$3;

    invoke-direct {v7, p0, v1, v3}, Lcom/gemini/play/MyHomeBar$3;-><init>(Lcom/gemini/play/MyHomeBar;II)V

    invoke-virtual {v6, v7}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 210
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/gemini/play/MyHomeBar;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/gemini/play/MyHomeBar;->selectTextView(I)V

    .line 223
    return-void

    .line 179
    :cond_3
    if-nez p2, :cond_0

    .line 180
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    mul-int v7, p3, v3

    rsub-int/lit8 v7, v7, 0x0

    int-to-float v7, v7

    invoke-direct {v6, v8, v7, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v6, p0, Lcom/gemini/play/MyHomeBar;->animation:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 213
    :cond_4
    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    .line 214
    mul-int v2, v1, v3

    .line 215
    .local v2, "left":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    .line 216
    .local v4, "top":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    .line 217
    .local v5, "width":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 218
    .local v0, "height":I
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 219
    iget-object v6, p0, Lcom/gemini/play/MyHomeBar;->mlayout:Landroid/widget/LinearLayout;

    add-int v7, v2, v5

    add-int v8, v4, v0

    invoke-virtual {v6, v2, v4, v7, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_1
.end method

.method public selectafter()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyHomeBar;->selectafter(Z)V

    .line 93
    return-void
.end method

.method public selectafter(Z)V
    .locals 6
    .param p1, "delay"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 97
    iget v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    .line 98
    iget v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    if-le v2, v4, :cond_0

    .line 100
    iput v4, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    .line 115
    :goto_0
    return-void

    .line 104
    :cond_0
    iget v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    invoke-direct {p0, v2}, Lcom/gemini/play/MyHomeBar;->selectTextView(I)V

    .line 106
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 107
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 109
    iput v3, v1, Landroid/os/Message;->what:I

    .line 110
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public selectpre()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyHomeBar;->selectpre(Z)V

    .line 120
    return-void
.end method

.method public selectpre(Z)V
    .locals 6
    .param p1, "delay"    # Z

    .prologue
    const/4 v3, 0x1

    .line 124
    iget v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    .line 125
    iget v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    if-gez v2, :cond_0

    .line 127
    const/4 v2, 0x0

    iput v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    .line 143
    :goto_0
    return-void

    .line 132
    :cond_0
    iget v2, p0, Lcom/gemini/play/MyHomeBar;->barindex:I

    invoke-direct {p0, v2}, Lcom/gemini/play/MyHomeBar;->selectTextView(I)V

    .line 134
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 135
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 137
    iput v3, v1, Landroid/os/Message;->what:I

    .line 138
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    if-ne p1, v3, :cond_1

    .line 140
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setInterface(Lcom/gemini/play/LauncherInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/LauncherInterface;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar;->iface:Lcom/gemini/play/LauncherInterface;

    .line 252
    return-void
.end method
