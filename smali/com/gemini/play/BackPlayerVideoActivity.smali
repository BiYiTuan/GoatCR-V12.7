.class public Lcom/gemini/play/BackPlayerVideoActivity;
.super Landroid/app/Activity;
.source "BackPlayerVideoActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private back_id:Ljava/lang/String;

.field private back_time:Ljava/lang/String;

.field private backbutton:Landroid/widget/Button;

.field private backlayout:Landroid/widget/LinearLayout;

.field private detector:Landroid/view/GestureDetector;

.field private infoview:Lcom/gemini/play/MyBackInfoView;

.field private isexit:Z

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onInfoPressed:Lcom/gemini/play/ListViewInterface;

.field public onScrollView:Lcom/gemini/play/ScrollViewInterface;

.field private onescroller:Lcom/gemini/play/ScrollTextView;

.field public rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->back_id:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->back_time:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    .line 39
    iput-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->detector:Landroid/view/GestureDetector;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->isexit:Z

    .line 43
    iput-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->backbutton:Landroid/widget/Button;

    .line 47
    iput-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 287
    new-instance v0, Lcom/gemini/play/BackPlayerVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerVideoActivity$5;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    .line 304
    new-instance v0, Lcom/gemini/play/BackPlayerVideoActivity$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerVideoActivity$6;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onInfoPressed:Lcom/gemini/play/ListViewInterface;

    .line 406
    new-instance v0, Lcom/gemini/play/BackPlayerVideoActivity$9;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerVideoActivity$9;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    .line 446
    new-instance v0, Lcom/gemini/play/BackPlayerVideoActivity$10;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerVideoActivity$10;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->rHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/BackPlayerVideoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->back_time:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/BackPlayerVideoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->back_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/BackPlayerVideoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/gemini/play/BackPlayerVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/BackPlayerVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->isexit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/gemini/play/BackPlayerVideoActivity;)Lcom/gemini/play/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    return-object v0
.end method

.method private hideAllView()Z
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "v":I
    iget-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackInfoView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackInfoView;->hideInfoPanal()V

    .line 268
    const/4 v0, 0x1

    .line 270
    :cond_0
    if-lez v0, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->videoSetFocus()V

    .line 273
    const/4 v1, 0x1

    .line 277
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init_ui()V
    .locals 25

    .prologue
    .line 98
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v24

    .line 99
    .local v24, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v22

    .line 101
    .local v22, "rate":F
    const v7, 0x7f070115

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    .line 102
    .local v21, "progressBar":Landroid/widget/FrameLayout;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .local v18, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, 0x42580000    # 54.0f

    mul-float v7, v7, v22

    float-to-int v7, v7

    move-object/from16 v0, v18

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 104
    const/high16 v7, 0x42180000    # 38.0f

    mul-float v7, v7, v22

    float-to-int v7, v7

    move-object/from16 v0, v18

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const v7, 0x7f070117

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 108
    .local v23, "speedView":Landroid/widget/TextView;
    const/high16 v7, 0x40e00000    # 7.0f

    mul-float v7, v7, v22

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    .line 112
    .local v19, "mHandler":Landroid/os/Handler;
    new-instance v20, Lcom/gemini/play/BackPlayerVideoActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gemini/play/BackPlayerVideoActivity$2;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 129
    .local v20, "mRunnable":Ljava/lang/Runnable;
    const-wide/16 v8, 0x3e8

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    const v7, 0x7f070060

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->backbutton:Landroid/widget/Button;

    .line 133
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->backbutton:Landroid/widget/Button;

    const/high16 v8, 0x41000000    # 8.0f

    mul-float v8, v8, v22

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 134
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->backbutton:Landroid/widget/Button;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->backbutton:Landroid/widget/Button;

    new-instance v8, Lcom/gemini/play/BackPlayerVideoActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/gemini/play/BackPlayerVideoActivity$3;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v7, 0x7f070123

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/ScrollTextView;

    .line 145
    .local v6, "scroller":Lcom/gemini/play/ScrollTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/BackPlayerVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 146
    sget-object v7, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 148
    const-string v7, "start scrolltext"

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 149
    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    sget-object v8, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x40200000    # 2.5f

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v14

    mul-float/2addr v7, v14

    float-to-int v14, v7

    const-string v15, "FFFFFF"

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v15}, Lcom/gemini/play/ScrollTextView;->start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;)V

    .line 153
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->scroll_every_interface(Lcom/gemini/play/ScrollViewInterface;)V

    .line 154
    sget-object v7, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 157
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/BackPlayerVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 158
    const-string v7, "start onescroll_txt"

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    sget-object v9, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x40200000    # 2.5f

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v15

    mul-float/2addr v8, v15

    float-to-int v15, v8

    const-string v16, "FFFFFF"

    sget v17, Lcom/gemini/play/MGplayer;->onescroll_times:I

    move-object/from16 v8, p0

    invoke-virtual/range {v7 .. v17}, Lcom/gemini/play/ScrollTextView;->start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V

    .line 163
    :cond_1
    return-void
.end method

.method private showBacklayout()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/BackPlayerVideoActivity$4;

    invoke-direct {v1, p0}, Lcom/gemini/play/BackPlayerVideoActivity$4;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_0
    return-void
.end method

.method public static stopVideoForHard(Lcom/gemini/play/VideoView;)V
    .locals 1
    .param p0, "mVideoView"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 374
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 376
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->stopPlayback()V

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->pause()V

    .line 381
    return-void
.end method

.method public static stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V
    .locals 1
    .param p0, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 385
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 387
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 392
    return-void
.end method

.method private videoSetFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 427
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_1

    .line 429
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setFocusable(Z)V

    .line 430
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setFocusableInTouchMode(Z)V

    .line 431
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->requestFocus()Z

    .line 432
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->requestFocusFromTouch()Z

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setFocusable(Z)V

    .line 439
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setFocusableInTouchMode(Z)V

    .line 440
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->requestFocus()Z

    .line 441
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->requestFocusFromTouch()Z

    goto :goto_0
.end method


# virtual methods
.method public exitActivity()V
    .locals 3

    .prologue
    .line 469
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 471
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/BackPlayerVideoActivity$11;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayerVideoActivity$11;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 480
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/BackPlayerVideoActivity$12;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayerVideoActivity$12;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 487
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 488
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/gemini/play/BackPlayerVideoActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/BackPlayerVideoActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->back_id:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->back_time:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->detector:Landroid/view/GestureDetector;

    .line 62
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/VlcVideoView;

    sput-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 63
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VideoView;

    sput-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 65
    const v0, 0x7f0700f5

    invoke-virtual {p0, v0}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/MyBackInfoView;

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    .line 66
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    iget-object v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onInfoPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackInfoView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 68
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 70
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f070105

    invoke-virtual {p0, v0}, Lcom/gemini/play/BackPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/ScrollTextView;

    iput-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 74
    invoke-direct {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->init_ui()V

    .line 77
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->back_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/BackPlayerVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/BackPlayerVideoActivity$1;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/gemini/play/BACKplayer;->checkVideo(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->videoSetFocus()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->stopVideo()V

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 170
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackInfoView;->showInfoView()V

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v2, 0x41a00000    # 20.0f

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 219
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 369
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 323
    :sswitch_1
    invoke-direct {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->hideAllView()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 327
    iget-boolean v1, p0, Lcom/gemini/play/BackPlayerVideoActivity;->isexit:Z

    if-ne v1, v0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->stopVideo()V

    .line 330
    invoke-static {}, Lcom/gemini/play/BACKplayer;->stopCheckVideo()V

    .line 331
    iput-boolean v2, p0, Lcom/gemini/play/BackPlayerVideoActivity;->isexit:Z

    .line 332
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gemini/play/BackPlayerVideoActivity$7;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayerVideoActivity$7;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 339
    :cond_1
    iput-boolean v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->isexit:Z

    .line 340
    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 341
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gemini/play/BackPlayerVideoActivity$8;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayerVideoActivity$8;-><init>(Lcom/gemini/play/BackPlayerVideoActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 359
    :sswitch_2
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackInfoView;->showInfoView()V

    .line 360
    invoke-direct {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->showBacklayout()V

    goto :goto_0

    .line 364
    :sswitch_3
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackInfoView;->showInfoView()V

    .line 365
    invoke-direct {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->showBacklayout()V

    goto :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 180
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->stopVideo()V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 174
    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 285
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 254
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/gemini/play/BackPlayerVideoActivity;->showBacklayout()V

    .line 201
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackInfoView;->showInfoView()V

    .line 203
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 396
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_0

    .line 398
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/BackPlayerVideoActivity;->stopVideoForHard(Lcom/gemini/play/VideoView;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v0}, Lcom/gemini/play/BackPlayerVideoActivity;->stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V

    goto :goto_0
.end method
