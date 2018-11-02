.class public Lcom/gemini/play/MyVScrollText;
.super Landroid/widget/TextView;
.source "MyVScrollText.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private texts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/MyVScrollText;->iface:Lcom/gemini/play/ListViewInterface;

    .line 37
    iput-object p1, p0, Lcom/gemini/play/MyVScrollText;->_this:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/gemini/play/MyVScrollText;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/MyVScrollText;->iface:Lcom/gemini/play/ListViewInterface;

    .line 30
    iput-object p1, p0, Lcom/gemini/play/MyVScrollText;->_this:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/gemini/play/MyVScrollText;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/MyVScrollText;->iface:Lcom/gemini/play/ListViewInterface;

    .line 23
    iput-object p1, p0, Lcom/gemini/play/MyVScrollText;->_this:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/gemini/play/MyVScrollText;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method


# virtual methods
.method public listFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVScrollText;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVScrollText;->setFocusableInTouchMode(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/gemini/play/MyVScrollText;->requestFocus()Z

    .line 91
    invoke-virtual {p0}, Lcom/gemini/play/MyVScrollText;->requestFocusFromTouch()Z

    .line 92
    return-void
.end method

.method public scrollRun()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVScrollText;->setVisibility(I)V

    .line 54
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 55
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 56
    new-instance v1, Lcom/gemini/play/MyVScrollText$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVScrollText$1;-><init>(Lcom/gemini/play/MyVScrollText;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVScrollText;->setFocusable(Z)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVScrollText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/gemini/play/MyVScrollText;->iface:Lcom/gemini/play/ListViewInterface;

    .line 97
    return-void
.end method

.method public setTexts([Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # [Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/gemini/play/MyVScrollText;->texts:[Ljava/lang/String;

    .line 49
    return-void
.end method
