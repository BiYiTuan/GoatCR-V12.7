.class public Lcom/gemini/play/MyVodInfoView;
.super Landroid/widget/LinearLayout;
.source "MyVodInfoView.java"


# instance fields
.field private _this:Landroid/content/Context;

.field private iface:Lcom/gemini/play/ListViewInterface;

.field public rHandler:Landroid/os/Handler;

.field private seekBarValue:I

.field private seekbar_progress:Landroid/widget/SeekBar;

.field private text_progress:Landroid/widget/TextView;

.field private text_tip:Landroid/widget/TextView;

.field private text_title:Landroid/widget/TextView;

.field private text_total:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->_this:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 267
    new-instance v0, Lcom/gemini/play/MyVodInfoView$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodInfoView$4;-><init>(Lcom/gemini/play/MyVodInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/gemini/play/MyVodInfoView;->_this:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090078

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/gemini/play/MyVodInfoView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->_this:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 267
    new-instance v0, Lcom/gemini/play/MyVodInfoView$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodInfoView$4;-><init>(Lcom/gemini/play/MyVodInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/gemini/play/MyVodInfoView;->_this:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090078

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/gemini/play/MyVodInfoView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->_this:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 267
    new-instance v0, Lcom/gemini/play/MyVodInfoView$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyVodInfoView$4;-><init>(Lcom/gemini/play/MyVodInfoView;)V

    iput-object v0, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/gemini/play/MyVodInfoView;->_this:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090078

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    invoke-direct {p0}, Lcom/gemini/play/MyVodInfoView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyVodInfoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodInfoView;

    .prologue
    .line 25
    iget v0, p0, Lcom/gemini/play/MyVodInfoView;->seekBarValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/gemini/play/MyVodInfoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/MyVodInfoView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/gemini/play/MyVodInfoView;->seekBarValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/gemini/play/MyVodInfoView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodInfoView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/gemini/play/MyVodInfoView;->intToTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyVodInfoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodInfoView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView;->text_progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyVodInfoView;)Lcom/gemini/play/ListViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyVodInfoView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    .line 57
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->_this:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/Roboto-Bold.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 58
    .local v1, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    .line 60
    .local v0, "rate":F
    const v2, 0x7f0700b6

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_title:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0700b5

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_tip:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0700b9

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_progress:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0700ba

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_total:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0700b8

    invoke-virtual {p0, v2}, Lcom/gemini/play/MyVodInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/gemini/play/MyVodInfoView;->seekbar_progress:Landroid/widget/SeekBar;

    .line 65
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->seekbar_progress:Landroid/widget/SeekBar;

    new-instance v3, Lcom/gemini/play/MyVodInfoView$1;

    invoke-direct {v3, p0}, Lcom/gemini/play/MyVodInfoView$1;-><init>(Lcom/gemini/play/MyVodInfoView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_progress:Landroid/widget/TextView;

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_progress:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_total:Landroid/widget/TextView;

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_total:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_title:Landroid/widget/TextView;

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 93
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_title:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_tip:Landroid/widget/TextView;

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_tip:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    return-void
.end method

.method private intToTime(I)Ljava/lang/String;
    .locals 12
    .param p1, "timeMs"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v1, "mFormatBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 203
    .local v2, "mFormatter":Ljava/util/Formatter;
    div-int/lit16 v5, p1, 0x3e8

    .line 205
    .local v5, "totalSeconds":I
    rem-int/lit8 v4, v5, 0x3c

    .line 206
    .local v4, "seconds":I
    div-int/lit8 v6, v5, 0x3c

    rem-int/lit8 v3, v6, 0x3c

    .line 207
    .local v3, "minutes":I
    div-int/lit16 v0, v5, 0xe10

    .line 209
    .local v0, "hours":I
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 210
    if-lez v0, :cond_0

    .line 211
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public backward()V
    .locals 3

    .prologue
    .line 232
    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/gemini/play/VODplayer;->backward(Ljava/lang/String;Landroid/os/Handler;)I

    move-result v0

    .line 233
    .local v0, "progress":I
    iget-object v1, p0, Lcom/gemini/play/MyVodInfoView;->seekbar_progress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 234
    iget-object v1, p0, Lcom/gemini/play/MyVodInfoView;->text_progress:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/gemini/play/MyVodInfoView;->intToTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->showViewTimeout()V

    .line 236
    return-void
.end method

.method public forward()V
    .locals 3

    .prologue
    .line 240
    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/gemini/play/VODplayer;->forward(Ljava/lang/String;Landroid/os/Handler;)I

    move-result v0

    .line 241
    .local v0, "progress":I
    iget-object v1, p0, Lcom/gemini/play/MyVodInfoView;->seekbar_progress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 242
    iget-object v1, p0, Lcom/gemini/play/MyVodInfoView;->text_progress:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/gemini/play/MyVodInfoView;->intToTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->showViewTimeout()V

    .line 244
    return-void
.end method

.method public hideInfoPanal()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 174
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 175
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 176
    new-instance v1, Lcom/gemini/play/MyVodInfoView$3;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodInfoView$3;-><init>(Lcom/gemini/play/MyVodInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodInfoView;->setFocusable(Z)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    return-void
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 248
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 249
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 250
    iget-object v1, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 251
    return-void
.end method

.method public listFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodInfoView;->setFocusable(Z)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodInfoView;->setFocusableInTouchMode(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->requestFocus()Z

    .line 227
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->requestFocusFromTouch()Z

    .line 228
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 124
    :pswitch_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->backward()V

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->forward()V

    goto :goto_0

    .line 122
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
    .line 219
    iput-object p1, p0, Lcom/gemini/play/MyVodInfoView;->iface:Lcom/gemini/play/ListViewInterface;

    .line 220
    return-void
.end method

.method public setProgress()V
    .locals 4

    .prologue
    .line 101
    sget-object v2, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 103
    sget-object v2, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/VODplayer;->getProgress(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "progress":I
    sget-object v2, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/VODplayer;->getTotal(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, "total":I
    if-le v0, v1, :cond_0

    .line 106
    move v0, v1

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_progress:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/gemini/play/MyVodInfoView;->intToTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->text_total:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/gemini/play/MyVodInfoView;->intToTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->seekbar_progress:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 110
    iget-object v2, p0, Lcom/gemini/play/MyVodInfoView;->seekbar_progress:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 112
    .end local v0    # "progress":I
    .end local v1    # "total":I
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView;->text_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public showInfoView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->setProgress()V

    .line 141
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->showViewTimeout()V

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodInfoView;->setVisibility(I)V

    .line 144
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 145
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 146
    new-instance v1, Lcom/gemini/play/MyVodInfoView$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/MyVodInfoView$2;-><init>(Lcom/gemini/play/MyVodInfoView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/gemini/play/MyVodInfoView;->setFocusable(Z)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/gemini/play/MyVodInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/MyVodInfoView;->hideViewTimeout()V

    .line 259
    return-void
.end method
