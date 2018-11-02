.class public Lcom/gemini/play/Launcher2Activity;
.super Landroid/app/Activity;
.source "Launcher2Activity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private hb:[I

.field private homeblade:Lcom/gemini/play/MyHomeBar2;

.field private isexit:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onPressed:Lcom/gemini/play/LauncherInterface;

.field public onScrollView:Lcom/gemini/play/ScrollViewInterface;

.field private onescroller:Lcom/gemini/play/ScrollTextView;

.field public rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/gemini/play/Launcher2Activity;->detector:Landroid/view/GestureDetector;

    .line 30
    iput-object v1, p0, Lcom/gemini/play/Launcher2Activity;->mLayout:Landroid/widget/FrameLayout;

    .line 31
    iput-object v1, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/Launcher2Activity;->isexit:Z

    .line 34
    iput-object v1, p0, Lcom/gemini/play/Launcher2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 121
    new-instance v0, Lcom/gemini/play/Launcher2Activity$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/Launcher2Activity$2;-><init>(Lcom/gemini/play/Launcher2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/Launcher2Activity;->rHandler:Landroid/os/Handler;

    .line 259
    new-instance v0, Lcom/gemini/play/Launcher2Activity$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/Launcher2Activity$4;-><init>(Lcom/gemini/play/Launcher2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/Launcher2Activity;->onPressed:Lcom/gemini/play/LauncherInterface;

    .line 308
    new-instance v0, Lcom/gemini/play/Launcher2Activity$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/Launcher2Activity$5;-><init>(Lcom/gemini/play/Launcher2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/Launcher2Activity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    .line 344
    new-instance v0, Lcom/gemini/play/Launcher2Activity$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/Launcher2Activity$6;-><init>(Lcom/gemini/play/Launcher2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/Launcher2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/gemini/play/Launcher2Activity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/Launcher2Activity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/Launcher2Activity;)Lcom/gemini/play/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/Launcher2Activity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/gemini/play/Launcher2Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/Launcher2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/gemini/play/Launcher2Activity;->isexit:Z

    return p1
.end method

.method private init()V
    .locals 15

    .prologue
    .line 166
    const/4 v12, 0x0

    .line 167
    .local v12, "bottom":I
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cxiptv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v12, v1, 0x6

    .line 172
    :goto_0
    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v13, v1, 0x8

    .line 174
    .local v13, "height":I
    const v1, 0x7f0700ac

    invoke-virtual {p0, v1}, Lcom/gemini/play/Launcher2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/MyHomeBar2;

    iput-object v1, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    .line 175
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    invoke-virtual {v1}, Lcom/gemini/play/MyHomeBar2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .local v14, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 177
    iput v13, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 178
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    iget-object v2, p0, Lcom/gemini/play/Launcher2Activity;->onPressed:Lcom/gemini/play/LauncherInterface;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyHomeBar2;->setInterface(Lcom/gemini/play/LauncherInterface;)V

    .line 179
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    invoke-virtual {v1, v14}, Lcom/gemini/play/MyHomeBar2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const v1, 0x7f070123

    invoke-virtual {p0, v1}, Lcom/gemini/play/Launcher2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/ScrollTextView;

    .line 182
    .local v0, "scroller":Lcom/gemini/play/ScrollTextView;
    invoke-virtual {p0}, Lcom/gemini/play/Launcher2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 184
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->scroll_every_interface(Lcom/gemini/play/ScrollViewInterface;)V

    .line 186
    sget-object v1, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "start scrolltext"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 189
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget-object v2, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x40200000    # 2.5f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v8

    mul-float/2addr v1, v8

    float-to-int v8, v1

    const-string v9, "FFFFFF"

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/gemini/play/ScrollTextView;->start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;)V

    .line 194
    :cond_0
    sget-object v1, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    invoke-virtual {p0}, Lcom/gemini/play/Launcher2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 197
    const-string v1, "start onescroll_txt"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    sget-object v3, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40200000    # 2.5f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v9

    mul-float/2addr v2, v9

    float-to-int v9, v2

    const-string v10, "FFFFFF"

    sget v11, Lcom/gemini/play/MGplayer;->onescroll_times:I

    move-object v2, p0

    invoke-virtual/range {v1 .. v11}, Lcom/gemini/play/ScrollTextView;->start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/gemini/play/Launcher2Activity;->timeView()V

    .line 205
    invoke-virtual {p0}, Lcom/gemini/play/Launcher2Activity;->leftView()V

    .line 207
    sget v1, Lcom/gemini/play/MGplayer;->updatetip_show:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 209
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->showUpdateActivity(Landroid/content/Context;)V

    .line 213
    :cond_2
    return-void

    .line 170
    .end local v0    # "scroller":Lcom/gemini/play/ScrollTextView;
    .end local v13    # "height":I
    .end local v14    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v12, v1, 0x5

    goto/16 :goto_0
.end method


# virtual methods
.method public exitActivity()V
    .locals 3

    .prologue
    .line 424
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/gemini/play/Launcher2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 426
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/Launcher2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/Launcher2Activity$8;

    invoke-direct {v2, p0}, Lcom/gemini/play/Launcher2Activity$8;-><init>(Lcom/gemini/play/Launcher2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 436
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/Launcher2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/Launcher2Activity$9;

    invoke-direct {v2, p0}, Lcom/gemini/play/Launcher2Activity$9;-><init>(Lcom/gemini/play/Launcher2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 443
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 444
    return-void
.end method

.method public leftView()V
    .locals 5

    .prologue
    const v4, 0x7f0b0080

    .line 217
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quanxing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    sget v2, Lcom/gemini/play/MGplayer;->leftdaysshow:I

    sput v2, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    .line 222
    :cond_0
    sget v2, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 224
    const v2, 0x7f0700d0

    invoke-virtual {p0, v2}, Lcom/gemini/play/Launcher2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    .local v1, "timeouttext":Landroid/widget/TextView;
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 226
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const-string v0, ""

    .line 229
    .local v0, "timeout":Ljava/lang/String;
    sget-object v2, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/gemini/play/Launcher2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0082

    invoke-virtual {p0, v3}, Lcom/gemini/play/Launcher2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .end local v0    # "timeout":Ljava/lang/String;
    .end local v1    # "timeouttext":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 234
    .restart local v0    # "timeout":Ljava/lang/String;
    .restart local v1    # "timeouttext":Landroid/widget/TextView;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/gemini/play/Launcher2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0081

    invoke-virtual {p0, v3}, Lcom/gemini/play/Launcher2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v7, 0x7f09003d

    invoke-virtual {p0, v7}, Lcom/gemini/play/Launcher2Activity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/gemini/play/Launcher2Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 43
    new-instance v7, Landroid/view/GestureDetector;

    invoke-direct {v7, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/gemini/play/Launcher2Activity;->detector:Landroid/view/GestureDetector;

    .line 45
    const v7, 0x7f070105

    invoke-virtual {p0, v7}, Lcom/gemini/play/Launcher2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/ScrollTextView;

    iput-object v7, p0, Lcom/gemini/play/Launcher2Activity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 47
    const v7, 0x7f070108

    invoke-virtual {p0, v7}, Lcom/gemini/play/Launcher2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/gemini/play/Launcher2Activity;->mLayout:Landroid/widget/FrameLayout;

    .line 48
    invoke-virtual {p0}, Lcom/gemini/play/Launcher2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 49
    .local v6, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 51
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 53
    sget-object v7, Lcom/gemini/play/MGplayer;->Background:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/gemini/play/Launcher2Activity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/background/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/MGplayer;->Background:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "imagePath":Ljava/lang/String;
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->file_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "file_md5":Ljava/lang/String;
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->fileIsExists(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    if-eqz v1, :cond_0

    sget-object v7, Lcom/gemini/play/MGplayer;->BackgroundMd5:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x4

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 62
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .end local v1    # "file_md5":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    invoke-direct {p0}, Lcom/gemini/play/Launcher2Activity;->init()V

    .line 112
    return-void

    .line 67
    .restart local v1    # "file_md5":Ljava/lang/String;
    .restart local v4    # "imagePath":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x0

    const v9, 0x7f0a001d

    aput v9, v7, v8

    .line 68
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x1

    const v9, 0x7f0a001e

    aput v9, v7, v8

    .line 69
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x3

    const v9, 0x7f0a0020

    aput v9, v7, v8

    .line 70
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x4

    const v9, 0x7f0a0021

    aput v9, v7, v8

    .line 71
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x5

    const v9, 0x7f0a0022

    aput v9, v7, v8

    .line 72
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x6

    const v9, 0x7f0a0023

    aput v9, v7, v8

    .line 73
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x7

    const v9, 0x7f0a0024

    aput v9, v7, v8

    .line 74
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/16 v8, 0x8

    const v9, 0x7f0a0025

    aput v9, v7, v8

    .line 75
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 76
    .local v2, "id":D
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    mul-double/2addr v8, v2

    double-to-int v8, v8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/gemini/play/Launcher2Activity$1;

    invoke-direct {v8, p0, v4}, Lcom/gemini/play/Launcher2Activity$1;-><init>(Lcom/gemini/play/Launcher2Activity;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 97
    .end local v1    # "file_md5":Ljava/lang/String;
    .end local v2    # "id":D
    .end local v4    # "imagePath":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x0

    const v9, 0x7f0a001d

    aput v9, v7, v8

    .line 98
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x1

    const v9, 0x7f0a001e

    aput v9, v7, v8

    .line 99
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x2

    const v9, 0x7f0a001f

    aput v9, v7, v8

    .line 100
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x3

    const v9, 0x7f0a0020

    aput v9, v7, v8

    .line 101
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x4

    const v9, 0x7f0a0021

    aput v9, v7, v8

    .line 102
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x5

    const v9, 0x7f0a0022

    aput v9, v7, v8

    .line 103
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x6

    const v9, 0x7f0a0023

    aput v9, v7, v8

    .line 104
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/4 v8, 0x7

    const v9, 0x7f0a0024

    aput v9, v7, v8

    .line 105
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const/16 v8, 0x8

    const v9, 0x7f0a0025

    aput v9, v7, v8

    .line 106
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 107
    .restart local v2    # "id":D
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->hb:[I

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    mul-double/2addr v8, v2

    double-to-int v8, v8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    iget-object v7, p0, Lcom/gemini/play/Launcher2Activity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 369
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

    .line 462
    const-string v0, "onFling"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 465
    const-string v0, "onFling 1"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar2;->selectafter()V

    .line 473
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 468
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 470
    const-string v0, "onFling 2"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar2;->selectpre()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 376
    sparse-switch p1, :sswitch_data_0

    .line 418
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 380
    :sswitch_0
    iget-boolean v1, p0, Lcom/gemini/play/Launcher2Activity;->isexit:Z

    if-ne v1, v0, :cond_0

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gemini/play/LocalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/gemini/play/Launcher2Activity;->stopService(Landroid/content/Intent;)Z

    .line 383
    invoke-virtual {p0}, Lcom/gemini/play/Launcher2Activity;->finish()V

    .line 384
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 385
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    goto :goto_0

    .line 389
    :cond_0
    iput-boolean v0, p0, Lcom/gemini/play/Launcher2Activity;->isexit:Z

    .line 390
    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/gemini/play/Launcher2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 391
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gemini/play/Launcher2Activity$7;

    invoke-direct {v2, p0}, Lcom/gemini/play/Launcher2Activity$7;-><init>(Lcom/gemini/play/Launcher2Activity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 403
    :sswitch_1
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar2;->selectafter()V

    goto :goto_0

    .line 408
    :sswitch_2
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar2;->selectpre()V

    goto :goto_0

    .line 414
    :sswitch_3
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->homeblade:Lcom/gemini/play/MyHomeBar2;

    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar2;->selectenter()V

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 448
    packed-switch p1, :pswitch_data_0

    .line 456
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 451
    :pswitch_0
    invoke-static {p0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 452
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    .line 453
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 480
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 342
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 493
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public timeView()V
    .locals 4

    .prologue
    .line 242
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 243
    .local v0, "timeHander":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/Launcher2Activity$3;

    invoke-direct {v1, p0, v0}, Lcom/gemini/play/Launcher2Activity$3;-><init>(Lcom/gemini/play/Launcher2Activity;Landroid/os/Handler;)V

    .line 256
    .local v1, "timeRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void
.end method
