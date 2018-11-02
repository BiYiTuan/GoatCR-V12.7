.class public Lcom/gemini/play/VodPlayerVideoActivity;
.super Landroid/app/Activity;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private backlayout:Landroid/widget/LinearLayout;

.field private collectvoddber:Lcom/gemini/play/CollectVodDB;

.field private detector:Landroid/view/GestureDetector;

.field private exited:Z

.field private file_size:Ljava/lang/String;

.field private imageview:Lcom/gemini/play/MyVodImageView;

.field private info_collect:I

.field private info_id:Ljava/lang/String;

.field private info_num:Ljava/lang/String;

.field private info_type:Ljava/lang/String;

.field private infoview:Lcom/gemini/play/MyVodInfoView;

.field private mVideoViewCurrentDuration:I

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onInfoPressed:Lcom/gemini/play/ListViewInterface;

.field public onScrollView:Lcom/gemini/play/ScrollViewInterface;

.field public onSelectionsPressed:Lcom/gemini/play/ListViewInterface;

.field private onescroller:Lcom/gemini/play/ScrollTextView;

.field private openDB_postion:I

.field public rHandler:Landroid/os/Handler;

.field private ratebit:Ljava/lang/String;

.field private runThread_timeout:I

.field private s:Lcom/gemini/play/VodListStatus;

.field private selectionsview:Lcom/gemini/play/MyVodSelectionsView;

.field private vodProgressLayout:Landroid/widget/FrameLayout;

.field private voddber:Lcom/gemini/play/PositionVodDB;

.field private voddbtip:Z

.field private vodstatus:Lcom/gemini/play/VodPositionStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->detector:Landroid/view/GestureDetector;

    .line 46
    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->ratebit:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->file_size:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->mVideoViewCurrentDuration:I

    .line 51
    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    .line 53
    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 55
    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->voddber:Lcom/gemini/play/PositionVodDB;

    .line 56
    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->vodstatus:Lcom/gemini/play/VodPositionStatus;

    .line 58
    iput-boolean v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->voddbtip:Z

    .line 60
    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->vodProgressLayout:Landroid/widget/FrameLayout;

    .line 62
    iput-boolean v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->exited:Z

    .line 64
    iput v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->openDB_postion:I

    .line 66
    iput v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->runThread_timeout:I

    .line 468
    new-instance v0, Lcom/gemini/play/VodPlayerVideoActivity$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerVideoActivity$7;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    .line 485
    new-instance v0, Lcom/gemini/play/VodPlayerVideoActivity$8;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerVideoActivity$8;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->rHandler:Landroid/os/Handler;

    .line 608
    new-instance v0, Lcom/gemini/play/VodPlayerVideoActivity$14;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerVideoActivity$14;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->onInfoPressed:Lcom/gemini/play/ListViewInterface;

    .line 639
    new-instance v0, Lcom/gemini/play/VodPlayerVideoActivity$15;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerVideoActivity$15;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    .line 655
    new-instance v0, Lcom/gemini/play/VodPlayerVideoActivity$16;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerVideoActivity$16;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->onSelectionsPressed:Lcom/gemini/play/ListViewInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/VodPlayerVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerVideoActivity;->clickrate()V

    return-void
.end method

.method static synthetic access$100(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/MyVodImageView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->imageview:Lcom/gemini/play/MyVodImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/VodPlayerVideoActivity;->getNextUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/gemini/play/VodPlayerVideoActivity;->get_video_url_and_pw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1208(Lcom/gemini/play/VodPlayerVideoActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->runThread_timeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->runThread_timeout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodPositionStatus;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->vodstatus:Lcom/gemini/play/VodPositionStatus;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/gemini/play/VodPlayerVideoActivity;->getNumUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1602(Lcom/gemini/play/VodPlayerVideoActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->openDB_postion:I

    return p1
.end method

.method static synthetic access$1700(Lcom/gemini/play/VodPlayerVideoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/MyVodSelectionsView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/MyVodInfoView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/VodPlayerVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->exited:Z

    return v0
.end method

.method static synthetic access$202(Lcom/gemini/play/VodPlayerVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->exited:Z

    return p1
.end method

.method static synthetic access$300(Lcom/gemini/play/VodPlayerVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerVideoActivity;->getInfo_p2p()V

    return-void
.end method

.method static synthetic access$400(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gemini/play/VodPlayerVideoActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/gemini/play/VodPlayerVideoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/gemini/play/VodPlayerVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->voddbtip:Z

    return v0
.end method

.method static synthetic access$702(Lcom/gemini/play/VodPlayerVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->voddbtip:Z

    return p1
.end method

.method static synthetic access$800(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/PositionVodDB;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->voddber:Lcom/gemini/play/PositionVodDB;

    return-object v0
.end method

.method static synthetic access$900(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/VodListStatus;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerVideoActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    return-object v0
.end method

.method private clickrate()V
    .locals 2

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gemini/play/VODplayer;->gete()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/MGplayer;->admindir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/clickrate.php?mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/gemini/play/MGplayer;->tv:Lcom/gemini/play/MGplayer;

    invoke-virtual {v1}, Lcom/gemini/play/MGplayer;->GetMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&chage=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gemini/play/MGplayer;->get_key_value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->sendServerCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 466
    return-void
.end method

.method private getInfo_p2p()V
    .locals 10

    .prologue
    .line 355
    sget-object v5, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "arrs":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===vod arrs length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 357
    array-length v5, v0

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const/4 v5, 0x3

    aget-object v5, v0, v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "opts":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {}, Lcom/gemini/play/MGplayer;->port()I

    move-result v6

    invoke-static {v5, v6}, Lcom/gemini/play/VODplayer;->sendHttpRequesttotal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "info":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "speed value info :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 367
    const-string v5, "byterate="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v5, 0xa

    .line 368
    .local v4, "start":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 371
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 372
    .local v1, "end":I
    add-int v5, v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity;->ratebit:Ljava/lang/String;

    .line 374
    const-string v5, "file_size="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v5, 0xb

    .line 375
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 378
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 379
    add-int v5, v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity;->file_size:Ljava/lang/String;

    .line 381
    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity;->ratebit:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity;->file_size:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity;->ratebit:Ljava/lang/String;

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity;->file_size:Ljava/lang/String;

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 382
    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity;->file_size:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/gemini/play/VodPlayerVideoActivity;->ratebit:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    long-to-int v5, v6

    sput v5, Lcom/gemini/play/VODplayer;->p2pCurrentDuration:I

    goto/16 :goto_0
.end method

.method private getNextUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 398
    const-string v5, "\\|"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "urlss":[Ljava/lang/String;
    array-length v5, v3

    if-lez v5, :cond_1

    .line 400
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "item":[Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v8, :cond_1

    aget-object v5, v1, v7

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 424
    .end local v1    # "item":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 406
    :cond_1
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 407
    aget-object v5, v3, v0

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 408
    .restart local v1    # "item":[Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v8, :cond_2

    .line 409
    aget-object v5, v1, v7

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 410
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    .line 413
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v3, v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "item2":[Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v8, :cond_0

    .line 415
    aget-object v4, v2, v7

    iput-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    .line 416
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 406
    .end local v2    # "item2":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getNumUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "num"    # Ljava/lang/String;

    .prologue
    .line 429
    const-string v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "urlss":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 432
    aget-object v3, v2, v0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "item":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 434
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    .end local v1    # "item":[Ljava/lang/String;
    :goto_1
    return-object v3

    .line 431
    .restart local v1    # "item":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "item":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/gemini/play/VodListStatus;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "itype"    # Ljava/lang/String;
    .param p3, "collect"    # I

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "s":Lcom/gemini/play/VodListStatus;
    if-nez p3, :cond_0

    .line 388
    invoke-static {p1, p2}, Lcom/gemini/play/VODplayer;->getVodListStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/gemini/play/VodListStatus;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const-string v1, "read db video"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    invoke-virtual {v1, p1, p2}, Lcom/gemini/play/CollectVodDB;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/gemini/play/VodListStatus;

    move-result-object v0

    goto :goto_0
.end method

.method private get_video_url_and_pw(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "get_url_pw"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 444
    if-nez p1, :cond_0

    .line 461
    :goto_0
    return-object v1

    .line 447
    :cond_0
    const-string v2, "geminipwgemini"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "get_url_pws":[Ljava/lang/String;
    array-length v2, v0

    if-lt v2, v4, :cond_2

    const-string v2, "p2p://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    const-string v2, "geminipwgemini"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 449
    aget-object v2, v0, v3

    const-string v3, "geminipwgemini"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 450
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 451
    aget-object v1, v0, v5

    sput-object v1, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    .line 461
    :goto_1
    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    goto :goto_0

    .line 453
    :cond_1
    sput-object v1, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    goto :goto_1

    .line 454
    :cond_2
    array-length v2, v0

    if-lt v2, v4, :cond_3

    .line 455
    aget-object v2, v0, v3

    const-string v3, "geminipwgemini"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 456
    sput-object v1, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    goto :goto_1

    .line 458
    :cond_3
    const-string v2, "geminipwgemini"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 459
    sput-object v1, Lcom/gemini/play/VODplayer;->video_pw:Ljava/lang/String;

    goto :goto_1
.end method

.method private openDBActivity()V
    .locals 3

    .prologue
    .line 550
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b00e4

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 552
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerVideoActivity$11;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerVideoActivity$11;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 565
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerVideoActivity$12;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerVideoActivity$12;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 573
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 574
    return-void
.end method

.method private runThread()V
    .locals 4

    .prologue
    .line 303
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 304
    .local v0, "runHandler":Landroid/os/Handler;
    new-instance v1, Lcom/gemini/play/VodPlayerVideoActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/gemini/play/VodPlayerVideoActivity$6;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;Landroid/os/Handler;)V

    .line 351
    .local v1, "runRunnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method private showBacklayout()V
    .locals 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/VodPlayerVideoActivity$13;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerVideoActivity$13;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    :cond_0
    return-void
.end method


# virtual methods
.method public exitActivity()V
    .locals 3

    .prologue
    .line 516
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b00d8

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 518
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerVideoActivity$9;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerVideoActivity$9;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 539
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerVideoActivity$10;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerVideoActivity$10;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 546
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 547
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v7, 0x7f090085

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->setContentView(I)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 73
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->exited:Z

    .line 75
    invoke-static/range {p0 .. p0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v27

    .line 76
    .local v27, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v25

    .line 78
    .local v25, "rate":F
    new-instance v7, Lcom/gemini/play/PositionVodDB;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/gemini/play/PositionVodDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->voddber:Lcom/gemini/play/PositionVodDB;

    .line 79
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->voddber:Lcom/gemini/play/PositionVodDB;

    invoke-virtual {v7}, Lcom/gemini/play/PositionVodDB;->open()V

    .line 81
    const v7, 0x7f070105

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    .line 83
    const v7, 0x7f0700f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/MyVodInfoView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    .line 84
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onInfoPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v7, v8}, Lcom/gemini/play/MyVodInfoView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 86
    new-instance v7, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->detector:Landroid/view/GestureDetector;

    .line 87
    new-instance v7, Lcom/gemini/play/CollectVodDB;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/gemini/play/CollectVodDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    .line 89
    const v7, 0x7f070130

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/MyVodSelectionsView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    .line 90
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onSelectionsPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v7, v8}, Lcom/gemini/play/MyVodSelectionsView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 94
    const v7, 0x7f0700b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/MyVodImageView;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->imageview:Lcom/gemini/play/MyVodImageView;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_id:Ljava/lang/String;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_type:Ljava/lang/String;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "num"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "collect"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_collect:I

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_id:Ljava/lang/String;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_type:Ljava/lang/String;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->voddber:Lcom/gemini/play/PositionVodDB;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_type:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/gemini/play/PositionVodDB;->get(II)Lcom/gemini/play/VodPositionStatus;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->vodstatus:Lcom/gemini/play/VodPositionStatus;

    .line 133
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->vodstatus:Lcom/gemini/play/VodPositionStatus;

    if-eqz v7, :cond_0

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info num = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/VodPlayerVideoActivity;->vodstatus:Lcom/gemini/play/VodPositionStatus;

    iget v8, v8, Lcom/gemini/play/VodPositionStatus;->position:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 135
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->voddbtip:Z

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->openDBActivity()V

    .line 141
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_collect:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/gemini/play/VodPlayerVideoActivity;->getStatus(Ljava/lang/String;Ljava/lang/String;I)Lcom/gemini/play/VodListStatus;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    .line 143
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget-object v7, v7, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 144
    :cond_1
    const-string v7, "vodliststatus null"

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 300
    :cond_2
    :goto_0
    return-void

    .line 149
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget-object v7, v7, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/gemini/play/VodPlayerVideoActivity;->getNumUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->get_video_url_and_pw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 151
    sget-object v7, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 155
    const v7, 0x7f070061

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->backlayout:Landroid/widget/LinearLayout;

    .line 157
    const v7, 0x7f070123

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/gemini/play/ScrollTextView;

    .line 158
    .local v6, "scroller":Lcom/gemini/play/ScrollTextView;
    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 159
    sget-object v7, Lcom/gemini/play/MGplayer;->scrolltext:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 160
    const-string v7, "start scrolltext"

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 161
    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
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

    .line 165
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onScrollView:Lcom/gemini/play/ScrollViewInterface;

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->scroll_every_interface(Lcom/gemini/play/ScrollViewInterface;)V

    .line 166
    sget-object v7, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    if-eqz v7, :cond_5

    sget-object v7, Lcom/gemini/play/MGplayer;->onescroll_txt:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 168
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->init(Landroid/view/WindowManager;)V

    .line 169
    const-string v7, "start onescroll_txt"

    invoke-static {v7}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/gemini/play/VodPlayerVideoActivity;->onescroller:Lcom/gemini/play/ScrollTextView;

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

    .line 175
    :cond_5
    const v7, 0x7f070060

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 176
    .local v18, "backbutton":Landroid/widget/Button;
    const/high16 v7, 0x41000000    # 8.0f

    mul-float v7, v7, v25

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 177
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    new-instance v7, Lcom/gemini/play/VodPlayerVideoActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/gemini/play/VodPlayerVideoActivity$1;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v7, 0x7f07008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 188
    .local v19, "decodebutton":Landroid/widget/Button;
    const/high16 v7, 0x41000000    # 8.0f

    mul-float v7, v7, v25

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 189
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 190
    new-instance v7, Lcom/gemini/play/VodPlayerVideoActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/gemini/play/VodPlayerVideoActivity$2;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v7, 0x7f070043

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/videolan/vlc/VlcVideoView;

    sput-object v7, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    .line 199
    sget-object v7, Lcom/gemini/play/VODplayer;->VideoViewS:Lorg/videolan/vlc/VlcVideoView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/videolan/vlc/VlcVideoView;->setVisibility(I)V

    .line 200
    const v7, 0x7f070044

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lio/vov/vitamio/widget/VideoView;

    sput-object v7, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    .line 201
    sget-object v7, Lcom/gemini/play/VODplayer;->VideoViewS2:Lio/vov/vitamio/widget/VideoView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lio/vov/vitamio/widget/VideoView;->setVisibility(I)V

    .line 220
    const v7, 0x7f070041

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/VideoView;

    sput-object v7, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    .line 221
    sget-object v7, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/gemini/play/VideoView;->setVisibility(I)V

    .line 236
    sget-object v7, Lcom/gemini/play/VODplayer;->VideoViewH:Lcom/gemini/play/VideoView;

    new-instance v8, Lcom/gemini/play/VodPlayerVideoActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/gemini/play/VodPlayerVideoActivity$3;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    invoke-virtual {v7, v8}, Lcom/gemini/play/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 243
    const v7, 0x7f070042

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/gemini/play/ExoPlayerView;

    sput-object v7, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    .line 244
    sget-object v7, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/gemini/play/ExoPlayerView;->setDefaultControlsEnabled(Z)V

    .line 245
    sget-object v7, Lcom/gemini/play/VODplayer;->VideoViewH2:Lcom/gemini/play/ExoPlayerView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/gemini/play/ExoPlayerView;->setVisibility(I)V

    .line 247
    sget-object v7, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 248
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/gemini/play/VodPlayerVideoActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/gemini/play/VodPlayerVideoActivity$4;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    :cond_6
    const v7, 0x7f07017c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    .line 262
    .local v24, "progressLayout":Landroid/widget/FrameLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    .local v20, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, 0x43000000    # 128.0f

    mul-float v7, v7, v25

    float-to-int v7, v7

    move-object/from16 v0, v20

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 264
    const/high16 v7, 0x42400000    # 48.0f

    mul-float v7, v7, v25

    float-to-int v7, v7

    move-object/from16 v0, v20

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 266
    const v7, 0x7f070117

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 267
    .local v26, "speedView":Landroid/widget/TextView;
    const/high16 v7, 0x40e00000    # 7.0f

    mul-float v7, v7, v25

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    const v7, 0x7f07017b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/gemini/play/VodPlayerVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ProgressBar;

    .line 271
    .local v23, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    .restart local v20    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v7, 0x42400000    # 48.0f

    mul-float v7, v7, v25

    float-to-int v7, v7

    move-object/from16 v0, v20

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 273
    const/high16 v7, 0x42400000    # 48.0f

    mul-float v7, v7, v25

    float-to-int v7, v7

    move-object/from16 v0, v20

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 274
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v21, Landroid/os/Handler;

    invoke-direct/range {v21 .. v21}, Landroid/os/Handler;-><init>()V

    .line 277
    .local v21, "mHandler":Landroid/os/Handler;
    new-instance v22, Lcom/gemini/play/VodPlayerVideoActivity$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gemini/play/VodPlayerVideoActivity$5;-><init>(Lcom/gemini/play/VodPlayerVideoActivity;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 293
    .local v22, "mRunnable":Ljava/lang/Runnable;
    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/gemini/play/VodPlayerVideoActivity;->runThread()V

    .line 299
    const/4 v7, 0x0

    sput-boolean v7, Lcom/gemini/play/VODplayer;->mIsPause:Z

    goto/16 :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodInfoView;->showInfoView()V

    .line 754
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget-object v2, v2, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodInfoView;->setTitle(Ljava/lang/String;)V

    .line 755
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

    .line 725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 727
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget v2, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_collect:I

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyVodSelectionsView;->showSelectionsView(Lcom/gemini/play/VodListStatus;I)V

    goto :goto_0

    .line 731
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodInfoView;->showInfoView()V

    .line 735
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget-object v2, v2, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodInfoView;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 672
    sparse-switch p1, :sswitch_data_0

    .line 720
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 674
    :sswitch_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;I)V

    .line 675
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_1

    .line 679
    :sswitch_1
    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    invoke-virtual {v2}, Lcom/gemini/play/MyVodSelectionsView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    invoke-virtual {v2}, Lcom/gemini/play/MyVodSelectionsView;->hideSelectionsView()V

    goto :goto_1

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerVideoActivity;->exitActivity()V

    .line 684
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 688
    :sswitch_2
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodInfoView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodInfoView;->backward()V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodInfoView;->showInfoView()V

    .line 692
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyVodInfoView;->setTitle(Ljava/lang/String;)V

    .line 693
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerVideoActivity;->showBacklayout()V

    goto :goto_0

    .line 698
    :sswitch_3
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodInfoView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 699
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodInfoView;->forward()V

    goto :goto_0

    .line 701
    :cond_2
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodInfoView;->showInfoView()V

    .line 702
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyVodInfoView;->setTitle(Ljava/lang/String;)V

    .line 703
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerVideoActivity;->showBacklayout()V

    goto/16 :goto_0

    .line 709
    :sswitch_4
    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/gemini/play/VODplayer;->ppVideo(Ljava/lang/String;)I

    move-result v0

    .line 710
    .local v0, "ret":I
    if-nez v0, :cond_3

    .line 711
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->imageview:Lcom/gemini/play/MyVodImageView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodImageView;->pauseImage()V

    goto/16 :goto_0

    .line 713
    :cond_3
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->imageview:Lcom/gemini/play/MyVodImageView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodImageView;->playImage()V

    goto/16 :goto_0

    .line 717
    .end local v0    # "ret":I
    :sswitch_5
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->selectionsview:Lcom/gemini/play/MyVodSelectionsView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget v3, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_collect:I

    iget-object v4, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/gemini/play/MyVodSelectionsView;->showSelectionsView(Lcom/gemini/play/VodListStatus;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 672
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_5
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 762
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 636
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 637
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 775
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 742
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 743
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 747
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 748
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 593
    sget-object v1, Lcom/gemini/play/VODplayer;->video_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/gemini/play/VODplayer;->ppVideo(Ljava/lang/String;)I

    move-result v0

    .line 594
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 595
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->imageview:Lcom/gemini/play/MyVodImageView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodImageView;->pauseImage()V

    .line 599
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodInfoView;->showInfoView()V

    .line 600
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->infoview:Lcom/gemini/play/MyVodInfoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gemini/play/VodPlayerVideoActivity;->s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/VodPlayerVideoActivity;->info_num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyVodInfoView;->setTitle(Ljava/lang/String;)V

    .line 601
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerVideoActivity;->showBacklayout()V

    .line 603
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 605
    .end local v0    # "ret":I
    :cond_0
    return v1

    .line 597
    .restart local v0    # "ret":I
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/VodPlayerVideoActivity;->imageview:Lcom/gemini/play/MyVodImageView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodImageView;->playImage()V

    goto :goto_0
.end method
