.class public Lcom/gemini/play/BackPlayerActivity;
.super Landroid/app/Activity;
.source "BackPlayerActivity.java"


# instance fields
.field private listview:Lcom/gemini/play/MyBackListView;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onListPressed:Lcom/gemini/play/ListViewInterface;

.field public onPreviewPressed:Lcom/gemini/play/ListViewInterface;

.field public onTypePressed:Lcom/gemini/play/ListViewInterface;

.field pHandler:Landroid/os/Handler;

.field private previewview:Lcom/gemini/play/MyBackPreviewView;

.field private typebutton:Landroid/widget/ImageButton;

.field private typeview:Lcom/gemini/play/MyBackTypeView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    .line 24
    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->listview:Lcom/gemini/play/MyBackListView;

    .line 25
    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->typeview:Lcom/gemini/play/MyBackTypeView;

    .line 26
    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->typebutton:Landroid/widget/ImageButton;

    .line 167
    new-instance v0, Lcom/gemini/play/BackPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerActivity$3;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    .line 181
    new-instance v0, Lcom/gemini/play/BackPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerActivity$4;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    .line 198
    new-instance v0, Lcom/gemini/play/BackPlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerActivity$5;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->onListPressed:Lcom/gemini/play/ListViewInterface;

    .line 239
    new-instance v0, Lcom/gemini/play/BackPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerActivity$6;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->onPreviewPressed:Lcom/gemini/play/ListViewInterface;

    .line 258
    new-instance v0, Lcom/gemini/play/BackPlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/BackPlayerActivity$7;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->pHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/BackPlayerActivity;)Lcom/gemini/play/MyBackTypeView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayerActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->typeview:Lcom/gemini/play/MyBackTypeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/BackPlayerActivity;)Lcom/gemini/play/MyBackListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayerActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->listview:Lcom/gemini/play/MyBackListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/BackPlayerActivity;)Lcom/gemini/play/MyBackPreviewView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/BackPlayerActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    return-object v0
.end method

.method private hideAllView()Z
    .locals 2

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, "v":I
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackTypeView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackTypeView;->hideTypeList()V

    .line 297
    const/4 v0, 0x1

    .line 300
    :cond_0
    if-lez v0, :cond_1

    .line 301
    const/4 v1, 0x1

    .line 303
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public exitActivity()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 310
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/BackPlayerActivity$8;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayerActivity$8;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 318
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/BackPlayerActivity$9;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayerActivity$9;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 325
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 326
    return-void
.end method

.method public hideListAll()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 371
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackPreviewView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackListView;->setVisibility(I)V

    .line 373
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 383
    packed-switch p2, :pswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 386
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackPreviewView;->listNoFocus()V

    .line 387
    const-string v0, "onActivityResult"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v3, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f090026

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 35
    invoke-static {v3}, Lcom/gemini/play/MGplayer;->mediaplayervodheader(I)V

    .line 37
    const v1, 0x7f0700f4

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/MyBackPreviewView;

    iput-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    .line 38
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    iget-object v2, p0, Lcom/gemini/play/BackPlayerActivity;->onPreviewPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyBackPreviewView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 39
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackPreviewView;->listNoFocus()V

    .line 41
    const v1, 0x7f0700f3

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/MyBackListView;

    iput-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->listview:Lcom/gemini/play/MyBackListView;

    .line 42
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->listview:Lcom/gemini/play/MyBackListView;

    iget-object v2, p0, Lcom/gemini/play/BackPlayerActivity;->onListPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyBackListView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 43
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v1}, Lcom/gemini/play/MyBackListView;->listFocus()V

    .line 45
    const v1, 0x7f0700f9

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/MyBackTypeView;

    iput-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->typeview:Lcom/gemini/play/MyBackTypeView;

    .line 46
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->typeview:Lcom/gemini/play/MyBackTypeView;

    iget-object v2, p0, Lcom/gemini/play/BackPlayerActivity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyBackTypeView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 48
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 54
    const v1, 0x7f07016d

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->typebutton:Landroid/widget/ImageButton;

    .line 56
    iget-object v1, p0, Lcom/gemini/play/BackPlayerActivity;->typebutton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/gemini/play/BackPlayerActivity$1;

    invoke-direct {v2, p0}, Lcom/gemini/play/BackPlayerActivity$1;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 103
    .local v12, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v11

    .line 105
    .local v11, "rate":F
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 106
    .local v10, "backbutton":Landroid/widget/Button;
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, v11

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 107
    invoke-virtual {v10, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    new-instance v1, Lcom/gemini/play/BackPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/gemini/play/BackPlayerActivity$2;-><init>(Lcom/gemini/play/BackPlayerActivity;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f070123

    invoke-virtual {p0, v1}, Lcom/gemini/play/BackPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/ScrollTextView;

    .line 118
    .local v0, "scroller":Lcom/gemini/play/ScrollTextView;
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 119
    sget-object v1, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "start scrolltext"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 122
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget-object v2, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    const/high16 v7, 0x40200000    # 2.5f

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v8, v1

    const-string v9, "FFFFFF"

    move-object v1, p0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Lcom/gemini/play/ScrollTextView;->start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "backplayer onDestroy"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 334
    const-string v0, "backplayer onKeyDown"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 353
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 338
    :sswitch_0
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->typeview:Lcom/gemini/play/MyBackTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->showTypeList()V

    goto :goto_0

    .line 341
    :sswitch_1
    invoke-direct {p0}, Lcom/gemini/play/BackPlayerActivity;->hideAllView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/gemini/play/BackPlayerActivity;->exitActivity()V

    goto :goto_0

    .line 347
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 358
    packed-switch p1, :pswitch_data_0

    .line 366
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 361
    :pswitch_0
    invoke-static {p0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 362
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    .line 363
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "backplayer onPause"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 165
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "backplayer onRestart"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "backplayer onResume"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 158
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showListAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->previewview:Lcom/gemini/play/MyBackPreviewView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackPreviewView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity;->listview:Lcom/gemini/play/MyBackListView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackListView;->setVisibility(I)V

    .line 379
    return-void
.end method
