.class public Lcom/gemini/play/LivePlayerActivity;
.super Landroid/app/Activity;
.source "LivePlayerActivity.java"


# instance fields
.field private allwayscrolltext:Lcom/gemini/play/ScrollTextView;

.field private backbutton:Landroid/widget/Button;

.field private backlayout:Landroid/widget/LinearLayout;

.field private channelHandler:Landroid/os/Handler;

.field private channelRunnable:Ljava/lang/Runnable;

.field private channellayout:Landroid/widget/LinearLayout;

.field private channeltext:Landroid/widget/TextView;

.field private checkVideo_runing:Z

.field private checkVideo_times:I

.field private decodebutton:Landroid/widget/Button;

.field private infoview:Lcom/gemini/play/MyInfoView;

.field private is_longclick:Z

.field private isexit:Z

.field private liner:Lcom/gemini/play/MyLineView;

.field private listview:Lcom/gemini/play/MyListView;

.field private listview1:Lcom/gemini/play/MyListView1;

.field private listview2:Lcom/gemini/play/MyListView2;

.field private livebutton:Landroid/widget/ImageButton;

.field private livelist_ad_image:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/FrameLayout;

.field private menubutton:Landroid/widget/Button;

.field private numChannel:Ljava/lang/String;

.field private numHandler:Landroid/os/Handler;

.field private numRunnable:Ljava/lang/Runnable;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onInfoPressed:Lcom/gemini/play/ListViewInterface;

.field public onLinePressed:Lcom/gemini/play/ListViewInterface;

.field public onLivePressed:Lcom/gemini/play/ListViewInterface;

.field public onPreviewPressed:Lcom/gemini/play/ListViewInterface;

.field public onScrollView:Lcom/gemini/play/ScrollViewInterface;

.field public onSettingPressed:Lcom/gemini/play/ListViewInterface;

.field public onTypePressed:Lcom/gemini/play/ListViewInterface;

.field private onescroller:Lcom/gemini/play/ScrollTextView;

.field private percent_check_time:I

.field private percent_tmp:I

.field private previewbutton:Landroid/widget/ImageButton;

.field private previewview:Lcom/gemini/play/MyPreviewView;

.field public rHandler:Landroid/os/Handler;

.field public screenstatelistener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

.field private showMAC_runing:Z

.field private textmac:Landroid/widget/TextView;

.field private typeview:Lcom/gemini/play/MyTypeView;

.field private used_id:I

.field private watermark:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 50
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    .line 51
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    .line 52
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    .line 53
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    .line 54
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->channellayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->livebutton:Landroid/widget/ImageButton;

    .line 62
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->previewbutton:Landroid/widget/ImageButton;

    .line 63
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->backbutton:Landroid/widget/Button;

    .line 64
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->menubutton:Landroid/widget/Button;

    .line 65
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->decodebutton:Landroid/widget/Button;

    .line 67
    iput-boolean v2, p0, Lcom/gemini/play/LivePlayerActivity;->isexit:Z

    .line 68
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->backlayout:Landroid/widget/LinearLayout;

    .line 70
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    .line 71
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    .line 73
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->numHandler:Landroid/os/Handler;

    .line 74
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->numRunnable:Ljava/lang/Runnable;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->numChannel:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 79
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->allwayscrolltext:Lcom/gemini/play/ScrollTextView;

    .line 81
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->livelist_ad_image:Landroid/widget/ImageView;

    .line 82
    iput-boolean v2, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_runing:Z

    .line 83
    iput-boolean v2, p0, Lcom/gemini/play/LivePlayerActivity;->showMAC_runing:Z

    .line 84
    iput v2, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    .line 85
    iput-boolean v2, p0, Lcom/gemini/play/LivePlayerActivity;->is_longclick:Z

    .line 87
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    .line 89
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->liner:Lcom/gemini/play/MyLineView;

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    .line 93
    iput v2, p0, Lcom/gemini/play/LivePlayerActivity;->percent_check_time:I

    .line 94
    iput v2, p0, Lcom/gemini/play/LivePlayerActivity;->percent_tmp:I

    .line 96
    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->textmac:Landroid/widget/TextView;

    .line 277
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$1;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->screenstatelistener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    .line 922
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$16;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$16;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onInfoPressed:Lcom/gemini/play/ListViewInterface;

    .line 934
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$17;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$17;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onLivePressed:Lcom/gemini/play/ListViewInterface;

    .line 974
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$18;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$18;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onSettingPressed:Lcom/gemini/play/ListViewInterface;

    .line 998
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$19;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$19;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    .line 1029
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$20;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$20;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onPreviewPressed:Lcom/gemini/play/ListViewInterface;

    .line 1055
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$21;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$21;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onLinePressed:Lcom/gemini/play/ListViewInterface;

    .line 1076
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$22;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$22;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    .line 1662
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$32;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$32;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->rHandler:Landroid/os/Handler;

    .line 1811
    new-instance v0, Lcom/gemini/play/LivePlayerActivity$35;

    invoke-direct {v0, p0}, Lcom/gemini/play/LivePlayerActivity$35;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    iput-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyListView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyPreviewView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/gemini/play/LivePlayerActivity;->playCollectVideo(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/gemini/play/LivePlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->hideAllView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->livebutton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->previewbutton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->backlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/gemini/play/LivePlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/gemini/play/LivePlayerActivity;->isexit:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/gemini/play/LivePlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/gemini/play/LivePlayerActivity;->stopVideo(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->textmac:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/gemini/play/LivePlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    return v0
.end method

.method static synthetic access$1902(Lcom/gemini/play/LivePlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    return p1
.end method

.method static synthetic access$1908(Lcom/gemini/play/LivePlayerActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    return v0
.end method

.method static synthetic access$200(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->stopVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/gemini/play/LivePlayerActivity;->playVideo(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/gemini/play/LivePlayerActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->channellayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyInfoView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity;->numChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/gemini/play/LivePlayerActivity;->inputPasswordView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/gemini/play/LivePlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/gemini/play/LivePlayerActivity;)Lcom/gemini/play/MyTypeView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    return-object v0
.end method

.method private hideAllView()Z
    .locals 2

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, "v":I
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->hidePlayList()V

    .line 659
    const/4 v0, 0x1

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyTypeView;->hideTypeList()V

    .line 663
    const/4 v0, 0x1

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v1}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v1}, Lcom/gemini/play/MyPreviewView;->hidePreviewList()V

    .line 667
    const/4 v0, 0x1

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyInfoView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 670
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyInfoView;->hideInfoPanal()V

    .line 671
    const/4 v0, 0x1

    .line 673
    :cond_3
    if-lez v0, :cond_4

    .line 674
    const/4 v1, 0x1

    .line 676
    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 18

    .prologue
    .line 304
    const v13, 0x7f0700f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/gemini/play/MyInfoView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyInfoView;->setVisibility(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/gemini/play/LivePlayerActivity;->onInfoPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyInfoView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 308
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 309
    .local v12, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v10

    .line 311
    .local v10, "rate":F
    const v13, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lio/vov/vitamio/widget/VideoView;

    sput-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    .line 312
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v13, :cond_0

    .line 313
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 315
    :cond_0
    const v13, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/videolan/vlc/VlcVideoView;

    sput-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 316
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v13, :cond_1

    .line 317
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 368
    :cond_1
    const v13, 0x7f070042

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/gemini/play/ExoPlayerView;

    sput-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    .line 369
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v13, :cond_2

    .line 370
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/gemini/play/ExoPlayerView;->setDefaultControlsEnabled(Z)V

    .line 371
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 374
    :cond_2
    const v13, 0x7f070041

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/gemini/play/VideoView;

    sput-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 375
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 376
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$2;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v13, v14}, Lcom/gemini/play/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 392
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$3;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v13, v14}, Lcom/gemini/play/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 399
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$4;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v13, v14}, Lcom/gemini/play/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 420
    new-instance v7, Lcom/gemini/play/LivePlayerActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/gemini/play/LivePlayerActivity$5;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    .line 427
    .local v7, "pListener":Landroid/media/MediaPlayer$OnPreparedListener;
    sget-object v13, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v13, v7}, Lcom/gemini/play/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyListView;->setVisibility(I)V

    .line 431
    const v13, 0x7f0700f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/gemini/play/MyPreviewView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyPreviewView;->setVisibility(I)V

    .line 433
    const v13, 0x7f0700f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/gemini/play/MyTypeView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    .line 434
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyTypeView;->setVisibility(I)V

    .line 436
    const v13, 0x7f0700e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->livebutton:Landroid/widget/ImageButton;

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->livebutton:Landroid/widget/ImageButton;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->livebutton:Landroid/widget/ImageButton;

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$6;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v13, 0x7f070114

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->previewbutton:Landroid/widget/ImageButton;

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->previewbutton:Landroid/widget/ImageButton;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->previewbutton:Landroid/widget/ImageButton;

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$7;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const v13, 0x7f070060

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->backbutton:Landroid/widget/Button;

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->backbutton:Landroid/widget/Button;

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v10

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->backbutton:Landroid/widget/Button;

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->backbutton:Landroid/widget/Button;

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$8;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v13

    const-string v14, "simba"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->backbutton:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 477
    :cond_3
    const v13, 0x7f0700ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->menubutton:Landroid/widget/Button;

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->menubutton:Landroid/widget/Button;

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v10

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->menubutton:Landroid/widget/Button;

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->menubutton:Landroid/widget/Button;

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$9;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v13

    const-string v14, "simba"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->menubutton:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 491
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 492
    const v13, 0x7f07008f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->decodebutton:Landroid/widget/Button;

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->decodebutton:Landroid/widget/Button;

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v10

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->decodebutton:Landroid/widget/Button;

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->decodebutton:Landroid/widget/Button;

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$10;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    :cond_5
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v13

    const-string v14, "simba"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->decodebutton:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 506
    :cond_6
    const v13, 0x7f070117

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 507
    .local v11, "speedView":Landroid/widget/TextView;
    const v13, 0x7f070115

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 508
    .local v8, "progressBar":Landroid/widget/ProgressBar;
    const v13, 0x7f070116

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 509
    .local v9, "progressLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v13, 0x42400000    # 48.0f

    mul-float/2addr v13, v10

    float-to-int v13, v13

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 511
    const/high16 v13, 0x42400000    # 48.0f

    mul-float/2addr v13, v10

    float-to-int v13, v13

    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 512
    invoke-virtual {v8, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    const/high16 v13, 0x40e00000    # 7.0f

    mul-float/2addr v13, v10

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 514
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 516
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 517
    .local v5, "mHandler":Landroid/os/Handler;
    new-instance v6, Lcom/gemini/play/LivePlayerActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v9, v11, v5}, Lcom/gemini/play/LivePlayerActivity$11;-><init>(Lcom/gemini/play/LivePlayerActivity;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 542
    .local v6, "mRunnable":Ljava/lang/Runnable;
    const-wide/16 v14, 0x7d0

    invoke-virtual {v5, v6, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    const/4 v13, 0x0

    sput v13, Lcom/gemini/play/LIVEplayer;->currentLine:I

    .line 545
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getCurrentID()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 546
    .local v3, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v14, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyListView;->set_currentID(Ljava/lang/String;)V

    .line 547
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 548
    if-eqz v3, :cond_7

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 549
    :cond_7
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlSize()I

    move-result v13

    if-lez v13, :cond_d

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/gemini/play/LIVEplayer;->idGet(I)I

    move-result v13

    invoke-static {v13}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    sget-boolean v13, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v13, :cond_d

    .line 550
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/gemini/play/LIVEplayer;->idGet(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "id":Ljava/lang/String;
    sput-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 551
    .restart local v3    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v14, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyListView;->set_currentID(Ljava/lang/String;)V

    .line 560
    :cond_8
    :goto_0
    if-eqz v3, :cond_b

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 562
    const/16 v2, 0x5dc

    .line 563
    .local v2, "delay":I
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v13

    const-string v14, "huanqiu"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 564
    const/16 v2, 0xbb8

    .line 566
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    sget-boolean v13, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v13, :cond_e

    .line 567
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->urlSize()I

    move-result v13

    if-lez v13, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lcom/gemini/play/LIVEplayer;->isVideoTypePs(I)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    sget-boolean v13, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 568
    :cond_a
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/gemini/play/LIVEplayer;->idGet(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v14, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyListView;->set_currentID(Ljava/lang/String;)V

    .line 570
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$12;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    sget-object v14, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    .line 600
    .end local v2    # "delay":I
    :cond_b
    :goto_1
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    .line 601
    new-instance v13, Lcom/gemini/play/LivePlayerActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/gemini/play/LivePlayerActivity$14;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    .line 611
    new-instance v13, Lcom/gemini/play/LivePlayerActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/gemini/play/LivePlayerActivity$15;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->numHandler:Landroid/os/Handler;

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v14, v10

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 644
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->checkVideo()V

    .line 648
    sget v13, Lcom/gemini/play/MGplayer;->updatetip_show:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    sget-boolean v13, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    if-nez v13, :cond_c

    .line 649
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->showUpdateActivity(Landroid/content/Context;)V

    .line 652
    :cond_c
    return-void

    .line 554
    :cond_d
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->getVideoNoNeedpsNum()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "id":Ljava/lang/String;
    sput-object v3, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    .line 555
    .restart local v3    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v14, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyListView;->set_currentID(Ljava/lang/String;)V

    .line 556
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getVideoNoNeedpsNum"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    .restart local v2    # "delay":I
    :cond_e
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/gemini/play/LivePlayerActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/gemini/play/LivePlayerActivity$13;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v14, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyListView;->set_currentID(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    sget-object v14, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private init_screenstatelistener(Landroid/content/Context;)V
    .locals 2
    .param p1, "_this"    # Landroid/content/Context;

    .prologue
    .line 273
    new-instance v0, Lcom/gemini/play/ScreenObserver;

    invoke-direct {v0, p1}, Lcom/gemini/play/ScreenObserver;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, "ScreenServer":Lcom/gemini/play/ScreenObserver;
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->screenstatelistener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScreenObserver;->startObserver(Lcom/gemini/play/ScreenObserver$ScreenStateListener;)V

    .line 275
    return-void
.end method

.method private inputPasswordTypeView(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1595
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1596
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1597
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1598
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1599
    const v3, 0x7f0b00a5

    invoke-virtual {p0, v3}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1600
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1601
    const v3, 0x7f0b0083

    invoke-virtual {p0, v3}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/LivePlayerActivity$29;

    invoke-direct {v4, p0, v2, p1}, Lcom/gemini/play/LivePlayerActivity$29;-><init>(Lcom/gemini/play/LivePlayerActivity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1619
    const v3, 0x7f0b0032

    invoke-virtual {p0, v3}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/LivePlayerActivity$30;

    invoke-direct {v4, p0, p1}, Lcom/gemini/play/LivePlayerActivity$30;-><init>(Lcom/gemini/play/LivePlayerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1627
    return-void
.end method

.method private inputPasswordView(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1631
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1632
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1633
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f09003a

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1634
    .local v2, "textEntryView":Landroid/view/View;
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1635
    const v3, 0x7f0b00a5

    invoke-virtual {p0, v3}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1636
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1637
    const v3, 0x7f0b0083

    invoke-virtual {p0, v3}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/gemini/play/LivePlayerActivity$31;

    invoke-direct {v4, p0, v2, p1}, Lcom/gemini/play/LivePlayerActivity$31;-><init>(Lcom/gemini/play/LivePlayerActivity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1658
    const v3, 0x7f0b0032

    invoke-virtual {p0, v3}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1659
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1660
    return-void
.end method

.method private isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 903
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    if-nez v1, :cond_1

    .line 904
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->isPlaying()Z

    move-result v0

    .line 919
    :cond_0
    :goto_0
    return v0

    .line 905
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 906
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v1, :cond_0

    .line 907
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 909
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 910
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v1, :cond_0

    .line 911
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/VideoView;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 914
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 915
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v1, :cond_0

    .line 916
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0}, Lcom/gemini/play/ExoPlayerView;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method private playCollectVideo(ILjava/lang/String;II)V
    .locals 12
    .param p1, "inx"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "seek"    # I

    .prologue
    .line 720
    new-instance v7, Lcom/gemini/play/MyLiveCollectView;

    invoke-direct {v7}, Lcom/gemini/play/MyLiveCollectView;-><init>()V

    .line 721
    .local v7, "collecter":Lcom/gemini/play/MyLiveCollectView;
    invoke-virtual {v7, p0, p2}, Lcom/gemini/play/MyLiveCollectView;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/gemini/play/UrlStatus;

    move-result-object v10

    .line 723
    .local v10, "s":Lcom/gemini/play/UrlStatus;
    iget-object v5, v10, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 724
    .local v5, "url":Ljava/lang/String;
    iget-object v6, v10, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 726
    .local v6, "password":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const/4 v11, 0x0

    .line 730
    .local v11, "urlss":Ljava/lang/String;
    const/4 v9, 0x0

    .line 731
    .local v9, "passwordss":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanxing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 732
    sget-object v0, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 733
    sget-object v6, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    .line 743
    :goto_1
    invoke-static {v5, v6}, Lcom/gemini/play/LIVEplayer;->selectDecode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 744
    .local v8, "inx2":I
    if-ltz v8, :cond_2

    .line 745
    move p1, v8

    .line 747
    :cond_2
    if-nez p1, :cond_6

    .line 748
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 749
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 750
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_3

    .line 751
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 752
    :cond_3
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_4

    .line 753
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 755
    :cond_4
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/gemini/play/LIVEplayer;->playCollectVideoForHard(Landroid/content/Context;Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 736
    .end local v8    # "inx2":I
    :cond_5
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 737
    invoke-static {v6}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 739
    invoke-static {v11, p3}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 740
    invoke-static {v9, p3}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 756
    .restart local v8    # "inx2":I
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 757
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_7

    .line 758
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 759
    :cond_7
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 760
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 761
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_8

    .line 762
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 764
    :cond_8
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    .line 765
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/gemini/play/LIVEplayer;->playCollectVideoForSoft(Landroid/content/Context;Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 766
    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 767
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_a

    .line 768
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 769
    :cond_a
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 770
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 771
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_b

    .line 772
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 773
    :cond_b
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_0

    .line 774
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/gemini/play/LIVEplayer;->playCollectVideoForSoft2(Landroid/content/Context;Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 775
    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 776
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v0, :cond_d

    .line 777
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 778
    :cond_d
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 779
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_e

    .line 780
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 781
    :cond_e
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_f

    .line 782
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 783
    :cond_f
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v0, :cond_0

    .line 784
    sget-object v1, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/gemini/play/LIVEplayer;->playCollectVideoForHard2(Landroid/content/Context;Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private playCollectVideo(Ljava/lang/String;II)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "seek"    # I

    .prologue
    .line 712
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    .line 713
    .local v0, "inx":I
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/gemini/play/LivePlayerActivity;->playCollectVideo(ILjava/lang/String;II)V

    .line 714
    return-void
.end method

.method private playVideo(ILjava/lang/String;II)V
    .locals 11
    .param p1, "inx"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "seek"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 795
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jingjimu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jingjimudev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    invoke-static {}, Lcom/gemini/custom/custom;->jjm_send()V

    .line 799
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v4

    .line 800
    .local v4, "url":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->getVideoPassword(I)Ljava/lang/String;

    move-result-object v5

    .line 801
    .local v5, "password":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 882
    :goto_0
    return-void

    .line 804
    :cond_2
    const/4 v9, 0x0

    .line 805
    .local v9, "urlss":Ljava/lang/String;
    const/4 v8, 0x0

    .line 806
    .local v8, "passwordss":Ljava/lang/String;
    const-string v0, "9000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 808
    const/4 v5, 0x0

    .line 823
    :goto_1
    invoke-static {v4, v5}, Lcom/gemini/play/LIVEplayer;->selectDecode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 824
    .local v6, "inx2":I
    if-ltz v6, :cond_3

    .line 825
    move p1, v6

    .line 827
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 828
    if-nez p1, :cond_b

    .line 829
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v3}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 830
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v0, :cond_4

    .line 831
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 833
    :cond_4
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_5

    .line 834
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 835
    :cond_5
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_6

    .line 836
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v2}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 837
    :cond_6
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer;->playVideoForHard(Lcom/gemini/play/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v0, p2}, Lcom/gemini/play/MyListView;->setCurrentID(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/gemini/play/LIVEplayer;->playWaterMark(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 876
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 877
    .local v7, "msg":Landroid/os/Message;
    iput v10, v7, Landroid/os/Message;->what:I

    .line 878
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 879
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 880
    :cond_8
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->rHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x2255100

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 810
    .end local v6    # "inx2":I
    .end local v7    # "msg":Landroid/os/Message;
    :cond_9
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quanxing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video play:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 813
    sget-object v0, Lcom/gemini/custom/quanxing;->urlpassword:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 814
    sget-object v5, Lcom/gemini/custom/quanxing;->hotlink:Ljava/lang/String;

    goto/16 :goto_1

    .line 816
    :cond_a
    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 817
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 819
    invoke-static {v9, p3}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 820
    invoke-static {v8, p3}, Lcom/gemini/play/LIVEplayer;->getVideoPassFromPassTmpss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 838
    .restart local v6    # "inx2":I
    :cond_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 839
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0}, Lcom/gemini/play/ExoPlayerView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 840
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v3}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 841
    :cond_c
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    if-eqz v0, :cond_d

    .line 842
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 843
    :cond_d
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_e

    .line 844
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 845
    :cond_e
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_f

    .line 846
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v2}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 847
    :cond_f
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer;->playVideoForHard2(Lcom/gemini/play/ExoPlayerView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 848
    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 849
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 850
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v0, :cond_11

    .line 851
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 853
    :cond_11
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_12

    .line 854
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v2}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 855
    :cond_12
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_7

    .line 856
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 857
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft(Lorg/videolan/vlc/VlcVideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 859
    :cond_13
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 860
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_14

    .line 861
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v3}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 862
    :cond_14
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 863
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v0, :cond_15

    .line 864
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 866
    :cond_15
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_16

    .line 867
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 868
    :cond_16
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_7

    .line 869
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/gemini/play/LIVEplayer;->playVideoForSoft2(Lio/vov/vitamio/widget/VideoView;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private playVideo(Ljava/lang/String;II)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "seek"    # I

    .prologue
    .line 790
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    .line 791
    .local v0, "inx":I
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/gemini/play/LivePlayerActivity;->playVideo(ILjava/lang/String;II)V

    .line 792
    return-void
.end method

.method private showBacklayout()V
    .locals 4

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->backlayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/LivePlayerActivity$24;

    invoke-direct {v1, p0}, Lcom/gemini/play/LivePlayerActivity$24;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1137
    return-void
.end method

.method private showNextChannel()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1551
    iget-object v4, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v4}, Lcom/gemini/play/MyListView;->getCurrentID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget-boolean v4, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v5, v4}, Lcom/gemini/play/LIVEplayer;->getVideoStatusNext(IZ)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 1552
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    if-nez v2, :cond_1

    .line 1553
    const-string v3, ""

    .line 1566
    :goto_1
    return-object v3

    .line 1551
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1555
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    iget v0, v2, Lcom/gemini/play/UrlStatus;->id:I

    .line 1556
    .local v0, "id":I
    iget-object v1, v2, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 1558
    .local v1, "name":Ljava/lang/String;
    if-ltz v0, :cond_2

    .line 1559
    iget-object v4, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v4, v0}, Lcom/gemini/play/MyListView;->setCurrentID(I)V

    .line 1561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1563
    .local v3, "t":Ljava/lang/String;
    goto :goto_1

    .line 1566
    .end local v3    # "t":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method private showPreChannel()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1574
    iget-object v4, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v4}, Lcom/gemini/play/MyListView;->getCurrentID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget-boolean v4, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v5, v4}, Lcom/gemini/play/LIVEplayer;->getVideoStatusForward(IZ)Lcom/gemini/play/UrlStatus;

    move-result-object v2

    .line 1575
    .local v2, "status":Lcom/gemini/play/UrlStatus;
    if-nez v2, :cond_1

    .line 1576
    const-string v3, ""

    .line 1591
    :goto_1
    return-object v3

    .line 1574
    .end local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1578
    .restart local v2    # "status":Lcom/gemini/play/UrlStatus;
    :cond_1
    iget v0, v2, Lcom/gemini/play/UrlStatus;->id:I

    .line 1579
    .local v0, "id":I
    iget-object v1, v2, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 1583
    .local v1, "name":Ljava/lang/String;
    if-ltz v0, :cond_2

    .line 1584
    iget-object v4, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v4, v0}, Lcom/gemini/play/MyListView;->setCurrentID(I)V

    .line 1586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1588
    .local v3, "t":Ljava/lang/String;
    goto :goto_1

    .line 1591
    .end local v3    # "t":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method private stopVideo()V
    .locals 1

    .prologue
    .line 885
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gemini/play/LivePlayerActivity;->stopVideo(I)V

    .line 886
    return-void
.end method

.method private stopVideo(I)V
    .locals 1
    .param p1, "inx"    # I

    .prologue
    .line 889
    if-nez p1, :cond_1

    .line 890
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->stopVideoForHard(Lcom/gemini/play/VideoView;)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 892
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->stopVideoForHard2(Lcom/gemini/play/ExoPlayerView;)V

    goto :goto_0

    .line 893
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 894
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    .line 895
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->stopVideoForSoft(Lorg/videolan/vlc/VlcVideoView;)V

    goto :goto_0

    .line 896
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 897
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_0

    .line 898
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->stopVideoForSoft2(Lio/vov/vitamio/widget/VideoView;)V

    goto :goto_0
.end method

.method private videoSetFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 680
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-nez v0, :cond_1

    .line 681
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setFocusable(Z)V

    .line 682
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/VideoView;->setFocusableInTouchMode(Z)V

    .line 683
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->requestFocus()Z

    .line 684
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    invoke-virtual {v0}, Lcom/gemini/play/VideoView;->requestFocusFromTouch()Z

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 686
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoView;->setFocusable(Z)V

    .line 688
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoView;->setFocusableInTouchMode(Z)V

    .line 689
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->requestFocus()Z

    .line 690
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoView;->requestFocusFromTouch()Z

    goto :goto_0

    .line 692
    :cond_2
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 693
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    if-eqz v0, :cond_0

    .line 694
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v2}, Lio/vov/vitamio/widget/VideoView;->setFocusable(Z)V

    .line 695
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0, v2}, Lio/vov/vitamio/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 696
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/VideoView;->requestFocus()Z

    .line 697
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    invoke-virtual {v0}, Lio/vov/vitamio/widget/VideoView;->requestFocusFromTouch()Z

    goto :goto_0

    .line 700
    :cond_3
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDecode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 701
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    if-eqz v0, :cond_0

    .line 702
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/ExoPlayerView;->setFocusable(Z)V

    .line 703
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0, v2}, Lcom/gemini/play/ExoPlayerView;->setFocusableInTouchMode(Z)V

    .line 704
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0}, Lcom/gemini/play/ExoPlayerView;->requestFocus()Z

    .line 705
    sget-object v0, Lcom/gemini/play/LIVEplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    invoke-virtual {v0}, Lcom/gemini/play/ExoPlayerView;->requestFocusFromTouch()Z

    goto :goto_0
.end method


# virtual methods
.method public checkVideo()V
    .locals 4

    .prologue
    .line 1784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVideo_runing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_runing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " checkVideo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/gemini/play/MGplayer;->checkVideo_times:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1786
    iget-boolean v2, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_runing:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    if-lez v2, :cond_0

    .line 1787
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_runing:Z

    .line 1789
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1790
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/LivePlayerActivity$34;

    invoke-direct {v1, p0, v0}, Lcom/gemini/play/LivePlayerActivity$34;-><init>(Lcom/gemini/play/LivePlayerActivity;Landroid/os/Handler;)V

    .line 1802
    .local v1, "mRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1804
    .end local v0    # "mHandler":Landroid/os/Handler;
    .end local v1    # "mRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1156
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1143
    :sswitch_0
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v0}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v0}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->videoSetFocus()V

    goto :goto_0

    .line 1151
    :sswitch_1
    const-string v0, "KeyEvent.KEYCODE_POWER"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public exitActivity()V
    .locals 3

    .prologue
    .line 1501
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1502
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b007f

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 1503
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/LivePlayerActivity$27;

    invoke-direct {v2, p0}, Lcom/gemini/play/LivePlayerActivity$27;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 1532
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/LivePlayerActivity$28;

    invoke-direct {v2, p0}, Lcom/gemini/play/LivePlayerActivity$28;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 1540
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 1541
    return-void
.end method

.method public init_ui()V
    .locals 22

    .prologue
    .line 156
    const v3, 0x7f0700f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/MyListView2;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->listview2:Lcom/gemini/play/MyListView2;

    .line 157
    const v3, 0x7f0700f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/gemini/play/MyListView1;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->listview1:Lcom/gemini/play/MyListView1;

    .line 158
    const v3, 0x7f07015f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->textmac:Landroid/widget/TextView;

    .line 160
    move-object/from16 v0, p0

    iget v3, v0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 161
    new-instance v3, Lcom/gemini/play/MyListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/LivePlayerActivity;->listview1:Lcom/gemini/play/MyListView1;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    invoke-direct {v3, v4, v5}, Lcom/gemini/play/MyListView;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    .line 165
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/LivePlayerActivity;->onLivePressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v3, v4}, Lcom/gemini/play/MyListView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 167
    const v3, 0x7f0700f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/gemini/play/MyPreviewView;

    .line 171
    .local v18, "previewview":Lcom/gemini/play/MyPreviewView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->onPreviewPressed:Lcom/gemini/play/ListViewInterface;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/gemini/play/MyPreviewView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 173
    const v3, 0x7f0700f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/gemini/play/MyTypeView;

    .line 177
    .local v21, "typeview":Lcom/gemini/play/MyTypeView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/gemini/play/MyTypeView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 179
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quanxing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    sget v3, Lcom/gemini/play/MGplayer;->leftdaysshow:I

    sput v3, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    .line 183
    :cond_1
    sget v3, Lcom/gemini/play/MGplayer;->isShowLefttime:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 184
    const v3, 0x7f070164

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 185
    .local v20, "timeouttext":Landroid/widget/TextView;
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v4

    mul-float/2addr v3, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 186
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const-string v19, ""

    .line 189
    .local v19, "timeout":Ljava/lang/String;
    sget-object v3, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0080

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0082

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 194
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v19    # "timeout":Ljava/lang/String;
    .end local v20    # "timeouttext":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f070123

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/ScrollTextView;

    .line 198
    .local v2, "scroller":Lcom/gemini/play/ScrollTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/LivePlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 199
    sget-object v3, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 200
    sget v3, Lcom/gemini/play/MGplayer;->livescroll_show:I

    if-nez v3, :cond_3

    .line 201
    const-string v3, "start scrolltext"

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 202
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    sget-object v4, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x40200000    # 2.5f

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v10

    mul-float/2addr v3, v10

    float-to-int v10, v3

    const-string v11, "FFFFFF"

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v11}, Lcom/gemini/play/ScrollTextView;->start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;)V

    .line 206
    :cond_3
    sget v3, Lcom/gemini/play/MGplayer;->livescroll_show:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->allwayscrolltext:Lcom/gemini/play/ScrollTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->allwayscrolltext:Lcom/gemini/play/ScrollTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->allwayscrolltext:Lcom/gemini/play/ScrollTextView;

    sget-object v5, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x40200000    # 2.5f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v11

    mul-float/2addr v4, v11

    float-to-int v11, v4

    const-string v12, "FFFFFF"

    sget v13, Lcom/gemini/play/MGplayer;->livescroll_showtimes:I

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v13}, Lcom/gemini/play/ScrollTextView;->start_dtime(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->allwayscrolltext:Lcom/gemini/play/ScrollTextView;

    invoke-virtual {v3}, Lcom/gemini/play/ScrollTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getDensityDpi()I

    move-result v3

    const/16 v4, 0x1e0

    if-ne v3, v4, :cond_a

    .line 216
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->allwayscrolltext:Lcom/gemini/play/ScrollTextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/gemini/play/ScrollTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->scroll_every_interface(Lcom/gemini/play/ScrollViewInterface;)V

    .line 221
    sget-object v3, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/LivePlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    sget-object v5, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x40200000    # 2.5f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v11

    mul-float/2addr v4, v11

    float-to-int v11, v4

    const-string v12, "FFFFFF"

    sget v13, Lcom/gemini/play/MGplayer;->onescroll_times:I

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v13}, Lcom/gemini/play/ScrollTextView;->start(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V

    .line 230
    :cond_5
    const v3, 0x7f070075

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    .line 231
    const v3, 0x7f070074

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->channellayout:Landroid/widget/LinearLayout;

    .line 233
    const v3, 0x7f07017d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gemini/play/MGplayer;->_this:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/icon/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/LIVEplayer;->watermask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 235
    .local v15, "imagePath":Ljava/lang/String;
    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 236
    .local v14, "bit":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    sget v3, Lcom/gemini/play/MGplayer;->watermark_site:I

    if-nez v3, :cond_b

    .line 238
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .local v17, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x33

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    sget v3, Lcom/gemini/play/MGplayer;->watermark_dip1:I

    sget v4, Lcom/gemini/play/MGplayer;->watermark_dip2:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .end local v17    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    :goto_3
    sget v3, Lcom/gemini/play/MGplayer;->adliveimage_site:I

    if-nez v3, :cond_f

    .line 263
    const v3, 0x7f0700e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->livelist_ad_image:Landroid/widget/ImageView;

    .line 269
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/LivePlayerActivity;->livelist_ad_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/gemini/play/MyListView;->set_ad_Image(Landroid/widget/ImageView;)V

    .line 270
    return-void

    .line 162
    .end local v2    # "scroller":Lcom/gemini/play/ScrollTextView;
    .end local v14    # "bit":Landroid/graphics/Bitmap;
    .end local v15    # "imagePath":Ljava/lang/String;
    .end local v18    # "previewview":Lcom/gemini/play/MyPreviewView;
    .end local v21    # "typeview":Lcom/gemini/play/MyTypeView;
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 163
    new-instance v3, Lcom/gemini/play/MyListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/gemini/play/LivePlayerActivity;->listview2:Lcom/gemini/play/MyListView2;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    invoke-direct {v3, v4, v5}, Lcom/gemini/play/MyListView;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    goto/16 :goto_0

    .line 192
    .restart local v18    # "previewview":Lcom/gemini/play/MyPreviewView;
    .restart local v19    # "timeout":Ljava/lang/String;
    .restart local v20    # "timeouttext":Landroid/widget/TextView;
    .restart local v21    # "typeview":Lcom/gemini/play/MyTypeView;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0080

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gemini/play/MGplayer;->leftdays:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0081

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 214
    .end local v19    # "timeout":Ljava/lang/String;
    .end local v20    # "timeouttext":Landroid/widget/TextView;
    .restart local v2    # "scroller":Lcom/gemini/play/ScrollTextView;
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_2

    .line 242
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "bit":Landroid/graphics/Bitmap;
    .restart local v15    # "imagePath":Ljava/lang/String;
    :cond_b
    sget v3, Lcom/gemini/play/MGplayer;->watermark_site:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 243
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .restart local v17    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x53

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 245
    sget v3, Lcom/gemini/play/MGplayer;->watermark_dip1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/gemini/play/MGplayer;->watermark_dip2:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 247
    .end local v17    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_c
    sget v3, Lcom/gemini/play/MGplayer;->watermark_site:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 248
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .restart local v17    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x55

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 250
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/gemini/play/MGplayer;->watermark_dip1:I

    sget v6, Lcom/gemini/play/MGplayer;->watermark_dip2:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 252
    .end local v17    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    sget v3, Lcom/gemini/play/MGplayer;->watermark_site:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 253
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .restart local v17    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x35

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    const/4 v3, 0x0

    sget v4, Lcom/gemini/play/MGplayer;->watermark_dip1:I

    sget v5, Lcom/gemini/play/MGplayer;->watermark_dip2:I

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 257
    .end local v17    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    sget v3, Lcom/gemini/play/MGplayer;->watermark_site:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->watermark:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 264
    :cond_f
    sget v3, Lcom/gemini/play/MGplayer;->adliveimage_site:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 265
    const v3, 0x7f0700e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->livelist_ad_image:Landroid/widget/ImageView;

    goto/16 :goto_4

    .line 266
    :cond_10
    sget v3, Lcom/gemini/play/MGplayer;->adliveimage_site:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 267
    const v3, 0x7f0700e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/gemini/play/LivePlayerActivity;->livelist_ad_image:Landroid/widget/ImageView;

    goto/16 :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/16 v2, 0x80

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/gemini/play/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 103
    invoke-virtual {p0}, Lcom/gemini/play/LivePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 105
    invoke-static {p0}, Lcom/gemini/play/LIVEplayer;->setContext(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/gemini/play/LivePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ui_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "ui_type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 109
    if-lez v0, :cond_0

    if-gt v0, v4, :cond_0

    .line 110
    iput v0, p0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    .line 112
    :cond_0
    iget v1, p0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    if-ne v1, v3, :cond_2

    .line 113
    const v1, 0x7f090048

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->setContentView(I)V

    .line 117
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->mediaplayervodheader(I)V

    .line 119
    const v1, 0x7f070105

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/ScrollTextView;

    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 120
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/ScrollTextView;

    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->allwayscrolltext:Lcom/gemini/play/ScrollTextView;

    .line 125
    const v1, 0x7f070108

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 126
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->backlayout:Landroid/widget/LinearLayout;

    .line 128
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 130
    new-instance v1, Lcom/gemini/play/MyLineView;

    invoke-direct {v1}, Lcom/gemini/play/MyLineView;-><init>()V

    iput-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->liner:Lcom/gemini/play/MyLineView;

    .line 131
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->liner:Lcom/gemini/play/MyLineView;

    invoke-virtual {v1, p0}, Lcom/gemini/play/MyLineView;->initView(Landroid/content/Context;)V

    .line 132
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->liner:Lcom/gemini/play/MyLineView;

    iget-object v2, p0, Lcom/gemini/play/LivePlayerActivity;->onLinePressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyLineView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 134
    invoke-virtual {p0}, Lcom/gemini/play/LivePlayerActivity;->init_ui()V

    .line 136
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->init()V

    .line 138
    invoke-virtual {p0}, Lcom/gemini/play/LivePlayerActivity;->checkVideo()V

    .line 140
    invoke-virtual {p0}, Lcom/gemini/play/LivePlayerActivity;->showMAC()V

    .line 146
    return-void

    .line 114
    :cond_2
    iget v1, p0, Lcom/gemini/play/LivePlayerActivity;->used_id:I

    if-ne v1, v4, :cond_1

    .line 115
    const v1, 0x7f090049

    invoke-virtual {p0, v1}, Lcom/gemini/play/LivePlayerActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 14
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1160
    const/4 v9, 0x0

    iput v9, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    .line 1161
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x7

    if-lt p1, v9, :cond_1

    const/16 v9, 0x10

    if-gt p1, v9, :cond_1

    .line 1162
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->numChannel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p1, -0x7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->numChannel:Ljava/lang/String;

    .line 1163
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->numChannel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1164
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channellayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1166
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1167
    .local v7, "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1168
    .local v4, "data":Landroid/os/Bundle;
    const-string v9, "num"

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->numChannel:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v7, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1170
    const/4 v9, 0x0

    iput v9, v7, Landroid/os/Message;->what:I

    .line 1171
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->numHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1172
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->numHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1173
    :cond_0
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->numHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1174
    const/4 v9, 0x1

    .line 1436
    .end local v4    # "data":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :goto_0
    return v9

    .line 1178
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1436
    :cond_2
    :goto_1
    invoke-super/range {p0 .. p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto :goto_0

    .line 1180
    :sswitch_0
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v9

    const-string v10, "jufeng"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1181
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1182
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->showPreChannel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1184
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x5dc

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1185
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channellayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1186
    const/4 v9, 0x1

    goto :goto_0

    .line 1190
    :cond_3
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1191
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->showNextChannel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1193
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x5dc

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1194
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channellayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1195
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1202
    :sswitch_1
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v9

    const-string v10, "jufeng"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1203
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1204
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->showNextChannel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1206
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x5dc

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1207
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channellayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1208
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1212
    :cond_4
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1213
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channeltext:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->showPreChannel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1215
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channelHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->channelRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x5dc

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1216
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->channellayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1217
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1222
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-gtz v9, :cond_13

    .line 1223
    sget v9, Lcom/gemini/play/MGplayer;->livelist_leftright:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1224
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v8

    .line 1225
    .local v8, "type_size":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "left type_size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1226
    sget-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1227
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 1228
    :cond_5
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    .line 1262
    :goto_2
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->listFocus()V

    .line 1264
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1230
    :cond_6
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 1231
    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-nez v9, :cond_7

    .line 1232
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->inputPasswordTypeView(Ljava/lang/String;)V

    goto :goto_2

    .line 1234
    :cond_7
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    goto :goto_2

    .line 1237
    :cond_8
    sget-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1238
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_2

    .line 1240
    :cond_9
    sget-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIndexGetFormId(Ljava/lang/String;)I

    move-result v5

    .line 1241
    .local v5, "index":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "left index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1242
    if-ltz v5, :cond_e

    .line 1243
    if-nez v5, :cond_a

    .line 1244
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_2

    .line 1247
    :cond_a
    add-int/lit8 v9, v5, -0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 1248
    :cond_b
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    add-int/lit8 v10, v5, -0x1

    invoke-static {v10}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1250
    :cond_c
    add-int/lit8 v9, v5, -0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 1251
    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-nez v9, :cond_d

    .line 1252
    add-int/lit8 v9, v5, -0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->inputPasswordTypeView(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1254
    :cond_d
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1259
    :cond_e
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto/16 :goto_2

    .line 1268
    .end local v5    # "index":I
    .end local v8    # "type_size":I
    :cond_f
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1269
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->hideTypeList()V

    .line 1270
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->showViewNoTimeout()V

    .line 1271
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1272
    :cond_10
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1273
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->showViewNoTimeout()V

    .line 1274
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->listFocus()V

    .line 1275
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->showTypeList()V

    .line 1276
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1277
    :cond_11
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1278
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->showViewTimeout()V

    .line 1279
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->listFocus()V

    .line 1280
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->hidePreviewList()V

    .line 1281
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1284
    :cond_12
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1287
    :cond_13
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1288
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/gemini/play/LivePlayerActivity;->is_longclick:Z

    .line 1289
    sget-object v9, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->isBackplayUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1290
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->showBacklayout()V

    .line 1291
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1293
    :cond_14
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1294
    .local v0, "audio":Landroid/media/AudioManager;
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 1295
    .local v2, "current":I
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_15

    .line 1296
    const/4 v2, 0x0

    .line 1297
    :cond_15
    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {v0, v9, v2, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_1

    .line 1306
    .end local v0    # "audio":Landroid/media/AudioManager;
    .end local v2    # "current":I
    :sswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-gtz v9, :cond_25

    .line 1307
    sget v9, Lcom/gemini/play/MGplayer;->livelist_leftright:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_21

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 1309
    sget-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1310
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    .line 1351
    :goto_3
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->listFocus()V

    .line 1352
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1311
    :cond_16
    sget-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1312
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v9

    if-lez v9, :cond_1a

    .line 1314
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_18

    .line 1315
    :cond_17
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    goto :goto_3

    .line 1317
    :cond_18
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 1318
    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-nez v9, :cond_19

    .line 1319
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->inputPasswordTypeView(Ljava/lang/String;)V

    goto :goto_3

    .line 1321
    :cond_19
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    goto :goto_3

    .line 1325
    :cond_1a
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_3

    .line 1328
    :cond_1b
    sget-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIndexGetFormId(Ljava/lang/String;)I

    move-result v5

    .line 1329
    .restart local v5    # "index":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "right index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 1330
    if-ltz v5, :cond_20

    .line 1331
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->typeSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v5, v9, :cond_1c

    .line 1332
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto/16 :goto_3

    .line 1336
    :cond_1c
    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e

    .line 1337
    :cond_1d
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1339
    :cond_1e
    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    .line 1340
    sget-boolean v9, Lcom/gemini/play/LIVEplayer;->show_ps_playlist:Z

    if-nez v9, :cond_1f

    .line 1341
    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->typeIdGet(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->inputPasswordTypeView(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1343
    :cond_1f
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1348
    :cond_20
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto/16 :goto_3

    .line 1356
    .end local v5    # "index":I
    :cond_21
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1357
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->hideTypeList()V

    .line 1358
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->showViewNoTimeout()V

    .line 1372
    :cond_22
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1360
    :cond_23
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1362
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->showViewTimeout()V

    .line 1363
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->listFocus()V

    .line 1364
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->hidePreviewList()V

    .line 1365
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1366
    :cond_24
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-nez v9, :cond_22

    .line 1367
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->showViewNoTimeout()V

    .line 1368
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    iget-object v10, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v10}, Lcom/gemini/play/MyListView;->getCurrentID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyPreviewView;->showPreviewList(I)V

    .line 1369
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1375
    :cond_25
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v9}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v9}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1376
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/gemini/play/LivePlayerActivity;->is_longclick:Z

    .line 1377
    sget-object v9, Lcom/gemini/play/LIVEplayer;->currentURL:Ljava/lang/String;

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->isBackplayUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 1378
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->showBacklayout()V

    .line 1379
    iget-object v9, p0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    sget-object v10, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1381
    :cond_26
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1382
    .local v1, "audio1":Landroid/media/AudioManager;
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    .line 1383
    .local v6, "max1":I
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 1384
    .local v3, "current1":I
    add-int/lit8 v3, v3, 0x1

    if-le v3, v6, :cond_27

    .line 1385
    move v3, v6

    .line 1386
    :cond_27
    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {v1, v9, v3, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_1

    .line 1392
    .end local v1    # "audio1":Landroid/media/AudioManager;
    .end local v3    # "current1":I
    .end local v6    # "max1":I
    :sswitch_4
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->hideAllView()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_28

    .line 1393
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1395
    :cond_28
    iget-boolean v9, p0, Lcom/gemini/play/LivePlayerActivity;->isexit:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2b

    .line 1396
    const/4 v9, 0x0

    sput-boolean v9, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    .line 1397
    invoke-static {}, Lcom/gemini/play/LIVEplayer;->stopCheckVideo()V

    .line 1398
    invoke-direct {p0}, Lcom/gemini/play/LivePlayerActivity;->stopVideo()V

    .line 1399
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/gemini/play/LivePlayerActivity;->isexit:Z

    .line 1400
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v9

    const-string v10, "quanxing"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_29

    sget-object v9, Lcom/gemini/custom/quanxing;->exit_url:Ljava/lang/String;

    if-eqz v9, :cond_29

    .line 1401
    sget-object v9, Lcom/gemini/custom/quanxing;->exit_url:Ljava/lang/String;

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 1404
    :cond_29
    sget-boolean v9, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    if-nez v9, :cond_2a

    .line 1405
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/gemini/play/LocalService;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->stopService(Landroid/content/Intent;)Z

    .line 1406
    invoke-virtual {p0}, Lcom/gemini/play/LivePlayerActivity;->finish()V

    .line 1407
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V

    .line 1408
    invoke-static {}, Lcom/gemini/play/MGplayer;->exit_app()V

    .line 1418
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1410
    :cond_2a
    const v9, 0x7f0b0052

    invoke-virtual {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1411
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/gemini/play/LivePlayerActivity$25;

    invoke-direct {v10, p0}, Lcom/gemini/play/LivePlayerActivity$25;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    const-wide/16 v12, 0xbb8

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1420
    :cond_2b
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/gemini/play/LivePlayerActivity;->isexit:Z

    .line 1421
    const v9, 0x7f0b004a

    invoke-virtual {p0, v9}, Lcom/gemini/play/LivePlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1422
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/gemini/play/LivePlayerActivity$26;

    invoke-direct {v10, p0}, Lcom/gemini/play/LivePlayerActivity$26;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    const-wide/16 v12, 0x1388

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1427
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1432
    :sswitch_5
    const-string v9, "KeyEvent.KEYCODE_POWER"

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1178
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x1a -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1440
    iput v3, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    .line 1442
    sparse-switch p1, :sswitch_data_0

    .line 1497
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1445
    :sswitch_0
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1447
    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1448
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v1, v3}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_0

    .line 1449
    :cond_2
    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1450
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v1, v0}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_0

    .line 1452
    :cond_3
    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-ne v1, v0, :cond_5

    .line 1453
    :cond_4
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1455
    :cond_5
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v1, v3}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_0

    .line 1464
    :sswitch_1
    invoke-static {p0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 1465
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 1469
    :sswitch_2
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v1}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1470
    iget-boolean v1, p0, Lcom/gemini/play/LivePlayerActivity;->is_longclick:Z

    if-nez v1, :cond_6

    .line 1475
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    sget-object v2, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    goto :goto_0

    .line 1477
    :cond_6
    iput-boolean v3, p0, Lcom/gemini/play/LivePlayerActivity;->is_longclick:Z

    goto :goto_0

    .line 1484
    :sswitch_3
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v1}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->typeview:Lcom/gemini/play/MyTypeView;

    invoke-virtual {v1}, Lcom/gemini/play/MyTypeView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->previewview:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v1}, Lcom/gemini/play/MyPreviewView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1485
    iget-boolean v1, p0, Lcom/gemini/play/LivePlayerActivity;->is_longclick:Z

    if-nez v1, :cond_7

    .line 1489
    iget-object v1, p0, Lcom/gemini/play/LivePlayerActivity;->liner:Lcom/gemini/play/MyLineView;

    iget-object v2, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v2}, Lcom/gemini/play/MyListView;->currentID()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-virtual {v1, p0, v2, v3}, Lcom/gemini/play/MyLineView;->showView(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1491
    :cond_7
    iput-boolean v3, p0, Lcom/gemini/play/LivePlayerActivity;->is_longclick:Z

    goto/16 :goto_0

    .line 1442
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 1808
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1809
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1097
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->livebutton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1098
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->previewbutton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->backlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1100
    iput v4, p0, Lcom/gemini/play/LivePlayerActivity;->checkVideo_times:I

    .line 1102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/LivePlayerActivity$23;

    invoke-direct {v1, p0}, Lcom/gemini/play/LivePlayerActivity$23;-><init>(Lcom/gemini/play/LivePlayerActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1110
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->infoview:Lcom/gemini/play/MyInfoView;

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1114
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v0, v4}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    .line 1127
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1116
    :cond_2
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1117
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v0, v5}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_0

    .line 1119
    :cond_3
    sget-object v0, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/gemini/play/LIVEplayer;->typeNeedpsGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/gemini/play/LIVEplayer;->typePasswordOK:Z

    if-ne v0, v5, :cond_5

    .line 1120
    :cond_4
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    sget-object v1, Lcom/gemini/play/LIVEplayer;->currentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/gemini/play/MyListView;->showPlayList(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1122
    :cond_5
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity;->listview:Lcom/gemini/play/MyListView;

    invoke-virtual {v0, v4}, Lcom/gemini/play/MyListView;->showPlayList(I)V

    goto :goto_0
.end method

.method public showMAC()V
    .locals 4

    .prologue
    .line 1742
    iget-boolean v2, p0, Lcom/gemini/play/LivePlayerActivity;->showMAC_runing:Z

    if-nez v2, :cond_0

    sget v2, Lcom/gemini/play/MGplayer;->live_showmac:I

    if-lez v2, :cond_0

    .line 1744
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gemini/play/LivePlayerActivity;->showMAC_runing:Z

    .line 1746
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1747
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/LivePlayerActivity$33;

    invoke-direct {v1, p0, v0}, Lcom/gemini/play/LivePlayerActivity$33;-><init>(Lcom/gemini/play/LivePlayerActivity;Landroid/os/Handler;)V

    .line 1779
    .local v1, "mRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1781
    .end local v0    # "mHandler":Landroid/os/Handler;
    .end local v1    # "mRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
