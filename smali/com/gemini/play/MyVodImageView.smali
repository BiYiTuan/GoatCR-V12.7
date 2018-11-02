.class public Lcom/gemini/play/MyVodImageView;
.super Landroid/widget/LinearLayout;
.source "MyVodImageView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private image:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->_this:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 17
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->image:Landroid/widget/ImageView;

    .line 21
    iput-object p1, p0, Lcom/gemini/play/MyVodImageView;->_this:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090077

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    invoke-virtual {p0}, Lcom/gemini/play/MyVodImageView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->_this:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 17
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->image:Landroid/widget/ImageView;

    .line 28
    iput-object p1, p0, Lcom/gemini/play/MyVodImageView;->_this:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090077

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lcom/gemini/play/MyVodImageView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->_this:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 17
    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->image:Landroid/widget/ImageView;

    .line 35
    iput-object p1, p0, Lcom/gemini/play/MyVodImageView;->_this:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090077

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lcom/gemini/play/MyVodImageView;->init()V

    .line 38
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodImageView;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0700b0

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gemini/play/MyVodImageView;->image:Landroid/widget/ImageView;

    .line 43
    return-void
.end method

.method public pauseImage()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/gemini/play/MyVodImageView;->image:Landroid/widget/ImageView;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/gemini/play/MyVodImageView;->showView()V

    .line 60
    return-void
.end method

.method public playImage()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/gemini/play/MyVodImageView;->image:Landroid/widget/ImageView;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/gemini/play/MyVodImageView;->showView()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/MyVodImageView$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodImageView$1;-><init>(Lcom/gemini/play/MyVodImageView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    return-void
.end method

.method public showView()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodImageView;->setVisibility(I)V

    .line 66
    return-void
.end method
