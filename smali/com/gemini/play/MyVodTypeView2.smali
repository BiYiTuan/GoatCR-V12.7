.class public Lcom/gemini/play/MyVodTypeView2;
.super Landroid/widget/LinearLayout;
.source "MyVodTypeView2.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private enable_focus:Z

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private imager:[Landroid/widget/ImageView;

.field private index:I

.field private layouter:[Landroid/widget/LinearLayout;

.field private rate:F

.field private showIndex:I

.field private texter:[Landroid/widget/TextView;

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 27
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    .line 28
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    .line 29
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    .line 31
    iput v1, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    .line 32
    iput v1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 33
    iput-boolean v1, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    .line 51
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090083

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView2;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 27
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    .line 28
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    .line 29
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    .line 31
    iput v1, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    .line 32
    iput v1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 33
    iput-boolean v1, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    .line 44
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090083

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView2;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x7

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 27
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    .line 28
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    .line 29
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    .line 31
    iput v1, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    .line 32
    iput v1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 33
    iput-boolean v1, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    .line 37
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090083

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    invoke-direct {p0}, Lcom/gemini/play/MyVodTypeView2;->init()V

    .line 41
    return-void
.end method

.method private EnterEvent(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 360
    iget-boolean v0, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 370
    :pswitch_0
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v0, v2, :cond_2

    .line 372
    const-string v0, "0"

    invoke-direct {p0, v0, p1}, Lcom/gemini/play/MyVodTypeView2;->inputPasswordView(Ljava/lang/String;I)V

    goto :goto_0

    .line 374
    :cond_2
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-nez v0, :cond_0

    .line 376
    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 377
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const-string v1, "0"

    invoke-interface {v0, v3, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 381
    :pswitch_1
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v0, v2, :cond_3

    .line 383
    const-string v0, "1"

    invoke-direct {p0, v0, p1}, Lcom/gemini/play/MyVodTypeView2;->inputPasswordView(Ljava/lang/String;I)V

    goto :goto_0

    .line 385
    :cond_3
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-nez v0, :cond_0

    .line 387
    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 388
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const-string v1, "1"

    invoke-interface {v0, v3, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 392
    :pswitch_2
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_4

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v0, v2, :cond_4

    .line 394
    const-string v0, "2"

    invoke-direct {p0, v0, p1}, Lcom/gemini/play/MyVodTypeView2;->inputPasswordView(Ljava/lang/String;I)V

    goto :goto_0

    .line 396
    :cond_4
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-nez v0, :cond_0

    .line 398
    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 399
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const-string v1, "2"

    invoke-interface {v0, v3, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :pswitch_3
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_5

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v0, v2, :cond_5

    .line 405
    const-string v0, "3"

    invoke-direct {p0, v0, p1}, Lcom/gemini/play/MyVodTypeView2;->inputPasswordView(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 407
    :cond_5
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-nez v0, :cond_0

    .line 409
    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 410
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const-string v1, "3"

    invoke-interface {v0, v3, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :pswitch_4
    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 415
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const-string v1, "4"

    invoke-interface {v0, v2, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 418
    :pswitch_5
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    iget v1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :pswitch_6
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    const-string v1, "6"

    invoke-interface {v0, v5, v1}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodTypeView2;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView2;

    .prologue
    .line 20
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    return v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodTypeView2;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/MyVodTypeView2;->inputPasswordView(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodTypeView2;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView2;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyVodTypeView2;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView2;

    .prologue
    .line 20
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/gemini/play/MyVodTypeView2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView2;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/gemini/play/MyVodTypeView2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView2;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/gemini/play/MyVodTypeView2;->selectIndexNoFocus(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/gemini/play/MyVodTypeView2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView2;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/gemini/play/MyVodTypeView2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodTypeView2;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    return p1
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 60
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->typeFace:Landroid/graphics/Typeface;

    .line 61
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v3

    iput v3, p0, Lcom/gemini/play/MyVodTypeView2;->rate:F

    .line 63
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    const v3, 0x7f070023

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 64
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const/4 v5, 0x0

    const v3, 0x7f07001b

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 65
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 66
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$1;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodTypeView2$1;-><init>(Lcom/gemini/play/MyVodTypeView2;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    if-lt v3, v6, :cond_0

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    const v3, 0x7f070024

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 89
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v6

    .line 90
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v6

    .line 91
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v6

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$2;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodTypeView2$2;-><init>(Lcom/gemini/play/MyVodTypeView2;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    if-lt v3, v7, :cond_1

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    const v3, 0x7f070025

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v7

    .line 119
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v7

    .line 120
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const v3, 0x7f070011

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v7

    .line 121
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v7

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$3;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodTypeView2$3;-><init>(Lcom/gemini/play/MyVodTypeView2;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    if-lt v3, v8, :cond_2

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_2
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    const v3, 0x7f070026

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v8

    .line 148
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const v3, 0x7f07001e

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v8

    .line 149
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v8

    .line 150
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v8

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$4;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodTypeView2$4;-><init>(Lcom/gemini/play/MyVodTypeView2;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    if-lt v3, v9, :cond_3

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v8

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_3
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    const v3, 0x7f070027

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v9

    .line 176
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const v3, 0x7f07001f

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v9

    .line 177
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const v3, 0x7f070013

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v9

    .line 178
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v9

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$5;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodTypeView2$5;-><init>(Lcom/gemini/play/MyVodTypeView2;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    if-lt v3, v10, :cond_4

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v3, v3, v9

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 187
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_4
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v10

    .line 194
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const v3, 0x7f070020

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v10

    .line 195
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const v3, 0x7f070014

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v10

    .line 196
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v3, v3, v10

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$6;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodTypeView2$6;-><init>(Lcom/gemini/play/MyVodTypeView2;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_5

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v3, v3, v10

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v10

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v4, v4, v10

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :goto_5
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->imager:[Landroid/widget/ImageView;

    const/4 v5, 0x6

    const v3, 0x7f070029

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 212
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const/4 v5, 0x6

    const v3, 0x7f070021

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 213
    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const/4 v5, 0x6

    const v3, 0x7f070015

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    aput-object v3, v4, v5

    .line 214
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$7;

    invoke-direct {v4, p0}, Lcom/gemini/play/MyVodTypeView2$7;-><init>(Lcom/gemini/play/MyVodTypeView2;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v3, :cond_6

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v3, v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_6

    sget-object v3, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 224
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    sget-object v4, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_6
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_7
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 233
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/gemini/play/MyVodTypeView2;->rate:F

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 234
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 85
    .end local v0    # "ii":I
    :cond_0
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b00dc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b00dd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 144
    :cond_2
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b00de

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b00df

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 190
    :cond_4
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 208
    :cond_5
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 227
    :cond_6
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b00e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 237
    .restart local v0    # "ii":I
    :cond_7
    new-instance v3, Lcom/gemini/play/MyVodTypeView2$8;

    invoke-direct {v3, p0}, Lcom/gemini/play/MyVodTypeView2$8;-><init>(Lcom/gemini/play/MyVodTypeView2;)V

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 250
    iput-boolean v6, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    .line 252
    iget v3, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    iput v3, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 254
    const-string v2, ""

    .line 255
    .local v2, "timeout":Ljava/lang/String;
    sget v3, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    if-ne v3, v6, :cond_8

    .line 258
    sget-object v3, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b0080

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b0082

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    :cond_8
    :goto_8
    const v3, 0x7f0700cf

    invoke-virtual {p0, v3}, Lcom/gemini/play/MyVodTypeView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 274
    .local v1, "leftdaytext":Landroid/widget/TextView;
    iget v3, p0, Lcom/gemini/play/MyVodTypeView2;->rate:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 275
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void

    .line 263
    .end local v1    # "leftdaytext":Landroid/widget/TextView;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b0080

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v5, 0x7f0b0081

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method private inputClassifyPasswordView(II)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 504
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 505
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 506
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 507
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 508
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 509
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$9;

    invoke-direct {v4, p0, v2, p2, p1}, Lcom/gemini/play/MyVodTypeView2$9;-><init>(Lcom/gemini/play/MyVodTypeView2;Landroid/view/View;II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 532
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 533
    return-void
.end method

.method private inputPasswordView(Ljava/lang/String;I)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 538
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 540
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 541
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 542
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b00a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 543
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 544
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b0083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/MyVodTypeView2$10;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/gemini/play/MyVodTypeView2$10;-><init>(Lcom/gemini/play/MyVodTypeView2;Landroid/view/View;Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 566
    iget-object v3, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 568
    return-void
.end method

.method private selectIndexNoFocus(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 343
    iget-boolean v1, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    if-nez v1, :cond_1

    .line 356
    :cond_0
    return-void

    .line 348
    :cond_1
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 350
    if-ne p1, v0, :cond_2

    .line 351
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const v2, 0x7f0a0047

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 348
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public getSelectIndex()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 430
    iget-boolean v1, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    if-nez v1, :cond_0

    .line 484
    :goto_0
    return v0

    .line 435
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 484
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 438
    :sswitch_0
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    .line 439
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    if-gez v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    .line 441
    :cond_2
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodTypeView2;->selectIndex(I)V

    goto :goto_1

    .line 446
    :sswitch_1
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    .line 447
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 448
    iput v3, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    .line 449
    :cond_3
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodTypeView2;->selectIndex(I)V

    goto :goto_1

    .line 452
    :sswitch_2
    const-string v1, "TypeView2 DPAD LEFT"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 453
    iget v1, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    if-ge v1, v4, :cond_1

    .line 455
    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    iget v2, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v1, v0, :cond_4

    .line 457
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    invoke-direct {p0, v5, v0}, Lcom/gemini/play/MyVodTypeView2;->inputClassifyPasswordView(II)V

    goto :goto_1

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    invoke-interface {v0, v5, v6}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 461
    iput-boolean v3, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    goto :goto_1

    .line 469
    :sswitch_3
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    invoke-direct {p0, v0}, Lcom/gemini/play/MyVodTypeView2;->selectIndexNoFocus(I)V

    .line 470
    iget-object v0, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    invoke-interface {v0, v4, v6}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 471
    iput-boolean v3, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    goto :goto_1

    .line 476
    :sswitch_4
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    invoke-direct {p0, v0}, Lcom/gemini/play/MyVodTypeView2;->EnterEvent(I)V

    goto :goto_1

    .line 480
    :sswitch_5
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 481
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->_this:Landroid/content/Context;

    invoke-static {v1}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x52 -> :sswitch_5
    .end sparse-switch
.end method

.method public selectFirstIndex(I)V
    .locals 3
    .param p1, "iex"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    .line 329
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 331
    if-ne p1, v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 329
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 339
    :cond_1
    return-void
.end method

.method public selectIndex()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    .line 301
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodTypeView2;->selectIndex(I)V

    .line 302
    iget v0, p0, Lcom/gemini/play/MyVodTypeView2;->showIndex:I

    iput v0, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    .line 303
    return-void
.end method

.method public selectIndex(I)V
    .locals 3
    .param p1, "iex"    # I

    .prologue
    .line 307
    iget-boolean v1, p0, Lcom/gemini/play/MyVodTypeView2;->enable_focus:Z

    if-nez v1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_1
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->texter:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 314
    if-ne p1, v0, :cond_1

    .line 316
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 312
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/MyVodTypeView2;->layouter:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 323
    :cond_2
    iput p1, p0, Lcom/gemini/play/MyVodTypeView2;->index:I

    goto :goto_0
.end method

.method public setFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 489
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodTypeView2;->setFocusable(Z)V

    .line 490
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodTypeView2;->setFocusableInTouchMode(Z)V

    .line 491
    invoke-virtual {p0}, Lcom/gemini/play/MyVodTypeView2;->requestFocus()Z

    .line 492
    invoke-virtual {p0}, Lcom/gemini/play/MyVodTypeView2;->requestFocusFromTouch()Z

    .line 493
    return-void
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView2;->iface:Lcom/gemini/play/ListViewInterface;

    .line 296
    return-void
.end method
