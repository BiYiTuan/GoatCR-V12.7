.class public Lcom/gemini/play/MyBackInfoView;
.super Landroid/widget/LinearLayout;
.source "MyBackInfoView.java"


# instance fields
.field private FFButton:Landroid/widget/ImageButton;

.field private FRButton:Landroid/widget/ImageButton;

.field private _this:Landroid/content/Context;

.field private currentTime:I

.field private dateNow:Landroid/widget/TextView;

.field private dateTotal:Landroid/widget/TextView;

.field private endTime:I

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private isShow:Z

.field private previewdates:[Ljava/lang/String;

.field private previewindex:I

.field private previewweeks:[Ljava/lang/String;

.field public rHandler:Landroid/os/Handler;

.field private seekBar:Landroid/widget/SeekBar;

.field private seekBarValue:I

.field private startTime:I

.field private timeNow:Landroid/widget/TextView;

.field private timeTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->dateTotal:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->timeTotal:Landroid/widget/TextView;

    .line 44
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    .line 47
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->seekBarValue:I

    .line 49
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    .line 50
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    .line 51
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->endTime:I

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->previewdates:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->previewweeks:[Ljava/lang/String;

    .line 55
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->previewindex:I

    .line 57
    iput-boolean v3, p0, Lcom/gemini/play/MyBackInfoView;->isShow:Z

    .line 59
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->FRButton:Landroid/widget/ImageButton;

    .line 60
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->FFButton:Landroid/widget/ImageButton;

    .line 423
    new-instance v0, Lcom/gemini/play/MyBackInfoView$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackInfoView$6;-><init>(Lcom/gemini/play/MyBackInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/gemini/play/MyBackInfoView;->_this:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->dateTotal:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->timeTotal:Landroid/widget/TextView;

    .line 44
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    .line 47
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->seekBarValue:I

    .line 49
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    .line 50
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    .line 51
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->endTime:I

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->previewdates:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->previewweeks:[Ljava/lang/String;

    .line 55
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->previewindex:I

    .line 57
    iput-boolean v3, p0, Lcom/gemini/play/MyBackInfoView;->isShow:Z

    .line 59
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->FRButton:Landroid/widget/ImageButton;

    .line 60
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->FFButton:Landroid/widget/ImageButton;

    .line 423
    new-instance v0, Lcom/gemini/play/MyBackInfoView$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackInfoView$6;-><init>(Lcom/gemini/play/MyBackInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/gemini/play/MyBackInfoView;->_this:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 42
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->dateTotal:Landroid/widget/TextView;

    .line 43
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->timeTotal:Landroid/widget/TextView;

    .line 44
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    .line 47
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->seekBarValue:I

    .line 49
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    .line 50
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    .line 51
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->endTime:I

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->previewdates:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->previewweeks:[Ljava/lang/String;

    .line 55
    iput v3, p0, Lcom/gemini/play/MyBackInfoView;->previewindex:I

    .line 57
    iput-boolean v3, p0, Lcom/gemini/play/MyBackInfoView;->isShow:Z

    .line 59
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->FRButton:Landroid/widget/ImageButton;

    .line 60
    iput-object v2, p0, Lcom/gemini/play/MyBackInfoView;->FFButton:Landroid/widget/ImageButton;

    .line 423
    new-instance v0, Lcom/gemini/play/MyBackInfoView$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyBackInfoView$6;-><init>(Lcom/gemini/play/MyBackInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/gemini/play/MyBackInfoView;->_this:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->init()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyBackInfoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 37
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->seekBarValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MyBackInfoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyBackInfoView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/gemini/play/MyBackInfoView;->seekBarValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyBackInfoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 37
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    return v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyBackInfoView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyBackInfoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->urlCanBackward()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/gemini/play/MyBackInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->backward()V

    return-void
.end method

.method static synthetic access$500(Lcom/gemini/play/MyBackInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->forward()V

    return-void
.end method

.method private backward()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    .line 460
    invoke-virtual {p0}, Lcom/gemini/play/MyBackInfoView;->showViewNoTimeout()V

    .line 462
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    .line 463
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    iget v1, p0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    if-gtz v0, :cond_1

    .line 464
    :cond_0
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    iput v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 467
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    iget v1, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-string v1, "yyyy-MM-dd"

    invoke-static {v2, v3, v1}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    iget v1, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-string v1, "HH:mm"

    invoke-static {v2, v3, v1}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    invoke-direct {p0, v0}, Lcom/gemini/play/MyBackInfoView;->sendMessage(I)V

    .line 471
    return-void
.end method

.method private forward()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    .line 445
    invoke-virtual {p0}, Lcom/gemini/play/MyBackInfoView;->showViewNoTimeout()V

    .line 447
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    .line 448
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    iget v1, p0, Lcom/gemini/play/MyBackInfoView;->endTime:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    if-gtz v0, :cond_1

    .line 449
    :cond_0
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->endTime:I

    iput v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 452
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    iget v1, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-string v1, "yyyy-MM-dd"

    invoke-static {v2, v3, v1}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    iget v1, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-string v1, "HH:mm"

    invoke-static {v2, v3, v1}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget v0, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    invoke-direct {p0, v0}, Lcom/gemini/play/MyBackInfoView;->sendMessage(I)V

    .line 456
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/high16 v10, 0x40e00000    # 7.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x41000000    # 8.0f

    .line 85
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->_this:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Roboto-Bold.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 86
    .local v5, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v1

    .line 88
    .local v1, "rate":F
    const v6, 0x7f07010f

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "image_text":Landroid/widget/TextView;
    mul-float v6, v1, v8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    const v6, 0x7f0700b4

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "t1":Landroid/widget/TextView;
    const v6, 0x7f0700b5

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, "t4":Landroid/widget/TextView;
    const v6, 0x7f0700b7

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 98
    .local v4, "t5":Landroid/widget/TextView;
    const v6, 0x7f070086

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyBackInfoView;->dateTotal:Landroid/widget/TextView;

    .line 99
    const v6, 0x7f070163

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyBackInfoView;->timeTotal:Landroid/widget/TextView;

    .line 101
    const v6, 0x7f070085

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    .line 102
    const v6, 0x7f070162

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    .line 104
    mul-float v6, v1, v8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    mul-float v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    mul-float v6, v1, v8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->dateTotal:Landroid/widget/TextView;

    mul-float v7, v1, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->dateTotal:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->timeTotal:Landroid/widget/TextView;

    mul-float v7, v1, v10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->timeTotal:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    mul-float v7, v1, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    mul-float v7, v1, v10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    const v6, 0x7f07012e

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    .line 122
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    new-instance v7, Lcom/gemini/play/MyBackInfoView$1;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyBackInfoView$1;-><init>(Lcom/gemini/play/MyBackInfoView;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 144
    const v6, 0x7f070001

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/gemini/play/MyBackInfoView;->FRButton:Landroid/widget/ImageButton;

    .line 145
    const/high16 v6, 0x7f070000

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/gemini/play/MyBackInfoView;->FFButton:Landroid/widget/ImageButton;

    .line 154
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->FRButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/gemini/play/MyBackInfoView$2;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyBackInfoView$2;-><init>(Lcom/gemini/play/MyBackInfoView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v6, p0, Lcom/gemini/play/MyBackInfoView;->FFButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/gemini/play/MyBackInfoView$3;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyBackInfoView$3;-><init>(Lcom/gemini/play/MyBackInfoView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->previewDate()V

    .line 177
    return-void
.end method

.method private previewCurrent()Ljava/lang/String;
    .locals 14

    .prologue
    .line 312
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v4, "previewlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gemini/play/PreviewsStatus;>;"
    const/4 v0, 0x6

    .local v0, "ii":I
    :goto_0
    if-ltz v0, :cond_3

    .line 316
    sget-object v10, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v0}, Lcom/gemini/play/BACKplayer;->playbackGetVideoIntroductions(II)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "previewss":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "previewss:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " currentID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 319
    if-nez v6, :cond_1

    .line 314
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 322
    :cond_1
    const-string v10, "\\|"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "previews":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "kk":I
    :goto_1
    array-length v10, v5

    if-ge v2, v10, :cond_0

    .line 325
    new-instance v7, Lcom/gemini/play/PreviewsStatus;

    invoke-direct {v7}, Lcom/gemini/play/PreviewsStatus;-><init>()V

    .line 326
    .local v7, "s":Lcom/gemini/play/PreviewsStatus;
    aget-object v10, v5, v2

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "item":[Ljava/lang/String;
    array-length v10, v1

    const/4 v11, 0x2

    if-lt v10, v11, :cond_2

    .line 329
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/gemini/play/MyBackInfoView;->previewdates:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":00"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/gemini/play/PreviewsStatus;->date:Ljava/lang/String;

    .line 330
    const/4 v10, 0x1

    aget-object v10, v1, v10

    iput-object v10, v7, Lcom/gemini/play/PreviewsStatus;->preivews:Ljava/lang/String;

    .line 332
    :cond_2
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 336
    .end local v1    # "item":[Ljava/lang/String;
    .end local v2    # "kk":I
    .end local v5    # "previews":[Ljava/lang/String;
    .end local v6    # "previewss":Ljava/lang/String;
    .end local v7    # "s":Lcom/gemini/play/PreviewsStatus;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "previewlist size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_5

    .line 339
    const/4 v3, 0x0

    .line 355
    :cond_4
    return-object v3

    .line 341
    :cond_5
    const/4 v3, 0x0

    .line 343
    .local v3, "p":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_4

    .line 345
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/PreviewsStatus;

    .line 347
    .restart local v7    # "s":Lcom/gemini/play/PreviewsStatus;
    iget-object v10, v7, Lcom/gemini/play/PreviewsStatus;->date:Ljava/lang/String;

    invoke-static {v10}, Lcom/gemini/play/BACKplayer;->fromDateStringToLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    div-long v8, v10, v12

    .line 349
    .local v8, "time":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " currentTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 351
    iget v10, p0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_6

    .line 352
    iget-object v3, v7, Lcom/gemini/play/PreviewsStatus;->preivews:Ljava/lang/String;

    .line 343
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private previewDate()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x5

    .line 360
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    if-ge v3, v11, :cond_1

    .line 362
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 363
    .local v0, "calendar":Ljava/util/Calendar;
    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 365
    new-instance v1, Ljava/util/Date;

    sget-wide v6, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 366
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 368
    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 369
    .local v2, "day":I
    sub-int v5, v2, v3

    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 370
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 371
    .local v4, "week":I
    iget-object v5, p0, Lcom/gemini/play/MyBackInfoView;->previewdates:[Ljava/lang/String;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 372
    iget-object v5, p0, Lcom/gemini/play/MyBackInfoView;->previewweeks:[Ljava/lang/String;

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->week(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "day":I
    .end local v4    # "week":I
    :cond_1
    return-void
.end method

.method private sendMessage(I)V
    .locals 6
    .param p1, "time"    # I

    .prologue
    const/4 v3, 0x1

    .line 475
    iget-object v2, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    iget-object v2, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 479
    .local v1, "msg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 480
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "currentTime"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 483
    iget-object v2, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 484
    return-void
.end method

.method private urlCanBackward()Z
    .locals 2

    .prologue
    .line 488
    sget-object v0, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    const-string v1, "gemini://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/BACKplayer;->currentURL:Ljava/lang/String;

    const-string v1, "gp2p://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    :cond_0
    const/4 v0, 0x1

    .line 491
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hideInfoPanal()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/gemini/play/MyBackInfoView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 276
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gemini/play/MyBackInfoView;->isShow:Z

    .line 278
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v4, :cond_1

    .line 280
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 281
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 282
    new-instance v1, Lcom/gemini/play/MyBackInfoView$5;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyBackInfoView$5;-><init>(Lcom/gemini/play/MyBackInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyBackInfoView;->setFocusable(Z)V

    .line 301
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyBackInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 305
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyBackInfoView;->setFocusable(Z)V

    .line 306
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyBackInfoView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 404
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 405
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 406
    iget-object v1, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 407
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/gemini/play/MyBackInfoView;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 383
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyBackInfoView;->setFocusable(Z)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyBackInfoView;->setFocusableInTouchMode(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/gemini/play/MyBackInfoView;->requestFocus()Z

    .line 386
    invoke-virtual {p0}, Lcom/gemini/play/MyBackInfoView;->requestFocusFromTouch()Z

    .line 387
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 391
    packed-switch p1, :pswitch_data_0

    .line 399
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 393
    :pswitch_0
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->backward()V

    goto :goto_0

    .line 396
    :pswitch_1
    invoke-direct {p0}, Lcom/gemini/play/MyBackInfoView;->forward()V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/gemini/play/MyBackInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 379
    return-void
.end method

.method public showInfoView()V
    .locals 18

    .prologue
    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyBackInfoView;->isShown()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/gemini/play/MyBackInfoView;->isShow:Z

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyBackInfoView;->showViewTimeout()V

    .line 188
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/gemini/play/MyBackInfoView;->setVisibility(I)V

    .line 190
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "A20"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    sget-boolean v12, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 192
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v14, v14, 0x5

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-direct {v2, v12, v13, v14, v15}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 193
    .local v2, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v12, 0x12c

    invoke-virtual {v2, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 194
    new-instance v12, Lcom/gemini/play/MyBackInfoView$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/gemini/play/MyBackInfoView$4;-><init>(Lcom/gemini/play/MyBackInfoView;)V

    invoke-virtual {v2, v12}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 212
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/gemini/play/MyBackInfoView;->setFocusable(Z)V

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/gemini/play/MyBackInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    .end local v2    # "animation":Landroid/view/animation/TranslateAnimation;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/MyBackInfoView;->urlCanBackward()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 222
    const-string v12, "no"

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->mediaplayerstatue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, "statues":Ljava/lang/String;
    const-string v12, "ERROR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 226
    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, "statue":[Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x3

    if-lt v12, v13, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/SeekBar;->setMax(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gemini/play/MyBackInfoView;->dateTotal:Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x2710

    mul-long v14, v14, v16

    const-string v13, "yyyy-MM-dd"

    invoke-static {v14, v15, v13}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gemini/play/MyBackInfoView;->timeTotal:Landroid/widget/TextView;

    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x2710

    mul-long v14, v14, v16

    const-string v13, "HH:mm"

    invoke-static {v14, v15, v13}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gemini/play/MyBackInfoView;->seekBar:Landroid/widget/SeekBar;

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit8 v13, v13, 0xa

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gemini/play/MyBackInfoView;->dateNow:Landroid/widget/TextView;

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x2710

    mul-long v14, v14, v16

    const-string v13, "yyyy-MM-dd"

    invoke-static {v14, v15, v13}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gemini/play/MyBackInfoView;->timeNow:Landroid/widget/TextView;

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x2710

    mul-long v14, v14, v16

    const-string v13, "HH:mm"

    invoke-static {v14, v15, v13}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/gemini/play/MyBackInfoView;->startTime:I

    .line 238
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/gemini/play/MyBackInfoView;->currentTime:I

    .line 239
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/gemini/play/MyBackInfoView;->endTime:I

    .line 244
    .end local v10    # "statue":[Ljava/lang/String;
    .end local v11    # "statues":Ljava/lang/String;
    :cond_2
    sget-object v12, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    if-eqz v12, :cond_3

    sget-object v12, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 246
    const v12, 0x7f07010b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 247
    .local v4, "image":Landroid/widget/ImageView;
    const v12, 0x7f07010f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 248
    .local v6, "image_text":Landroid/widget/TextView;
    const v12, 0x7f0700b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/gemini/play/MyBackInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 250
    .local v9, "preview":Landroid/widget/TextView;
    sget-object v12, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/gemini/play/BACKplayer;->playbackGetVideoName(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "n":Ljava/lang/String;
    sget-object v12, Lcom/gemini/play/BACKplayer;->currentID:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/gemini/play/BACKplayer;->playbackGetVideoImage(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "i":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/MyBackInfoView;->_this:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/icon/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "imagePath":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "imagePath = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 255
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 256
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/MyBackInfoView;->previewCurrent()Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "p":Ljava/lang/String;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    .line 263
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .end local v3    # "i":Ljava/lang/String;
    .end local v4    # "image":Landroid/widget/ImageView;
    .end local v5    # "imagePath":Ljava/lang/String;
    .end local v6    # "image_text":Landroid/widget/TextView;
    .end local v7    # "n":Ljava/lang/String;
    .end local v8    # "p":Ljava/lang/String;
    .end local v9    # "preview":Landroid/widget/TextView;
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyBackInfoView;->listFocus()V

    goto/16 :goto_0

    .line 217
    :cond_4
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/gemini/play/MyBackInfoView;->setFocusable(Z)V

    goto/16 :goto_1

    .line 258
    .restart local v3    # "i":Ljava/lang/String;
    .restart local v4    # "image":Landroid/widget/ImageView;
    .restart local v5    # "imagePath":Ljava/lang/String;
    .restart local v6    # "image_text":Landroid/widget/TextView;
    .restart local v7    # "n":Ljava/lang/String;
    .restart local v9    # "preview":Landroid/widget/TextView;
    :cond_5
    const v12, 0x7f0a004e

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 265
    .restart local v8    # "p":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gemini/play/MyBackInfoView;->_this:Landroid/content/Context;

    const v13, 0x7f0b0047

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyBackInfoView;->hideViewTimeout()V

    .line 415
    return-void
.end method
