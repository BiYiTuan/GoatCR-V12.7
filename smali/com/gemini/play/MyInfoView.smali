.class public Lcom/gemini/play/MyInfoView;
.super Landroid/widget/LinearLayout;
.source "MyInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/MyInfoView$PlusThread;,
        Lcom/gemini/play/MyInfoView$MiusThread;
    }
.end annotation


# instance fields
.field private FFButton:Landroid/widget/ImageButton;

.field private FRButton:Landroid/widget/ImageButton;

.field private _this:Landroid/content/Context;

.field private currentTime:I

.field private dateNow:Landroid/widget/TextView;

.field private dateTotal:Landroid/widget/TextView;

.field private endTime:I

.field private iface:Lcom/gemini/play/ListViewInterface;

.field private image:Ljava/lang/String;

.field public isOnLongClick:Z

.field private isShow:Z

.field miusEnable:Z

.field miusThread:Lcom/gemini/play/MyInfoView$MiusThread;

.field private name:Ljava/lang/String;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field plusThread:Lcom/gemini/play/MyInfoView$PlusThread;

.field private preview:Ljava/lang/String;

.field public rHandler:Landroid/os/Handler;

.field private seekBar:Landroid/widget/SeekBar;

.field private seekBarValue:I

.field private startTime:I

.field private timeNow:Landroid/widget/TextView;

.field private timeTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->preview:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->name:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->image:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->dateTotal:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->timeTotal:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    .line 44
    iput v1, p0, Lcom/gemini/play/MyInfoView;->seekBarValue:I

    .line 46
    iput v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    .line 47
    iput v1, p0, Lcom/gemini/play/MyInfoView;->startTime:I

    .line 48
    iput v1, p0, Lcom/gemini/play/MyInfoView;->endTime:I

    .line 50
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isShow:Z

    .line 52
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->FRButton:Landroid/widget/ImageButton;

    .line 53
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->FFButton:Landroid/widget/ImageButton;

    .line 54
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    .line 55
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->miusEnable:Z

    .line 516
    new-instance v0, Lcom/gemini/play/MyInfoView$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyInfoView$6;-><init>(Lcom/gemini/play/MyInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    .line 590
    new-instance v0, Lcom/gemini/play/MyInfoView$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyInfoView$7;-><init>(Lcom/gemini/play/MyInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 69
    iput-object p1, p0, Lcom/gemini/play/MyInfoView;->_this:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090038

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->init_ui()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->preview:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->name:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->image:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->dateTotal:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->timeTotal:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    .line 44
    iput v1, p0, Lcom/gemini/play/MyInfoView;->seekBarValue:I

    .line 46
    iput v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    .line 47
    iput v1, p0, Lcom/gemini/play/MyInfoView;->startTime:I

    .line 48
    iput v1, p0, Lcom/gemini/play/MyInfoView;->endTime:I

    .line 50
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isShow:Z

    .line 52
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->FRButton:Landroid/widget/ImageButton;

    .line 53
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->FFButton:Landroid/widget/ImageButton;

    .line 54
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    .line 55
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->miusEnable:Z

    .line 516
    new-instance v0, Lcom/gemini/play/MyInfoView$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyInfoView$6;-><init>(Lcom/gemini/play/MyInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    .line 590
    new-instance v0, Lcom/gemini/play/MyInfoView$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyInfoView$7;-><init>(Lcom/gemini/play/MyInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    iput-object p1, p0, Lcom/gemini/play/MyInfoView;->_this:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090038

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->init_ui()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 35
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->preview:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->name:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->image:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->dateTotal:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->timeTotal:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    .line 44
    iput v1, p0, Lcom/gemini/play/MyInfoView;->seekBarValue:I

    .line 46
    iput v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    .line 47
    iput v1, p0, Lcom/gemini/play/MyInfoView;->startTime:I

    .line 48
    iput v1, p0, Lcom/gemini/play/MyInfoView;->endTime:I

    .line 50
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isShow:Z

    .line 52
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->FRButton:Landroid/widget/ImageButton;

    .line 53
    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->FFButton:Landroid/widget/ImageButton;

    .line 54
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    .line 55
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->miusEnable:Z

    .line 516
    new-instance v0, Lcom/gemini/play/MyInfoView$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyInfoView$6;-><init>(Lcom/gemini/play/MyInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    .line 590
    new-instance v0, Lcom/gemini/play/MyInfoView$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyInfoView$7;-><init>(Lcom/gemini/play/MyInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 77
    iput-object p1, p0, Lcom/gemini/play/MyInfoView;->_this:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090038

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->init_ui()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyInfoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 30
    iget v0, p0, Lcom/gemini/play/MyInfoView;->seekBarValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MyInfoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyInfoView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/gemini/play/MyInfoView;->seekBarValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyInfoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 30
    iget v0, p0, Lcom/gemini/play/MyInfoView;->startTime:I

    return v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyInfoView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyInfoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->urlCanBackward()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/gemini/play/MyInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->backward()V

    return-void
.end method

.method static synthetic access$500(Lcom/gemini/play/MyInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->forward()V

    return-void
.end method

.method static synthetic access$600(Lcom/gemini/play/MyInfoView;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyInfoView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/MyInfoView;->onTouchChange(Ljava/lang/String;I)V

    return-void
.end method

.method private backward()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    .line 553
    invoke-virtual {p0}, Lcom/gemini/play/MyInfoView;->showViewNoTimeout()V

    .line 555
    iget v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    .line 556
    iget v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    iget v1, p0, Lcom/gemini/play/MyInfoView;->startTime:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    if-gtz v0, :cond_1

    .line 557
    :cond_0
    iget v0, p0, Lcom/gemini/play/MyInfoView;->startTime:I

    iput v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/gemini/play/MyInfoView;->startTime:I

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 560
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    iget v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-string v1, "yyyy-MM-dd"

    invoke-static {v2, v3, v1}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    iget v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-string v1, "HH:mm"

    invoke-static {v2, v3, v1}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    invoke-direct {p0, v0}, Lcom/gemini/play/MyInfoView;->sendMessage(I)V

    .line 564
    return-void
.end method

.method private forward()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    .line 538
    invoke-virtual {p0}, Lcom/gemini/play/MyInfoView;->showViewNoTimeout()V

    .line 540
    iget v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    .line 541
    iget v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    iget v1, p0, Lcom/gemini/play/MyInfoView;->endTime:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    if-gtz v0, :cond_1

    .line 542
    :cond_0
    iget v0, p0, Lcom/gemini/play/MyInfoView;->endTime:I

    iput v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/gemini/play/MyInfoView;->startTime:I

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 545
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    iget v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-string v1, "yyyy-MM-dd"

    invoke-static {v2, v3, v1}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    iget v1, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    const-string v1, "HH:mm"

    invoke-static {v2, v3, v1}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget v0, p0, Lcom/gemini/play/MyInfoView;->currentTime:I

    invoke-direct {p0, v0}, Lcom/gemini/play/MyInfoView;->sendMessage(I)V

    .line 549
    return-void
.end method

.method private init_ui()V
    .locals 10

    .prologue
    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v8, 0x41000000    # 8.0f

    .line 85
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->_this:Landroid/content/Context;

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 86
    .local v5, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v1

    .line 88
    .local v1, "rate":F
    const v6, 0x7f07010f

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

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

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "t1":Landroid/widget/TextView;
    const v6, 0x7f0700b5

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, "t4":Landroid/widget/TextView;
    const v6, 0x7f0700b7

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 98
    .local v4, "t5":Landroid/widget/TextView;
    const v6, 0x7f070086

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyInfoView;->dateTotal:Landroid/widget/TextView;

    .line 99
    const v6, 0x7f070163

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyInfoView;->timeTotal:Landroid/widget/TextView;

    .line 101
    const v6, 0x7f070085

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    .line 102
    const v6, 0x7f070162

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

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
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->dateTotal:Landroid/widget/TextView;

    mul-float v7, v1, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->dateTotal:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->timeTotal:Landroid/widget/TextView;

    mul-float v7, v1, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->timeTotal:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    mul-float v7, v1, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    mul-float v7, v1, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    const v6, 0x7f07012e

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    .line 166
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    new-instance v7, Lcom/gemini/play/MyInfoView$1;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyInfoView$1;-><init>(Lcom/gemini/play/MyInfoView;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 187
    const v6, 0x7f070001

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/gemini/play/MyInfoView;->FRButton:Landroid/widget/ImageButton;

    .line 188
    const/high16 v6, 0x7f070000

    invoke-virtual {p0, v6}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/gemini/play/MyInfoView;->FFButton:Landroid/widget/ImageButton;

    .line 192
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->FRButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/gemini/play/MyInfoView$2;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyInfoView$2;-><init>(Lcom/gemini/play/MyInfoView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v6, p0, Lcom/gemini/play/MyInfoView;->FFButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/gemini/play/MyInfoView$3;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyInfoView$3;-><init>(Lcom/gemini/play/MyInfoView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    return-void
.end method

.method private onTouchChange(Ljava/lang/String;I)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "eventAction"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 613
    const-string v0, "mius"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 615
    if-nez p2, :cond_1

    .line 616
    new-instance v0, Lcom/gemini/play/MyInfoView$MiusThread;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyInfoView$MiusThread;-><init>(Lcom/gemini/play/MyInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->miusThread:Lcom/gemini/play/MyInfoView$MiusThread;

    .line 617
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    .line 618
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->miusThread:Lcom/gemini/play/MyInfoView$MiusThread;

    invoke-virtual {v0}, Lcom/gemini/play/MyInfoView$MiusThread;->start()V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    if-ne p2, v1, :cond_2

    .line 620
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->miusThread:Lcom/gemini/play/MyInfoView$MiusThread;

    if-eqz v0, :cond_0

    .line 621
    iput-boolean v2, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    goto :goto_0

    .line 623
    :cond_2
    if-ne p2, v3, :cond_0

    .line 624
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->miusThread:Lcom/gemini/play/MyInfoView$MiusThread;

    if-eqz v0, :cond_0

    .line 625
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    goto :goto_0

    .line 629
    :cond_3
    const-string v0, "plus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    if-nez p2, :cond_4

    .line 632
    new-instance v0, Lcom/gemini/play/MyInfoView$PlusThread;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyInfoView$PlusThread;-><init>(Lcom/gemini/play/MyInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyInfoView;->plusThread:Lcom/gemini/play/MyInfoView$PlusThread;

    .line 633
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    .line 634
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->plusThread:Lcom/gemini/play/MyInfoView$PlusThread;

    invoke-virtual {v0}, Lcom/gemini/play/MyInfoView$PlusThread;->start()V

    goto :goto_0

    .line 635
    :cond_4
    if-ne p2, v1, :cond_5

    .line 636
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->plusThread:Lcom/gemini/play/MyInfoView$PlusThread;

    if-eqz v0, :cond_0

    .line 637
    iput-boolean v2, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    goto :goto_0

    .line 639
    :cond_5
    if-ne p2, v3, :cond_0

    .line 640
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->plusThread:Lcom/gemini/play/MyInfoView$PlusThread;

    if-eqz v0, :cond_0

    .line 641
    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isOnLongClick:Z

    goto :goto_0
.end method

.method private previewCurrent(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "preview"    # Ljava/lang/String;

    .prologue
    .line 404
    if-eqz p1, :cond_0

    const-string v13, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 405
    :cond_0
    const/4 v13, 0x0

    .line 457
    :goto_0
    return-object v13

    .line 407
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 408
    .local v2, "calendar":Ljava/util/Calendar;
    sget-wide v14, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_2

    .line 410
    new-instance v3, Ljava/util/Date;

    sget-wide v14, Lcom/gemini/play/MGplayer;->seconds_prc:J

    invoke-direct {v3, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 411
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 413
    .end local v3    # "date":Ljava/util/Date;
    :cond_2
    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 414
    .local v9, "nhour":I
    const/16 v13, 0xc

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 416
    .local v10, "nminute":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "preview ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 418
    const-string v13, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 419
    .local v11, "previews":[Ljava/lang/String;
    array-length v13, v11

    if-gtz v13, :cond_3

    .line 420
    const/4 v13, 0x0

    goto :goto_0

    .line 422
    :cond_3
    const/4 v6, -0x1

    .line 423
    .local v6, "index":I
    const/4 v5, 0x0

    .local v5, "ii":I
    :goto_1
    array-length v13, v11

    if-ge v5, v13, :cond_6

    .line 425
    aget-object v13, v11, v5

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, "items":[Ljava/lang/String;
    array-length v13, v7

    const/4 v14, 0x2

    if-lt v13, v14, :cond_4

    .line 428
    const/4 v13, 0x0

    aget-object v13, v7, v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 429
    .local v12, "times":[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x2

    if-lt v13, v14, :cond_4

    .line 431
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 432
    .local v4, "hour":I
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 433
    .local v8, "minute":I
    if-ge v4, v9, :cond_5

    .line 435
    add-int/lit8 v6, v6, 0x1

    .line 423
    .end local v4    # "hour":I
    .end local v8    # "minute":I
    .end local v12    # "times":[Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 437
    .restart local v4    # "hour":I
    .restart local v8    # "minute":I
    .restart local v12    # "times":[Ljava/lang/String;
    :cond_5
    if-ne v4, v9, :cond_4

    if-gt v8, v10, :cond_4

    .line 439
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 445
    .end local v4    # "hour":I
    .end local v7    # "items":[Ljava/lang/String;
    .end local v8    # "minute":I
    .end local v12    # "times":[Ljava/lang/String;
    :cond_6
    if-ltz v6, :cond_8

    .line 447
    aget-object v13, v11, v6

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 448
    .restart local v7    # "items":[Ljava/lang/String;
    array-length v13, v7

    const/4 v14, 0x2

    if-lt v13, v14, :cond_7

    .line 450
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "preview ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 451
    const/4 v13, 0x1

    aget-object v13, v7, v13

    goto/16 :goto_0

    .line 454
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 457
    .end local v7    # "items":[Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private sendMessage(I)V
    .locals 6
    .param p1, "time"    # I

    .prologue
    const/4 v3, 0x1

    .line 568
    iget-object v2, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 572
    .local v1, "msg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "currentTime"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 576
    iget-object v2, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 577
    return-void
.end method

.method private urlCanBackward()Z
    .locals 2

    .prologue
    .line 581
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "gemini://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v1, "gp2p://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    const/4 v0, 0x1

    .line 584
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

    .line 363
    invoke-virtual {p0}, Lcom/gemini/play/MyInfoView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 368
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gemini/play/MyInfoView;->isShow:Z

    .line 370
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    if-ne v1, v4, :cond_1

    .line 372
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 373
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 374
    new-instance v1, Lcom/gemini/play/MyInfoView$5;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyInfoView$5;-><init>(Lcom/gemini/play/MyInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 392
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyInfoView;->setFocusable(Z)V

    .line 393
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 397
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/gemini/play/MyInfoView;->setFocusable(Z)V

    .line 398
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyInfoView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 487
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 488
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 489
    iget-object v1, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 490
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/gemini/play/MyInfoView;->isShow:Z

    return v0
.end method

.method public listFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 464
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyInfoView;->setFocusable(Z)V

    .line 465
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyInfoView;->setFocusableInTouchMode(Z)V

    .line 466
    invoke-virtual {p0}, Lcom/gemini/play/MyInfoView;->requestFocus()Z

    .line 467
    invoke-virtual {p0}, Lcom/gemini/play/MyInfoView;->requestFocusFromTouch()Z

    .line 468
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 472
    packed-switch p1, :pswitch_data_0

    .line 482
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 474
    :pswitch_0
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->urlCanBackward()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->backward()V

    goto :goto_0

    .line 478
    :pswitch_1
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->urlCanBackward()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/gemini/play/MyInfoView;->forward()V

    goto :goto_0

    .line 472
    nop

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
    .line 513
    iput-object p1, p0, Lcom/gemini/play/MyInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 514
    return-void
.end method

.method public showInfoPanal(Ljava/lang/String;)V
    .locals 28
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyInfoView;->isShown()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/gemini/play/MyInfoView;->isShow:Z

    .line 228
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->setVisibility(I)V

    .line 230
    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_5

    invoke-static {}, Lcom/gemini/play/MGplayer;->getCpuName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "A20"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    sget-boolean v23, Lcom/gemini/play/MGplayer;->need_scroll_list:Z

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 232
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/16 v23, 0x0

    const/16 v24, 0x0

    sget v25, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v25, v25, 0x3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 233
    .local v4, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v24, 0x1f4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 234
    new-instance v23, Lcom/gemini/play/MyInfoView$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/gemini/play/MyInfoView$4;-><init>(Lcom/gemini/play/MyInfoView;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 252
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->setFocusable(Z)V

    .line 253
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/play/MyInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    .end local v4    # "animation":Landroid/view/animation/TranslateAnimation;
    :goto_1
    if-eqz p1, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 262
    const v23, 0x7f07010b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 263
    .local v10, "image":Landroid/widget/ImageView;
    const v23, 0x7f07010f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 264
    .local v12, "image_text":Landroid/widget/TextView;
    const v23, 0x7f0700b5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 266
    .local v18, "preview":Landroid/widget/TextView;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/gemini/play/LIVEplayer;->getVideoName(I)Ljava/lang/String;

    move-result-object v16

    .line 267
    .local v16, "n":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/gemini/play/LIVEplayer;->getVideoImage(I)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "i":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const-string v11, ""

    .line 279
    .local v11, "imagePath":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v23

    const-string v24, "quanxing"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 280
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/data/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual/range {v24 .. v24}, Lcom/gemini/play/MGplayer;->getPackName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/temp/icon/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 283
    :goto_2
    invoke-static {v11}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 285
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    :goto_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/gemini/play/LIVEplayer;->getVideoIntroduction(I)Ljava/lang/String;

    move-result-object v19

    .line 292
    .local v19, "previewss":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/gemini/play/MyInfoView;->previewCurrent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 293
    .local v17, "p":Ljava/lang/String;
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_8

    .line 294
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .end local v9    # "i":Ljava/lang/String;
    .end local v10    # "image":Landroid/widget/ImageView;
    .end local v11    # "imagePath":Ljava/lang/String;
    .end local v12    # "image_text":Landroid/widget/TextView;
    .end local v16    # "n":Ljava/lang/String;
    .end local v17    # "p":Ljava/lang/String;
    .end local v18    # "preview":Landroid/widget/TextView;
    .end local v19    # "previewss":Ljava/lang/String;
    :cond_2
    :goto_4
    const v23, 0x7f0700b3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 300
    .local v13, "layout":Landroid/widget/LinearLayout;
    sget-object v23, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    if-eqz v23, :cond_9

    sget-object v23, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v24, "gemini://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_3

    sget-object v23, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    const-string v24, "gp2p://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 302
    :cond_3
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/MyInfoView;->urlCanBackward()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 311
    const-string v23, "no"

    invoke-static/range {v23 .. v23}, Lcom/gemini/play/MGplayer;->mediaplayerstatue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 312
    .local v21, "statues":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "statues="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 313
    if-eqz v21, :cond_0

    .line 316
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 317
    const-string v23, "ERROR"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 320
    const-string v23, "#"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 321
    .local v20, "statue":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    mul-int/lit8 v24, v24, 0xa

    const/16 v25, 0x0

    aget-object v25, v20, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    mul-int/lit8 v25, v25, 0xa

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/widget/SeekBar;->setMax(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->dateTotal:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x2710

    mul-long v24, v24, v26

    const-string v26, "yyyy-MM-dd"

    invoke-static/range {v24 .. v26}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->timeTotal:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x2710

    mul-long v24, v24, v26

    const-string v26, "HH:mm"

    invoke-static/range {v24 .. v26}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    mul-int/lit8 v24, v24, 0xa

    const/16 v25, 0x0

    aget-object v25, v20, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    mul-int/lit8 v25, v25, 0xa

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x2710

    mul-long v24, v24, v26

    const-string v26, "yyyy-MM-dd"

    invoke-static/range {v24 .. v26}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    const-wide/16 v26, 0x2710

    mul-long v24, v24, v26

    const-string v26, "HH:mm"

    invoke-static/range {v24 .. v26}, Lcom/gemini/play/MGplayer;->fromLongToDateString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const/16 v23, 0x0

    aget-object v23, v20, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gemini/play/MyInfoView;->startTime:I

    .line 333
    const/16 v23, 0x1

    aget-object v23, v20, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gemini/play/MyInfoView;->currentTime:I

    .line 334
    const/16 v23, 0x2

    aget-object v23, v20, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/gemini/play/MyInfoView;->endTime:I

    .line 358
    .end local v20    # "statue":[Ljava/lang/String;
    .end local v21    # "statues":Ljava/lang/String;
    :cond_4
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyInfoView;->listFocus()V

    goto/16 :goto_0

    .line 256
    .end local v13    # "layout":Landroid/widget/LinearLayout;
    :cond_5
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->setFocusable(Z)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/MyInfoView;->showViewTimeout()V

    goto/16 :goto_1

    .line 282
    .restart local v9    # "i":Ljava/lang/String;
    .restart local v10    # "image":Landroid/widget/ImageView;
    .restart local v11    # "imagePath":Ljava/lang/String;
    .restart local v12    # "image_text":Landroid/widget/TextView;
    .restart local v16    # "n":Ljava/lang/String;
    .restart local v18    # "preview":Landroid/widget/TextView;
    :cond_6
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->_this:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/icon/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 288
    :cond_7
    const v23, 0x7f0a004e

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 296
    .restart local v17    # "p":Ljava/lang/String;
    .restart local v19    # "previewss":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->_this:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0b0047

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 306
    .end local v9    # "i":Ljava/lang/String;
    .end local v10    # "image":Landroid/widget/ImageView;
    .end local v11    # "imagePath":Ljava/lang/String;
    .end local v12    # "image_text":Landroid/widget/TextView;
    .end local v16    # "n":Ljava/lang/String;
    .end local v17    # "p":Ljava/lang/String;
    .end local v18    # "preview":Landroid/widget/TextView;
    .end local v19    # "previewss":Ljava/lang/String;
    .restart local v13    # "layout":Landroid/widget/LinearLayout;
    :cond_9
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 338
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 339
    .local v5, "calendar":Ljava/util/Calendar;
    sget-wide v24, Lcom/gemini/play/MGplayer;->seconds_prc:J

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_b

    .line 341
    new-instance v6, Ljava/util/Date;

    sget-wide v24, Lcom/gemini/play/MGplayer;->seconds_prc:J

    move-wide/from16 v0, v24

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 342
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 344
    .end local v6    # "date":Ljava/util/Date;
    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 345
    .local v22, "year":I
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v23

    add-int/lit8 v15, v23, 0x1

    .line 346
    .local v15, "month":I
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 347
    .local v7, "day":I
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 348
    .local v8, "hour":I
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 350
    .local v14, "minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    invoke-virtual/range {v23 .. v24}, Landroid/widget/SeekBar;->setMax(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->dateTotal:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->timeTotal:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->seekBar:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    invoke-virtual/range {v23 .. v24}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->dateNow:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MyInfoView;->timeNow:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    :cond_0
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/gemini/play/MyInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyInfoView;->hideViewTimeout()V

    .line 498
    return-void
.end method
