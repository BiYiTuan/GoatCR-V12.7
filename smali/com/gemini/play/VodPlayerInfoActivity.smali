.class public Lcom/gemini/play/VodPlayerInfoActivity;
.super Landroid/app/Activity;
.source "VodPlayerInfoActivity.java"


# instance fields
.field private area:Landroid/widget/TextView;

.field private bimage:Landroid/graphics/Bitmap;

.field private button0:Landroid/widget/Button;

.field private button1:Landroid/widget/Button;

.field private button2:Landroid/widget/Button;

.field private button3:Landroid/widget/Button;

.field private button_index:I

.field private clickrate:Landroid/widget/TextView;

.field private collectvoddber:Lcom/gemini/play/CollectVodDB;

.field private image:Landroid/widget/ImageView;

.field private info_collect:I

.field private info_id:Ljava/lang/String;

.field private info_type:Ljava/lang/String;

.field private intro3:Landroid/widget/TextView;

.field private intro4:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onSelectionsPressed:Lcom/gemini/play/ListViewInterface;

.field final rHandler:Landroid/os/Handler;

.field private rate:F

.field private selectionsview:Lcom/gemini/play/MyVodSelectionsView;

.field private total:Landroid/widget/TextView;

.field private type:Landroid/widget/TextView;

.field private typeFace:Landroid/graphics/Typeface;

.field private updatetime:Landroid/widget/TextView;

.field private year:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 374
    new-instance v0, Lcom/gemini/play/VodPlayerInfoActivity$11;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerInfoActivity$11;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rHandler:Landroid/os/Handler;

    .line 618
    new-instance v0, Lcom/gemini/play/VodPlayerInfoActivity$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerInfoActivity$12;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    .line 635
    new-instance v0, Lcom/gemini/play/VodPlayerInfoActivity$13;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerInfoActivity$13;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->onSelectionsPressed:Lcom/gemini/play/ListViewInterface;

    return-void
.end method

.method private SelectButton(ZI)V
    .locals 5
    .param p1, "direct"    # Z
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    const/4 v0, -0x1

    if-gt p2, v0, :cond_8

    .line 527
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    iput v2, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    .line 536
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "button index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 538
    if-ne p1, v3, :cond_6

    .line 539
    iget v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    .line 543
    :goto_1
    iget v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    if-le v0, v4, :cond_7

    .line 544
    iput v4, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    .line 553
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    if-nez v0, :cond_9

    .line 610
    :cond_2
    :goto_3
    return-void

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    iput v3, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    goto :goto_0

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 532
    const/4 v0, 0x2

    iput v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    goto :goto_0

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iput v4, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    goto :goto_0

    .line 541
    :cond_6
    iget v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    goto :goto_1

    .line 545
    :cond_7
    iget v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    if-gez v0, :cond_1

    .line 546
    iput v2, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    goto :goto_2

    .line 550
    :cond_8
    iput p2, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    goto :goto_2

    .line 556
    :cond_9
    iget v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 559
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 560
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 561
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 562
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 563
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 564
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 565
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 566
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 567
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 568
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    goto :goto_3

    .line 572
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 573
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 574
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 575
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 576
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 577
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 578
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 579
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 580
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 581
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    goto/16 :goto_3

    .line 585
    :pswitch_2
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 586
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 587
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 588
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 589
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 590
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 591
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 592
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 593
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 594
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    goto/16 :goto_3

    .line 598
    :pswitch_3
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 599
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 600
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 601
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 602
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 603
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 604
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 605
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 606
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 607
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    goto/16 :goto_3

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->image:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/gemini/play/VodPlayerInfoActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/gemini/play/VodPlayerInfoActivity;->init(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/gemini/play/VodPlayerInfoActivity;)Lcom/gemini/play/CollectVodDB;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->bimage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->bimage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/play/VodPlayerInfoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_collect:I

    return v0
.end method

.method static synthetic access$600(Lcom/gemini/play/VodPlayerInfoActivity;)Lcom/gemini/play/MyVodSelectionsView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    return-object v0
.end method

.method private getArea(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 395
    const-string v3, ""

    .line 396
    .local v3, "v":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 398
    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "areas":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areas "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 402
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 404
    invoke-static {p2}, Lcom/gemini/play/VODplayer;->typeGet(I)Lcom/gemini/play/VodTypeStatus;

    move-result-object v2

    .line 405
    .local v2, "s":Lcom/gemini/play/VodTypeStatus;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 407
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    aget-object v6, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .end local v2    # "s":Lcom/gemini/play/VodTypeStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "areas":[Ljava/lang/String;
    .end local v1    # "ii":I
    :cond_1
    return-object v3
.end method

.method private getStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/gemini/play/VodListStatus;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "itype"    # Ljava/lang/String;
    .param p3, "collect"    # I

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "s":Lcom/gemini/play/VodListStatus;
    if-nez p3, :cond_0

    .line 106
    invoke-static {p1, p2}, Lcom/gemini/play/VODplayer;->getVodListStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/gemini/play/VodListStatus;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 110
    :cond_0
    const-string v2, "read db info"

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    invoke-virtual {v2, p1, p2}, Lcom/gemini/play/CollectVodDB;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/gemini/play/VodListStatus;

    move-result-object v1

    .line 113
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 114
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 115
    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private getType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 418
    const-string v3, ""

    .line 419
    .local v3, "v":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 421
    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "types":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "types "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 425
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    invoke-static {p2}, Lcom/gemini/play/VODplayer;->typeGet(I)Lcom/gemini/play/VodTypeStatus;

    move-result-object v1

    .line 428
    .local v1, "s":Lcom/gemini/play/VodTypeStatus;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 430
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    aget-object v6, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    .end local v1    # "s":Lcom/gemini/play/VodTypeStatus;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "ii":I
    .end local v2    # "types":[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getYears(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "area"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 446
    const-string v2, ""

    .line 447
    .local v2, "v":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 449
    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "years":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "years "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 453
    aget-object v4, v3, v0

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    invoke-static {p2}, Lcom/gemini/play/VODplayer;->typeGet(I)Lcom/gemini/play/VodTypeStatus;

    move-result-object v1

    .line 456
    .local v1, "s":Lcom/gemini/play/VodTypeStatus;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 458
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, v1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .end local v1    # "s":Lcom/gemini/play/VodTypeStatus;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .restart local v1    # "s":Lcom/gemini/play/VodTypeStatus;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 466
    .end local v0    # "ii":I
    .end local v1    # "s":Lcom/gemini/play/VodTypeStatus;
    .end local v3    # "years":[Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "itype"    # Ljava/lang/String;
    .param p3, "collect"    # I

    .prologue
    .line 122
    invoke-static {p2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v5, "vod init 1"

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "index":I
    invoke-direct {p0, p1, p2, p3}, Lcom/gemini/play/VodPlayerInfoActivity;->getStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/gemini/play/VodListStatus;

    move-result-object v3

    .line 131
    .local v3, "s":Lcom/gemini/play/VodListStatus;
    if-eqz v3, :cond_0

    .line 134
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    .line 135
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v5

    iput v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    .line 136
    const/4 v5, 0x0

    iput v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    .line 139
    new-instance v5, Lcom/gemini/play/VodPlayerInfoActivity$2;

    invoke-direct {v5, p0, p3, v3}, Lcom/gemini/play/VodPlayerInfoActivity$2;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;ILcom/gemini/play/VodListStatus;)V

    .line 205
    invoke-virtual {v5}, Lcom/gemini/play/VodPlayerInfoActivity$2;->start()V

    .line 208
    const v5, 0x7f07007c

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->clickrate:Landroid/widget/TextView;

    .line 209
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->clickrate:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 210
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->clickrate:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->clickrate:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0095

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/gemini/play/VodListStatus;->clickrate:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "msiptv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->clickrate:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_2
    const v5, 0x7f07016b

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->total:Landroid/widget/TextView;

    .line 217
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->total:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 218
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->total:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s.updatetime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/gemini/play/VodListStatus;->updatetime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 220
    const-string v2, "1"

    .line 221
    .local v2, "newnum":Ljava/lang/String;
    iget-object v5, v3, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "urlss":[Ljava/lang/String;
    array-length v5, v4

    if-lez v5, :cond_3

    .line 224
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "item":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    const/4 v5, 0x0

    aget-object v5, v1, v5

    if-eqz v5, :cond_3

    .line 226
    const/4 v5, 0x0

    aget-object v2, v1, v5

    .line 228
    .end local v1    # "item":[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->total:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b008f

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v5, 0x7f070176

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->updatetime:Landroid/widget/TextView;

    .line 231
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->updatetime:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 232
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->updatetime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s.updatetime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/gemini/play/VodListStatus;->updatetime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 234
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->updatetime:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0097

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/gemini/play/VodListStatus;->updatetime:I

    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/gemini/play/VODplayer;->secondToData2(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b008d

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b008e

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v5, 0x7f0700fd

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->name:Landroid/widget/TextView;

    .line 237
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->name:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41500000    # 13.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 238
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s.name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->name:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const v5, 0x7f07005e

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->area:Landroid/widget/TextView;

    .line 244
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->area:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 245
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->area:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->area:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0093

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/gemini/play/VodPlayerInfoActivity;->getArea(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const v5, 0x7f07016c

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->type:Landroid/widget/TextView;

    .line 249
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->type:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 250
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->type:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->type:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0096

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/gemini/play/VodPlayerInfoActivity;->getType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v5, 0x7f070182

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->year:Landroid/widget/TextView;

    .line 254
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->year:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 255
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->year:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->year:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0094

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/gemini/play/VodPlayerInfoActivity;->getYears(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const v5, 0x7f0700bc

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro3:Landroid/widget/TextView;

    .line 259
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro3:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 260
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro3:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 261
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro3:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b008b

    invoke-virtual {p0, v7}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const v5, 0x7f0700bd

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro4:Landroid/widget/TextView;

    .line 264
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro4:Landroid/widget/TextView;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 265
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro4:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro4:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->intro4:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 270
    const v5, 0x7f070068

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    .line 271
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 272
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/VodPlayerInfoActivity$3;

    invoke-direct {v6, p0, v3}, Lcom/gemini/play/VodPlayerInfoActivity$3;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;Lcom/gemini/play/VodListStatus;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/VodPlayerInfoActivity$4;

    invoke-direct {v6, p0}, Lcom/gemini/play/VodPlayerInfoActivity$4;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 303
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setFocusable(Z)V

    .line 304
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 305
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->requestFocus()Z

    .line 306
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button0:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 308
    const v5, 0x7f070069

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    .line 309
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 310
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 311
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/VodPlayerInfoActivity$5;

    invoke-direct {v6, p0, v3}, Lcom/gemini/play/VodPlayerInfoActivity$5;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;Lcom/gemini/play/VodListStatus;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button1:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/VodPlayerInfoActivity$6;

    invoke-direct {v6, p0}, Lcom/gemini/play/VodPlayerInfoActivity$6;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 329
    const v5, 0x7f07006a

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    .line 330
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 331
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 332
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/VodPlayerInfoActivity$7;

    invoke-direct {v6, p0, v3}, Lcom/gemini/play/VodPlayerInfoActivity$7;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;Lcom/gemini/play/VodListStatus;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button2:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/VodPlayerInfoActivity$8;

    invoke-direct {v6, p0}, Lcom/gemini/play/VodPlayerInfoActivity$8;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 353
    const v5, 0x7f07006b

    invoke-virtual {p0, v5}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    .line 354
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    iget v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->rate:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 355
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/VodPlayerInfoActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 356
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/VodPlayerInfoActivity$9;

    invoke-direct {v6, p0}, Lcom/gemini/play/VodPlayerInfoActivity$9;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button3:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/VodPlayerInfoActivity$10;

    invoke-direct {v6, p0}, Lcom/gemini/play/VodPlayerInfoActivity$10;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0
.end method

.method private init_ui()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f070130

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/MyVodSelectionsView;

    iput-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    .line 95
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->onSelectionsPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodSelectionsView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 97
    new-instance v0, Lcom/gemini/play/CollectVodDB;

    invoke-direct {v0, p0}, Lcom/gemini/play/CollectVodDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    .line 98
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 471
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 473
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 520
    :cond_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 477
    :sswitch_1
    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodSelectionsView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodSelectionsView;->hideSelectionsView()V

    .line 480
    iget v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->button_index:I

    invoke-direct {p0, v0, v1}, Lcom/gemini/play/VodPlayerInfoActivity;->SelectButton(ZI)V

    goto :goto_0

    .line 487
    :sswitch_2
    invoke-static {p0, v3}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;I)V

    .line 488
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 498
    :sswitch_3
    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodSelectionsView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    invoke-direct {p0, v3, v2}, Lcom/gemini/play/VodPlayerInfoActivity;->SelectButton(ZI)V

    goto :goto_0

    .line 508
    :sswitch_4
    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodSelectionsView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    invoke-direct {p0, v0, v2}, Lcom/gemini/play/VodPlayerInfoActivity;->SelectButton(ZI)V

    goto :goto_0

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f09007a

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerInfoActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 58
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_id:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_type:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "collect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_collect:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info collect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_collect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 67
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerInfoActivity;->init_ui()V

    .line 68
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_type:Ljava/lang/String;

    iget v2, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_collect:I

    invoke-direct {p0, v0, v1, v2}, Lcom/gemini/play/VodPlayerInfoActivity;->init(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    iget v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_collect:I

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/gemini/play/VodPlayerInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerInfoActivity$1;-><init>(Lcom/gemini/play/VodPlayerInfoActivity;)V

    .line 81
    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerInfoActivity$1;->start()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 615
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 616
    return-void
.end method

.method public openVideoActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "num"    # Ljava/lang/String;

    .prologue
    .line 651
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 652
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    const-string v1, "num"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v1, "collect"

    iget v2, p0, Lcom/gemini/play/VodPlayerInfoActivity;->info_collect:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 658
    return-void
.end method
