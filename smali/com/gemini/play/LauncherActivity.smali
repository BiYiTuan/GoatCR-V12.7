.class public Lcom/gemini/play/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private barindex:I

.field private detector:Landroid/view/GestureDetector;

.field private homeblade:Lcom/gemini/play/MyHomeBar;

.field private mLayout:Landroid/widget/RelativeLayout;

.field public onPressed:Lcom/gemini/play/LauncherInterface;

.field private rHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/gemini/play/LauncherActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v0, p0, Lcom/gemini/play/LauncherActivity;->detector:Landroid/view/GestureDetector;

    .line 25
    iput-object v0, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/LauncherActivity;->barindex:I

    .line 94
    new-instance v0, Lcom/gemini/play/LauncherActivity$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/LauncherActivity$2;-><init>(Lcom/gemini/play/LauncherActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LauncherActivity;->rHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/gemini/play/LauncherActivity$3;

    invoke-direct {v0, p0}, Lcom/gemini/play/LauncherActivity$3;-><init>(Lcom/gemini/play/LauncherActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LauncherActivity;->onPressed:Lcom/gemini/play/LauncherInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/LauncherActivity;)Lcom/gemini/play/MyHomeBar;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LauncherActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    return-object v0
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 45
    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v10, v1, 0x5

    .line 46
    .local v10, "bottom":I
    sget v1, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v11, v1, 0xa

    .line 48
    .local v11, "height":I
    const v1, 0x7f0700ac

    invoke-virtual {p0, v1}, Lcom/gemini/play/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/MyHomeBar;

    iput-object v1, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    .line 49
    iget-object v1, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    invoke-virtual {v1}, Lcom/gemini/play/MyHomeBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 50
    .local v12, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 51
    iput v11, v12, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 52
    iget-object v1, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    invoke-virtual {v1, v12}, Lcom/gemini/play/MyHomeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    iget-object v2, p0, Lcom/gemini/play/LauncherActivity;->onPressed:Lcom/gemini/play/LauncherInterface;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyHomeBar;->setInterface(Lcom/gemini/play/LauncherInterface;)V

    .line 54
    iget-object v1, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    const/4 v2, 0x2

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lcom/gemini/play/MyHomeBar;->selectIndex(II)V

    .line 56
    const v1, 0x7f070123

    invoke-virtual {p0, v1}, Lcom/gemini/play/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/ScrollTextView;

    .line 57
    .local v0, "scroller":Lcom/gemini/play/ScrollTextView;
    invoke-virtual {p0}, Lcom/gemini/play/LauncherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 59
    sget-object v1, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "start scrolltext"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 62
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    sget-object v2, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    const/high16 v7, 0x40200000    # 2.5f

    const/16 v8, 0x19

    const-string v9, "FFFFFF"

    move-object v1, p0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Lcom/gemini/play/ScrollTextView;->start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/LauncherActivity;->timeView()V

    .line 68
    sget v1, Lcom/gemini/play/MGplayer;->updatetip_show:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 143
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 121
    :sswitch_0
    iget-object v0, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyHomeBar;->selectafter(Z)V

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 126
    :sswitch_1
    iget-object v0, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar;->getBarindex()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_1
    const-class v0, Lcom/gemini/play/LivePlayerActivity;

    invoke-static {p0, v0}, Lcom/gemini/play/MGplayer;->openActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v2, 0x7f09003c

    invoke-virtual {p0, v2}, Lcom/gemini/play/LauncherActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/gemini/play/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 33
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/gemini/play/LauncherActivity;->detector:Landroid/view/GestureDetector;

    .line 35
    const v2, 0x7f070108

    invoke-virtual {p0, v2}, Lcom/gemini/play/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/gemini/play/LauncherActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 36
    invoke-virtual {p0}, Lcom/gemini/play/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 37
    .local v1, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 38
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/gemini/play/LauncherActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-direct {p0}, Lcom/gemini/play/LauncherActivity;->init()V

    .line 42
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 168
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

    .line 173
    const-string v0, "onFling"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 176
    const-string v0, "onFling 1"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar;->selectafter()V

    .line 184
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 181
    const-string v0, "onFling 2"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/gemini/play/LauncherActivity;->homeblade:Lcom/gemini/play/MyHomeBar;

    invoke-virtual {v0}, Lcom/gemini/play/MyHomeBar;->selectpre()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 191
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/gemini/play/LauncherActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public timeView()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 77
    .local v0, "timeHander":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/LauncherActivity$1;

    invoke-direct {v1, p0}, Lcom/gemini/play/LauncherActivity$1;-><init>(Lcom/gemini/play/LauncherActivity;)V

    .line 91
    .local v1, "timeRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method
