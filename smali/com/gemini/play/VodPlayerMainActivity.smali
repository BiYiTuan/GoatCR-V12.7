.class public Lcom/gemini/play/VodPlayerMainActivity;
.super Landroid/app/Activity;
.source "VodPlayerMainActivity.java"


# static fields
.field private static findDialog:Landroid/app/AlertDialog;


# instance fields
.field private AreaNumberIndex:I

.field private Image20:Landroid/widget/ImageView;

.field private Image21:Landroid/widget/ImageView;

.field private Image22:Landroid/widget/ImageView;

.field private Image23:Landroid/widget/ImageView;

.field private Image24:Landroid/widget/ImageView;

.field private Text10:Landroid/widget/TextView;

.field private Text11:Landroid/widget/TextView;

.field private Text12:Landroid/widget/TextView;

.field private Text20:Landroid/widget/TextView;

.field private Text21:Landroid/widget/TextView;

.field private Text22:Landroid/widget/TextView;

.field private Text23:Landroid/widget/TextView;

.field private Text24:Landroid/widget/TextView;

.field private Text30:Landroid/widget/TextView;

.field private Text31:Landroid/widget/TextView;

.field private Text32:Landroid/widget/TextView;

.field private Text33:Landroid/widget/TextView;

.field private Text34:Landroid/widget/TextView;

.field private isexit:Z

.field private layout10:Landroid/widget/LinearLayout;

.field private layout11:Landroid/widget/LinearLayout;

.field private layout12:Landroid/widget/LinearLayout;

.field private layout20:Landroid/widget/FrameLayout;

.field private layout21:Landroid/widget/FrameLayout;

.field private layout22:Landroid/widget/FrameLayout;

.field private layout23:Landroid/widget/FrameLayout;

.field private layout24:Landroid/widget/FrameLayout;

.field private layout30:Landroid/widget/LinearLayout;

.field private layout31:Landroid/widget/LinearLayout;

.field private layout32:Landroid/widget/LinearLayout;

.field private layout33:Landroid/widget/LinearLayout;

.field private layout34:Landroid/widget/LinearLayout;

.field public onFindPressed:Lcom/gemini/play/ListViewInterface;

.field public rHandler:Landroid/os/Handler;

.field private rate:F

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gemini/play/VodListStatus;",
            ">;"
        }
    .end annotation
.end field

.field private showIndex:I

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/gemini/play/VodPlayerMainActivity;->findDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/16 v0, 0x1e

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 41
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout10:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout11:Landroid/widget/LinearLayout;

    .line 43
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout12:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout20:Landroid/widget/FrameLayout;

    .line 46
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout21:Landroid/widget/FrameLayout;

    .line 47
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout22:Landroid/widget/FrameLayout;

    .line 48
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout23:Landroid/widget/FrameLayout;

    .line 49
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout24:Landroid/widget/FrameLayout;

    .line 51
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout30:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout31:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout32:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout33:Landroid/widget/LinearLayout;

    .line 55
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout34:Landroid/widget/LinearLayout;

    .line 60
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text10:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text11:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text12:Landroid/widget/TextView;

    .line 64
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text20:Landroid/widget/TextView;

    .line 65
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text21:Landroid/widget/TextView;

    .line 66
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text22:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text23:Landroid/widget/TextView;

    .line 68
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text24:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text30:Landroid/widget/TextView;

    .line 71
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text31:Landroid/widget/TextView;

    .line 72
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text32:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text33:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text34:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image20:Landroid/widget/ImageView;

    .line 77
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image21:Landroid/widget/ImageView;

    .line 78
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image22:Landroid/widget/ImageView;

    .line 79
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image23:Landroid/widget/ImageView;

    .line 80
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image24:Landroid/widget/ImageView;

    .line 82
    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    .line 83
    iput-boolean v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->isexit:Z

    .line 87
    iput v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->showIndex:I

    .line 611
    new-instance v0, Lcom/gemini/play/VodPlayerMainActivity$17;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerMainActivity$17;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->rHandler:Landroid/os/Handler;

    .line 652
    new-instance v0, Lcom/gemini/play/VodPlayerMainActivity$18;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerMainActivity$18;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->onFindPressed:Lcom/gemini/play/ListViewInterface;

    return-void
.end method

.method private AreaNumber(I)I
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/16 v5, 0x23

    const/16 v1, 0x19

    const/16 v4, 0x14

    const/16 v3, 0x1e

    const/16 v2, 0xa

    .line 453
    packed-switch p1, :pswitch_data_0

    .line 523
    :cond_0
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    :goto_0
    return v0

    .line 455
    :pswitch_0
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v3, :cond_2

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v5, :cond_2

    .line 456
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 457
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v3, :cond_1

    .line 458
    iput v3, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 459
    :cond_1
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto :goto_0

    .line 460
    :cond_2
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v4, :cond_4

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v1, :cond_4

    .line 461
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 462
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v4, :cond_3

    .line 463
    iput v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 464
    :cond_3
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto :goto_0

    .line 465
    :cond_4
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v2, :cond_5

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_5

    .line 466
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto :goto_0

    .line 468
    :cond_5
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto :goto_0

    .line 471
    :pswitch_1
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v3, :cond_7

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v5, :cond_7

    .line 472
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 473
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v5, :cond_6

    .line 474
    const/16 v0, 0x22

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 475
    :cond_6
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto :goto_0

    .line 476
    :cond_7
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v1, :cond_9

    .line 477
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 478
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v1, :cond_8

    .line 479
    const/16 v0, 0x18

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 480
    :cond_8
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto :goto_0

    .line 481
    :cond_9
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 482
    iput v4, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 483
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto :goto_0

    .line 488
    :pswitch_2
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v3, :cond_a

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v5, :cond_a

    .line 489
    iput v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 490
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto/16 :goto_0

    .line 491
    :cond_a
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v4, :cond_b

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v1, :cond_b

    .line 492
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto/16 :goto_0

    .line 493
    :cond_b
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 494
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 495
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v2, :cond_c

    .line 496
    iput v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 497
    :cond_c
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto/16 :goto_0

    .line 502
    :pswitch_3
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v3, :cond_d

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v5, :cond_d

    .line 503
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto/16 :goto_0

    .line 504
    :cond_d
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v4, :cond_e

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-ge v0, v1, :cond_e

    .line 505
    iput v3, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 506
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto/16 :goto_0

    .line 507
    :cond_e
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 508
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 509
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_f

    .line 510
    iput v3, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    .line 511
    :cond_f
    iget v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    goto/16 :goto_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private EnterArea(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const v3, 0x7f060059

    const v2, 0x7f060058

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnterArea:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerMainActivity;->TransArea()V

    .line 408
    packed-switch p1, :pswitch_data_0

    .line 450
    :goto_0
    :pswitch_0
    return-void

    .line 410
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout11:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 416
    :pswitch_3
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout12:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 419
    :pswitch_4
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout20:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 422
    :pswitch_5
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout21:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 425
    :pswitch_6
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout22:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 428
    :pswitch_7
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout23:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 431
    :pswitch_8
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout24:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 434
    :pswitch_9
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout30:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 437
    :pswitch_a
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout31:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 440
    :pswitch_b
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout32:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 443
    :pswitch_c
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout33:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 446
    :pswitch_d
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout34:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private TransArea()V
    .locals 4

    .prologue
    const v1, 0x7f060055

    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 388
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout10:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 389
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout11:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 390
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout12:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 392
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout20:Landroid/widget/FrameLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 393
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout21:Landroid/widget/FrameLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 394
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout22:Landroid/widget/FrameLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 395
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout23:Landroid/widget/FrameLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 396
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout24:Landroid/widget/FrameLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 398
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout30:Landroid/widget/LinearLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 399
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout31:Landroid/widget/LinearLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 400
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout32:Landroid/widget/LinearLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 401
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout33:Landroid/widget/LinearLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 402
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout34:Landroid/widget/LinearLayout;

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 403
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/VodPlayerMainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/gemini/play/VodPlayerMainActivity;->EnterArea(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image24:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/gemini/play/VodPlayerMainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text24:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/gemini/play/VodPlayerMainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/gemini/play/VodPlayerMainActivity;->isexit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image20:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text20:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image21:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text21:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image22:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text22:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image23:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text23:Landroid/widget/TextView;

    return-object v0
.end method

.method private collectActivity(Landroid/content/Context;)V
    .locals 1
    .param p1, "_this"    # Landroid/content/Context;

    .prologue
    .line 704
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 705
    const-string v0, ""

    sput-object v0, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 706
    const-string v0, "collect"

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->openListActivity(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private exitActivity2()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 743
    iget-boolean v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->isexit:Z

    if-ne v0, v1, :cond_1

    .line 744
    iput-boolean v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->isexit:Z

    .line 745
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerMainActivity;->finish()V

    .line 746
    sget-boolean v0, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gemini/play/LocalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 748
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 749
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iput-boolean v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->isexit:Z

    .line 753
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 754
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/VodPlayerMainActivity$22;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerMainActivity$22;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private findActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "_this"    # Landroid/content/Context;

    .prologue
    .line 693
    new-instance v0, Lcom/gemini/play/MyVodFind3;

    invoke-direct {v0}, Lcom/gemini/play/MyVodFind3;-><init>()V

    .line 694
    .local v0, "finder":Lcom/gemini/play/MyVodFind3;
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->onFindPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v0, p1, v1}, Lcom/gemini/play/MyVodFind3;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;)Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/gemini/play/VodPlayerMainActivity;->findDialog:Landroid/app/AlertDialog;

    .line 695
    return-void
.end method

.method private hotActivity(Landroid/content/Context;)V
    .locals 1
    .param p1, "_this"    # Landroid/content/Context;

    .prologue
    .line 698
    sget-object v0, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 699
    const-string v0, "&hot=0"

    sput-object v0, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 700
    const-string v0, "hot"

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->openListActivity(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method private inputPasswordView(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 763
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 764
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 765
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 766
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 767
    const v3, 0x7f0b00a5

    invoke-virtual {p0, v3}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 768
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 769
    const v3, 0x7f0b0083

    invoke-virtual {p0, v3}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/VodPlayerMainActivity$23;

    invoke-direct {v4, p0, v2, p1}, Lcom/gemini/play/VodPlayerMainActivity$23;-><init>(Lcom/gemini/play/VodPlayerMainActivity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 785
    const v3, 0x7f0b0032

    invoke-virtual {p0, v3}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 787
    return-void
.end method


# virtual methods
.method public EnterEvent(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 527
    packed-switch p1, :pswitch_data_0

    .line 599
    :goto_0
    :pswitch_0
    return-void

    .line 529
    :pswitch_1
    invoke-direct {p0, p0}, Lcom/gemini/play/VodPlayerMainActivity;->findActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 532
    :pswitch_2
    invoke-direct {p0, p0}, Lcom/gemini/play/VodPlayerMainActivity;->hotActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 535
    :pswitch_3
    invoke-direct {p0, p0}, Lcom/gemini/play/VodPlayerMainActivity;->collectActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 538
    :pswitch_4
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_0
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 544
    :pswitch_5
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    :cond_1
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 550
    :pswitch_6
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    :cond_2
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 556
    :pswitch_7
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 559
    :cond_3
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 562
    :pswitch_8
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget-object v0, v0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 563
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/VodListStatus;

    iget v0, v0, Lcom/gemini/play/VodListStatus;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_4
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 568
    :pswitch_9
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v0, v2, :cond_5

    .line 569
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->inputPasswordView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    :cond_5
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->openListActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    :pswitch_a
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v0, v2, :cond_6

    .line 576
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->inputPasswordView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 578
    :cond_6
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->openListActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    :pswitch_b
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v0, v2, :cond_7

    .line 583
    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->inputPasswordView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 585
    :cond_7
    const-string v0, "2"

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->openListActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    :pswitch_c
    sget-object v0, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/gemini/play/ColumnStatus;->needps:I

    if-ne v0, v2, :cond_8

    .line 590
    const-string v0, "3"

    invoke-direct {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->inputPasswordView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    :cond_8
    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->openListActivity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :pswitch_d
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerMainActivity;->exitActivity()V

    goto/16 :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public btnTranslate(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 680
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v2, 0x43960000    # 300.0f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 681
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 682
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 683
    return-void
.end method

.method public cmdMessageLoadMain()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 602
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 606
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 607
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 608
    return-void
.end method

.method public exitActivity()V
    .locals 3

    .prologue
    .line 723
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b00d8

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 725
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$20;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$20;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 732
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$21;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$21;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 739
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 740
    return-void
.end method

.method public getURLimage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 373
    .local v4, "myurl":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 374
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v5, 0x1770

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 375
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 376
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 377
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 378
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 379
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "myurl":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/high16 v5, 0x40c00000    # 6.0f

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v1, 0x7f09007d

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v4, 0x400

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setFlags(II)V

    .line 94
    invoke-static {v8}, Lcom/gemini/play/MGplayer;->mediaplayervodheader(I)V

    .line 96
    const v1, 0x7f0700c2

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout10:Landroid/widget/LinearLayout;

    .line 97
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout10:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$1;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$1;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0700c3

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout11:Landroid/widget/LinearLayout;

    .line 106
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout11:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$2;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$2;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f0700c4

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout12:Landroid/widget/LinearLayout;

    .line 114
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout12:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$3;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$3;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v1, 0x7f0700c5

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout20:Landroid/widget/FrameLayout;

    .line 123
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout20:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$4;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$4;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x7f0700c6

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout21:Landroid/widget/FrameLayout;

    .line 131
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout21:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$5;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$5;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v1, 0x7f0700c7

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout22:Landroid/widget/FrameLayout;

    .line 139
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout22:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$6;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$6;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f0700c8

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout23:Landroid/widget/FrameLayout;

    .line 148
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout23:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$7;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$7;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f0700c9

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout24:Landroid/widget/FrameLayout;

    .line 156
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout24:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$8;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$8;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v1, 0x7f0700ca

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout30:Landroid/widget/LinearLayout;

    .line 165
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout30:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$9;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$9;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v1, 0x7f0700cb

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout31:Landroid/widget/LinearLayout;

    .line 173
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout31:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$10;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$10;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v1, 0x7f0700cc

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout32:Landroid/widget/LinearLayout;

    .line 181
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout32:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$11;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$11;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v1, 0x7f0700cd

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout33:Landroid/widget/LinearLayout;

    .line 189
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout33:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$12;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$12;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v1, 0x7f0700ce

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout34:Landroid/widget/LinearLayout;

    .line 197
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->layout34:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gemini/play/VodPlayerMainActivity$13;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerMainActivity$13;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    invoke-direct {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->EnterArea(I)V

    .line 208
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    .line 209
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v1

    iput v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    .line 211
    const v1, 0x7f070031

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text10:Landroid/widget/TextView;

    .line 212
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text10:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 213
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text10:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text11:Landroid/widget/TextView;

    .line 216
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text11:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text11:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 219
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text12:Landroid/widget/TextView;

    .line 220
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text12:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text12:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 223
    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text20:Landroid/widget/TextView;

    .line 224
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text20:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 225
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text20:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text21:Landroid/widget/TextView;

    .line 228
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text21:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text21:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    const v1, 0x7f070036

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text22:Landroid/widget/TextView;

    .line 232
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text22:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 233
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text22:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 235
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text23:Landroid/widget/TextView;

    .line 236
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text23:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 237
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text23:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text24:Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text24:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 241
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text24:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 243
    const v1, 0x7f070039

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text30:Landroid/widget/TextView;

    .line 244
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text30:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 245
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text30:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v1, v1

    if-lt v1, v6, :cond_0

    .line 247
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text30:Landroid/widget/TextView;

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    const v1, 0x7f07003a

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text31:Landroid/widget/TextView;

    .line 250
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text31:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 251
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text31:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v1, v1

    if-lt v1, v6, :cond_1

    .line 253
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text31:Landroid/widget/TextView;

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, v8

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_1
    const v1, 0x7f07003b

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text32:Landroid/widget/TextView;

    .line 256
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text32:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 257
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text32:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 258
    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v1, v1

    if-lt v1, v6, :cond_2

    .line 259
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text32:Landroid/widget/TextView;

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_2
    const v1, 0x7f07003c

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text33:Landroid/widget/TextView;

    .line 262
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text33:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 263
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text33:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 264
    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v1, v1

    if-lt v1, v6, :cond_3

    .line 265
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text33:Landroid/widget/TextView;

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_3
    const v1, 0x7f07003d

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text34:Landroid/widget/TextView;

    .line 268
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text34:Landroid/widget/TextView;

    iget v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->rate:F

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 269
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Text34:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity;->typeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 271
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image20:Landroid/widget/ImageView;

    .line 272
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image21:Landroid/widget/ImageView;

    .line 273
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image22:Landroid/widget/ImageView;

    .line 274
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image23:Landroid/widget/ImageView;

    .line 275
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->Image24:Landroid/widget/ImageView;

    .line 277
    new-instance v1, Lcom/gemini/play/VodPlayerMainActivity$14;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerMainActivity$14;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    .line 283
    invoke-virtual {v1}, Lcom/gemini/play/VodPlayerMainActivity$14;->start()V

    .line 285
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    .line 286
    .local v10, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/VodPlayerMainActivity$15;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerMainActivity$15;-><init>(Lcom/gemini/play/VodPlayerMainActivity;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v10, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    const v1, 0x7f070123

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gemini/play/ScrollTextView;

    .line 310
    .local v0, "scroller":Lcom/gemini/play/ScrollTextView;
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 312
    sget-object v1, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 313
    const-string v1, "start scrolltext"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 314
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    sget-object v2, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    const/high16 v7, 0x40200000    # 2.5f

    const/high16 v1, 0x41200000    # 10.0f

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

    .line 318
    :cond_4
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerMainActivity;->timeView()V

    .line 319
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 338
    sparse-switch p1, :sswitch_data_0

    .line 365
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 340
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumber(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->EnterArea(I)V

    goto :goto_0

    .line 344
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumber(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->EnterArea(I)V

    goto :goto_0

    .line 348
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumber(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->EnterArea(I)V

    goto :goto_0

    .line 352
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumber(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->EnterArea(I)V

    goto :goto_0

    .line 357
    :sswitch_4
    iget v1, p0, Lcom/gemini/play/VodPlayerMainActivity;->AreaNumberIndex:I

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->EnterEvent(I)V

    goto :goto_0

    .line 361
    :sswitch_5
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerMainActivity;->exitActivity2()V

    goto :goto_0

    .line 338
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 790
    invoke-static {}, Lcom/gemini/play/VODplayer;->parseMainDB()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    .line 791
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerMainActivity;->cmdMessageLoadMain()V

    .line 794
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 795
    return-void
.end method

.method public openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 710
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/VodPlayerMainActivity$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/gemini/play/VodPlayerMainActivity$19;-><init>(Lcom/gemini/play/VodPlayerMainActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    return-void
.end method

.method public openListActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gemini/play/VodPlayerList2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 689
    return-void
.end method

.method public timeView()V
    .locals 4

    .prologue
    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 323
    .local v0, "timeHander":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/VodPlayerMainActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/gemini/play/VodPlayerMainActivity$16;-><init>(Lcom/gemini/play/VodPlayerMainActivity;Landroid/os/Handler;)V

    .line 334
    .local v1, "timeRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    return-void
.end method
