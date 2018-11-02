.class public Lcom/gemini/play/BackPlayer2Activity;
.super Landroid/app/Activity;
.source "BackPlayer2Activity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private back_id:Ljava/lang/String;

.field private back_time:Ljava/lang/String;

.field private backbutton:Landroid/widget/Button;

.field private backlayout:Landroid/widget/LinearLayout;

.field private backlistlayout:Landroid/widget/LinearLayout;

.field private detector:Landroid/view/GestureDetector;

.field private infoview:Lcom/gemini/play/MyBackInfoView;

.field private isexit:Z

.field private listview:Lcom/gemini/play/MyBackListView;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onInfoPressed:Lcom/gemini/play/ListViewInterface;

.field public onListPressed:Lcom/gemini/play/ListViewInterface;

.field public onPreviewPressed:Lcom/gemini/play/ListViewInterface;

.field public onScrollView:Lcom/gemini/play/ScrollViewInterface;

.field public onTypePressed:Lcom/gemini/play/ListViewInterface;

.field private onescroller:Lcom/gemini/play/ScrollTextView;

.field private previewview:Lcom/gemini/play/MyBackPreviewView;

.field public rHandler:Landroid/os/Handler;

.field private typebutton:Landroid/widget/ImageButton;

.field private typeview:Lcom/gemini/play/MyBackTypeView;

.field private view_index:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->back_id:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->back_time:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    .line 43
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->detector:Landroid/view/GestureDetector;

    .line 45
    iput-boolean v1, p0, Lcom/gemini/play/BackPlayer2Activity;->isexit:Z

    .line 47
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->backlayout:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->backlistlayout:Landroid/widget/LinearLayout;

    .line 51
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->backbutton:Landroid/widget/Button;

    .line 53
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 55
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    .line 56
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    .line 57
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    .line 58
    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->typebutton:Landroid/widget/ImageButton;

    .line 60
    iput v1, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    .line 222
    new-instance v0, Lcom/gemini/play/BackPlayer2Activity$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayer2Activity$5;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onListPressed:Lcom/gemini/play/ListViewInterface;

    .line 269
    new-instance v0, Lcom/gemini/play/BackPlayer2Activity$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayer2Activity$6;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onPreviewPressed:Lcom/gemini/play/ListViewInterface;

    .line 295
    new-instance v0, Lcom/gemini/play/BackPlayer2Activity$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayer2Activity$7;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    .line 450
    new-instance v0, Lcom/gemini/play/BackPlayer2Activity$9;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayer2Activity$9;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    .line 467
    new-instance v0, Lcom/gemini/play/BackPlayer2Activity$10;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayer2Activity$10;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onInfoPressed:Lcom/gemini/play/ListViewInterface;

    .line 639
    new-instance v0, Lcom/gemini/play/BackPlayer2Activity$13;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayer2Activity$13;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    .line 751
    new-instance v0, Lcom/gemini/play/BackPlayer2Activity$15;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayer2Activity$15;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->rHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackTypeView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackPreviewView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/BackPlayer2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->listFocus()V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/MyBackListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gemini/play/BackPlayer2Activity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->backlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/gemini/play/BackPlayer2Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/BackPlayer2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/gemini/play/BackPlayer2Activity;->isexit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/gemini/play/BackPlayer2Activity;)Lcom/gemini/play/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayer2Activity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    return-object v0
.end method

.method private hideAllView()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "v":I
    iget-object v2, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v2}, Lcom/gemini/play/MyBackInfoView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v2}, Lcom/gemini/play/MyBackInfoView;->hideInfoPanal()V

    .line 418
    const/4 v0, 0x1

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v2}, Lcom/gemini/play/MyBackTypeView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    iget-object v2, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyBackTypeView;->setVisibility(I)V

    .line 424
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->listFocus()V

    .line 425
    iput v1, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    .line 426
    const/4 v0, 0x1

    .line 434
    :cond_1
    :goto_0
    if-lez v0, :cond_2

    .line 436
    const/4 v1, 0x1

    .line 440
    :cond_2
    return v1

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/gemini/play/BackPlayer2Activity;->backlistlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->hideBackListLayout()V

    .line 431
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init_ui()V
    .locals 26

    .prologue
    .line 132
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v25

    .line 133
    .local v25, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v23

    .line 135
    .local v23, "rate":F
    const v7, 0x7f070115

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ProgressBar;

    .line 136
    .local v21, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 138
    .local v18, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, 0x42400000    # 48.0f

    mul-float v7, v7, v23

    float-to-int v7, v7

    move-object/from16 v0, v18

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 139
    const/high16 v7, 0x42400000    # 48.0f

    mul-float v7, v7, v23

    float-to-int v7, v7

    move-object/from16 v0, v18

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 140
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const v7, 0x7f070117

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 143
    .local v24, "speedView":Landroid/widget/TextView;
    const/high16 v7, 0x40e00000    # 7.0f

    mul-float v7, v7, v23

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 144
    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 146
    const v7, 0x7f070116

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/FrameLayout;

    .line 156
    .local v22, "progressLayout":Landroid/widget/FrameLayout;
    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    .line 157
    .local v19, "mHandler":Landroid/os/Handler;
    new-instance v20, Lcom/gemini/play/BackPlayer2Activity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gemini/play/BackPlayer2Activity$3;-><init>(Lcom/gemini/play/BackPlayer2Activity;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 174
    .local v20, "mRunnable":Ljava/lang/Runnable;
    const-wide/16 v8, 0x3e8

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    const v7, 0x7f070060

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->backbutton:Landroid/widget/Button;

    .line 177
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->backbutton:Landroid/widget/Button;

    const/high16 v8, 0x41000000    # 8.0f

    mul-float v8, v8, v23

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 178
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->backbutton:Landroid/widget/Button;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->backbutton:Landroid/widget/Button;

    new-instance v8, Lcom/gemini/play/BackPlayer2Activity$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/gemini/play/BackPlayer2Activity$4;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v7, 0x7f070123

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/ScrollTextView;

    .line 189
    .local v6, "scroller":Lcom/gemini/play/ScrollTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/BackPlayer2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 190
    sget-object v7, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 192
    const-string v7, "start scrolltext"

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 193
    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
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

    .line 197
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->scroll_every_interface(Lcom/gemini/play/ScrollViewInterface;)V

    .line 198
    sget-object v7, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 201
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/BackPlayer2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 202
    const-string v7, "start onescroll_txt"

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

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

    .line 209
    :cond_1
    const v7, 0x7f0700f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/MyBackPreviewView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    .line 210
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/BackPlayer2Activity;->onPreviewPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v7, v8}, Lcom/gemini/play/MyBackPreviewView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    invoke-virtual {v7}, Lcom/gemini/play/MyBackPreviewView;->listNoFocus()V

    .line 213
    const v7, 0x7f0700f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/MyBackListView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    .line 214
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/BackPlayer2Activity;->onListPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v7, v8}, Lcom/gemini/play/MyBackListView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v7}, Lcom/gemini/play/MyBackListView;->listFocus()V

    .line 217
    const v7, 0x7f0700f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/MyBackTypeView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    .line 218
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/BackPlayer2Activity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v7, v8}, Lcom/gemini/play/MyBackTypeView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 220
    return-void
.end method

.method private listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    .line 736
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackListView;->setFocusable(Z)V

    .line 737
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackListView;->setFocusableInTouchMode(Z)V

    .line 738
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackListView;->requestFocus()Z

    .line 739
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackListView;->requestFocusFromTouch()Z

    .line 741
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackListView;->listFocus()V

    .line 744
    return-void
.end method

.method private previewFocus()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackPreviewView;->listFocus()V

    .line 749
    return-void
.end method

.method private showBacklayout()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->backlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->backlayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/BackPlayer2Activity$8;

    invoke-direct {v1, p0}, Lcom/gemini/play/BackPlayer2Activity$8;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    :cond_0
    return-void
.end method

.method public static stopVideoForHard(Lcom/gemini/play/VideoView;)V
    .locals 1
    .param p0, "mVideoView"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 593
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    .line 595
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 597
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->pause()V

    .line 611
    :cond_0
    return-void
.end method

.method public static stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V
    .locals 1
    .param p0, "mVideoView"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 615
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gemini/play/BACKplayer;->player_isexit:Z

    .line 617
    invoke-static {}, Lcom/gemini/play/MGplayer;->mediaplayerunload()V

    .line 619
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->pause()V

    .line 624
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->onDestory()V

    .line 625
    return-void
.end method


# virtual methods
.method public exitActivity()V
    .locals 3

    .prologue
    .line 779
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 781
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/BackPlayer2Activity$16;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayer2Activity$16;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 796
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/BackPlayer2Activity$17;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayer2Activity$17;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 803
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 804
    return-void
.end method

.method public hideBackListLayout()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->backlistlayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 684
    return-void
.end method

.method public hideViewTimeout()V
    .locals 4

    .prologue
    .line 688
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 689
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 690
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->rHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 691
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 68
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/gemini/play/BackPlayer2Activity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-static {}, Lcom/gemini/play/BACKplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->back_id:Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->mediaplayervodheader(I)V

    .line 76
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->detector:Landroid/view/GestureDetector;

    .line 78
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/VlcVideoView;

    sput-object v1, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 79
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VideoView;

    sput-object v1, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 80
    new-instance v0, Lcom/gemini/play/BackPlayer2Activity$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayer2Activity$1;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    .line 87
    .local v0, "pListener":Landroid/media/MediaPlayer$OnPreparedListener;
    sget-object v1, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v1, v0}, Lcom/gemini/play/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 89
    const v1, 0x7f0700f5

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/MyBackInfoView;

    iput-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    .line 90
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    iget-object v2, p0, Lcom/gemini/play/BackPlayer2Activity;->onInfoPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyBackInfoView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 92
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 94
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->backlayout:Landroid/widget/LinearLayout;

    .line 95
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->backlistlayout:Landroid/widget/LinearLayout;

    .line 97
    const v1, 0x7f070105

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/ScrollTextView;

    iput-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 99
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->init_ui()V

    .line 117
    invoke-static {p0}, Lcom/gemini/play/BACKplayer;->checkVideo(Landroid/content/Context;)V

    .line 121
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gemini/play/BackPlayer2Activity$2;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayer2Activity$2;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 315
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->stopVideo()V

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 318
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackInfoView;->showInfoView()V

    .line 359
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

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->showTypeList()V

    .line 384
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 369
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->showTypeList()V

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 377
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
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 588
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 487
    :sswitch_1
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->hideAllView()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 491
    iget-boolean v1, p0, Lcom/gemini/play/BackPlayer2Activity;->isexit:Z

    if-ne v1, v0, :cond_2

    .line 493
    invoke-static {}, Lcom/gemini/play/BACKplayer;->stopCheckVideo()V

    .line 494
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->stopVideo()V

    .line 495
    iput-boolean v3, p0, Lcom/gemini/play/BackPlayer2Activity;->isexit:Z

    .line 496
    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 497
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gemini/play/BackPlayer2Activity$11;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayer2Activity$11;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 504
    :cond_2
    iput-boolean v0, p0, Lcom/gemini/play/BackPlayer2Activity;->isexit:Z

    .line 505
    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayer2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 506
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gemini/play/BackPlayer2Activity$12;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayer2Activity$12;-><init>(Lcom/gemini/play/BackPlayer2Activity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 518
    :sswitch_2
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->showBackListLayout()V

    goto :goto_0

    .line 526
    :sswitch_3
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->backlistlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 528
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->showBackListLayout()V

    .line 529
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackTypeView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0, v5}, Lcom/gemini/play/MyBackTypeView;->setVisibility(I)V

    .line 532
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->listFocus()V

    .line 533
    iput v3, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    goto :goto_0

    .line 537
    :cond_3
    iget v1, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    if-ne v1, v4, :cond_4

    .line 539
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->listFocus()V

    .line 540
    iput v3, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    goto :goto_0

    .line 542
    :cond_4
    iget v1, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    if-nez v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackTypeView;->showTypeList()V

    .line 545
    iput v0, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    goto/16 :goto_0

    .line 551
    :cond_5
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackInfoView;->showInfoView()V

    goto/16 :goto_0

    .line 557
    :sswitch_4
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->backlistlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 559
    iget-object v1, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackTypeView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 561
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0, v5}, Lcom/gemini/play/MyBackTypeView;->setVisibility(I)V

    .line 562
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->listFocus()V

    .line 563
    iput v3, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    goto/16 :goto_0

    .line 567
    :cond_6
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->showBackListLayout()V

    .line 568
    iget v1, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    if-ne v1, v0, :cond_7

    .line 570
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->listFocus()V

    .line 571
    iput v3, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    goto/16 :goto_0

    .line 573
    :cond_7
    iget v0, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    if-nez v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->previewFocus()V

    .line 576
    iput v4, p0, Lcom/gemini/play/BackPlayer2Activity;->view_index:I

    goto/16 :goto_0

    .line 582
    :cond_8
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackInfoView;->showInfoView()V

    goto/16 :goto_0

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 328
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->stopVideo()V

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 331
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 322
    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 323
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 324
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 448
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 404
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->showBackListLayout()V

    .line 350
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->infoview:Lcom/gemini/play/MyBackInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackInfoView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListviewSelection()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 695
    invoke-static {}, Lcom/gemini/play/BACKplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, "num":I
    sget-boolean v3, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-eqz v3, :cond_1

    .line 699
    invoke-static {}, Lcom/gemini/play/BACKplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Lcom/gemini/play/BACKplayer;->playbackGetVideoNum(IZ)I

    move-result v1

    .line 703
    :goto_0
    move v0, v1

    .line 704
    .local v0, "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 LIVEplayer.getCurrentID():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "setSelection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    new-instance v3, Lcom/gemini/play/BackPlayer2Activity$14;

    invoke-direct {v3, p0, v0}, Lcom/gemini/play/BackPlayer2Activity$14;-><init>(Lcom/gemini/play/BackPlayer2Activity;I)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyBackListView;->post(Ljava/lang/Runnable;)Z

    .line 718
    .end local v0    # "i":I
    .end local v1    # "num":I
    :cond_0
    :goto_1
    return-void

    .line 701
    .restart local v1    # "num":I
    :cond_1
    invoke-static {}, Lcom/gemini/play/BACKplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-boolean v4, Lcom/gemini/play/BACKplayer;->typePasswordOK:Z

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v3, v2}, Lcom/gemini/play/BACKplayer;->playbackGetVideoNum(IZ)I

    move-result v1

    goto :goto_0

    .line 714
    .end local v1    # "num":I
    :cond_3
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 716
    iget-object v3, p0, Lcom/gemini/play/BackPlayer2Activity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v3, v2}, Lcom/gemini/play/MyBackListView;->setSelection(I)V

    goto :goto_1
.end method

.method public showBackListLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/BackPlayer2Activity;->backlistlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 726
    invoke-direct {p0}, Lcom/gemini/play/BackPlayer2Activity;->listFocus()V

    .line 727
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->hideViewTimeout()V

    .line 729
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayer2Activity;->setListviewSelection()V

    .line 730
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_0

    .line 631
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->stopVideoForHard(Lcom/gemini/play/VideoView;)V

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    sget-object v0, Lcom/gemini/play/BACKplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v0}, Lcom/gemini/play/BackPlayer2Activity;->stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V

    goto :goto_0
.end method
