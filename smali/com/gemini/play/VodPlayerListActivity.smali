.class public Lcom/gemini/play/VodPlayerListActivity;
.super Landroid/app/Activity;
.source "VodPlayerListActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static dialog:Landroid/app/AlertDialog;

.field private static list_type_getfocus:Z


# instance fields
.field private adapter:Lcom/gemini/play/MySimpleAdapterVodView;

.field private bitmapCache:Lcom/gemini/play/LruBitmapCache;

.field private classifyview:Lcom/gemini/play/MyVodClassify2View;

.field private collectlist:I

.field private collectvoddber:Lcom/gemini/play/CollectVodDB;

.field private colnumNum:I

.field private detector:Landroid/view/GestureDetector;

.field private enable_focus:Z

.field private findview:Lcom/gemini/play/MyVodFindView;

.field private isexit:Z

.field private lineNum:I

.field private listtypeview:Lcom/gemini/play/MyVodTypeView2;

.field private mVodGrid:Lcom/gemini/play/MyGridView;

.field public onClassifyPressed:Lcom/gemini/play/ListViewInterface;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onFindPressed:Lcom/gemini/play/ListViewInterface;

.field public onTopPressed:Lcom/gemini/play/ListViewInterface;

.field public onTypePressed:Lcom/gemini/play/ListViewInterface;

.field public rHandler:Landroid/os/Handler;

.field private rate:F

.field private selectItemIndex:I

.field private topview:Lcom/gemini/play/MyVodTopView;

.field private typeFace:Landroid/graphics/Typeface;

.field private vodProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/gemini/play/VodPlayerListActivity;->dialog:Landroid/app/AlertDialog;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/VodPlayerListActivity;->list_type_getfocus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    .line 52
    iput-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->detector:Landroid/view/GestureDetector;

    .line 53
    iput-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->findview:Lcom/gemini/play/MyVodFindView;

    .line 54
    iput-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->topview:Lcom/gemini/play/MyVodTopView;

    .line 56
    iput-boolean v0, p0, Lcom/gemini/play/VodPlayerListActivity;->isexit:Z

    .line 59
    iput v0, p0, Lcom/gemini/play/VodPlayerListActivity;->collectlist:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/gemini/play/VodPlayerListActivity;->lineNum:I

    .line 69
    iput-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->vodProgressBar:Landroid/widget/ProgressBar;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VodPlayerListActivity;->enable_focus:Z

    .line 350
    new-instance v0, Lcom/gemini/play/VodPlayerListActivity$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerListActivity$7;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    .line 727
    new-instance v0, Lcom/gemini/play/VodPlayerListActivity$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerListActivity$12;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    .line 742
    new-instance v0, Lcom/gemini/play/VodPlayerListActivity$13;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerListActivity$13;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->onFindPressed:Lcom/gemini/play/ListViewInterface;

    .line 766
    new-instance v0, Lcom/gemini/play/VodPlayerListActivity$14;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerListActivity$14;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    .line 815
    new-instance v0, Lcom/gemini/play/VodPlayerListActivity$15;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerListActivity$15;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->onTopPressed:Lcom/gemini/play/ListViewInterface;

    .line 833
    new-instance v0, Lcom/gemini/play/VodPlayerListActivity$16;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerListActivity$16;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->onClassifyPressed:Lcom/gemini/play/ListViewInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MySimpleAdapterVodView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->adapter:Lcom/gemini/play/MySimpleAdapterVodView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyGridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTypeView2;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodTopView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->topview:Lcom/gemini/play/MyVodTopView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/gemini/play/VodPlayerListActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/gemini/play/VodPlayerListActivity;->findActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodClassify2View;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/gemini/play/VodPlayerListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/gemini/play/VodPlayerListActivity;->isexit:Z

    return p1
.end method

.method static synthetic access$202(Lcom/gemini/play/VodPlayerListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/gemini/play/VodPlayerListActivity;->selectItemIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/gemini/play/VodPlayerListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/gemini/play/VodPlayerListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget v0, p0, Lcom/gemini/play/VodPlayerListActivity;->collectlist:I

    return v0
.end method

.method static synthetic access$402(Lcom/gemini/play/VodPlayerListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/gemini/play/VodPlayerListActivity;->collectlist:I

    return p1
.end method

.method static synthetic access$500(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/MyVodFindView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->findview:Lcom/gemini/play/MyVodFindView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gemini/play/VodPlayerListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->vodProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/gemini/play/VodPlayerListActivity;->list_type_getfocus:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 41
    sput-boolean p0, Lcom/gemini/play/VodPlayerListActivity;->list_type_getfocus:Z

    return p0
.end method

.method static synthetic access$802(Lcom/gemini/play/VodPlayerListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/gemini/play/VodPlayerListActivity;->enable_focus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/gemini/play/VodPlayerListActivity;)Lcom/gemini/play/CollectVodDB;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    return-object v0
.end method

.method private findActivity(Landroid/content/Context;)V
    .locals 3
    .param p1, "_this"    # Landroid/content/Context;

    .prologue
    .line 884
    new-instance v0, Lcom/gemini/play/MyVodFind;

    invoke-direct {v0}, Lcom/gemini/play/MyVodFind;-><init>()V

    .line 885
    .local v0, "finder":Lcom/gemini/play/MyVodFind;
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->onFindPressed:Lcom/gemini/play/ListViewInterface;

    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/gemini/play/MyVodFind;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/gemini/play/VodPlayerListActivity;->dialog:Landroid/app/AlertDialog;

    .line 886
    return-void
.end method

.method private hideAllView()Z
    .locals 2

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 639
    .local v0, "v":I
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->findview:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodFindView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->findview:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodFindView;->hideFindView()V

    .line 641
    const/4 v0, 0x1

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodClassify2View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodClassify2View;->hideClassifyList()V

    .line 646
    const/4 v0, 0x1

    .line 649
    :cond_1
    if-lez v0, :cond_2

    .line 650
    const/4 v1, 0x1

    .line 652
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cmdMessageAddList(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 298
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 299
    iput v3, v1, Landroid/os/Message;->what:I

    .line 300
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 301
    return-void
.end method

.method public cmdMessageAddList(Ljava/lang/String;I)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "what"    # I

    .prologue
    .line 304
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 307
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 309
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 310
    iput p2, v1, Landroid/os/Message;->what:I

    .line 311
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 312
    return-void
.end method

.method public cmdMessageAddList(Ljava/lang/String;II)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "what"    # I

    .prologue
    .line 315
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "page"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 321
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 322
    iput p3, v1, Landroid/os/Message;->what:I

    .line 323
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    return-void
.end method

.method public cmdMessageAddVod()V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 331
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 332
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void
.end method

.method public cmdMessageAddVod(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 336
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 337
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 338
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    return-void
.end method

.method public cmdMessageHideProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 342
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 346
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 347
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    return-void
.end method

.method public delCollect(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 889
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 890
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b00da

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 891
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerListActivity$17;

    invoke-direct {v2, p0, p1}, Lcom/gemini/play/VodPlayerListActivity$17;-><init>(Lcom/gemini/play/VodPlayerListActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 902
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerListActivity$18;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerListActivity$18;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 909
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 910
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 913
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 914
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 959
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 916
    :sswitch_0
    iget-boolean v1, p0, Lcom/gemini/play/VodPlayerListActivity;->enable_focus:Z

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/gemini/play/VodPlayerListActivity;->selectItemIndex:I

    iget v2, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerListActivity;->listtypeFocus()V

    .line 918
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodTypeView2;->selectIndex()V

    .line 919
    iput-boolean v3, p0, Lcom/gemini/play/VodPlayerListActivity;->enable_focus:Z

    goto :goto_1

    .line 921
    :cond_1
    iget-boolean v0, p0, Lcom/gemini/play/VodPlayerListActivity;->enable_focus:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassify2View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    :cond_2
    iget-boolean v0, p0, Lcom/gemini/play/VodPlayerListActivity;->enable_focus:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 939
    :sswitch_1
    invoke-static {p0, v3}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;I)V

    .line 940
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_1

    .line 914
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public exitActivity()V
    .locals 3

    .prologue
    .line 656
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 657
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b00d8

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 658
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerListActivity$9;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerListActivity$9;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 671
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerListActivity$10;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerListActivity$10;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 678
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 679
    return-void
.end method

.method public get_top_title(II)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I
    .param p2, "classify"    # I

    .prologue
    const/4 v3, 0x1

    .line 565
    const-string v0, ""

    .line 566
    .local v0, "text":Ljava/lang/String;
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v2, v2

    if-lt v2, v3, :cond_2

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 567
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, p1

    iget-object v0, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    .line 585
    :goto_0
    const/4 v1, 0x0

    .line 586
    .local v1, "type_names":[Ljava/lang/String;
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 587
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 589
    :cond_0
    add-int/lit8 v2, p2, -0x1

    if-ltz v2, :cond_1

    if-eqz v1, :cond_1

    array-length v2, v1

    add-int/lit8 v3, p2, -0x1

    if-le v2, v3, :cond_1

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2192"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    :cond_1
    return-object v0

    .line 569
    .end local v1    # "type_names":[Ljava/lang/String;
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 571
    :pswitch_0
    const v2, 0x7f0b00dc

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    goto :goto_0

    .line 574
    :pswitch_1
    const v2, 0x7f0b00dd

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    goto :goto_0

    .line 577
    :pswitch_2
    const v2, 0x7f0b00de

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    goto :goto_0

    .line 580
    :pswitch_3
    const v2, 0x7f0b00df

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init_ui()V
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/Roboto-Bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->typeFace:Landroid/graphics/Typeface;

    .line 247
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v1

    iput v1, p0, Lcom/gemini/play/VodPlayerListActivity;->rate:F

    .line 264
    const v1, 0x7f0700a0

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 265
    .local v0, "findbutton":Landroid/widget/ImageButton;
    new-instance v1, Lcom/gemini/play/VodPlayerListActivity$6;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerListActivity$6;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->findview:Lcom/gemini/play/MyVodFindView;

    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->onFindPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v1, v2}, Lcom/gemini/play/MyVodFindView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 290
    return-void
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 682
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyGridView;->setFocusable(Z)V

    .line 683
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyGridView;->setFocusableInTouchMode(Z)V

    .line 684
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v0}, Lcom/gemini/play/MyGridView;->requestFocus()Z

    .line 685
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v0}, Lcom/gemini/play/MyGridView;->requestFocusFromTouch()Z

    .line 686
    return-void
.end method

.method public listtypeFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 689
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodTypeView2;->setFocusable(Z)V

    .line 690
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodTypeView2;->setFocusableInTouchMode(Z)V

    .line 691
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodTypeView2;->requestFocus()Z

    .line 692
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodTypeView2;->requestFocusFromTouch()Z

    .line 693
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 81
    invoke-static {v5}, Lcom/gemini/play/MGplayer;->mediaplayervodheader(I)V

    .line 85
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->detector:Landroid/view/GestureDetector;

    .line 86
    const v2, 0x7f0700a1

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyVodFindView;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->findview:Lcom/gemini/play/MyVodFindView;

    .line 88
    new-instance v2, Lcom/gemini/play/CollectVodDB;

    invoke-direct {v2, p0}, Lcom/gemini/play/CollectVodDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    .line 90
    const v2, 0x7f0700fb

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyVodTopView;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->topview:Lcom/gemini/play/MyVodTopView;

    .line 91
    const v2, 0x7f07017a

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyGridView;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    .line 92
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->topview:Lcom/gemini/play/MyVodTopView;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity;->onTopPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTopView;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 96
    const v2, 0x7f0700fa

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyVodClassify2View;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    .line 97
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity;->onClassifyPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodClassify2View;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 99
    const v2, 0x7f070115

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->vodProgressBar:Landroid/widget/ProgressBar;

    .line 100
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->vodProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .local v1, "progressBarlayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v2, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v2, v2, 0x6

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 102
    sget v2, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v2, v2, 0x6

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 103
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->vodProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerListActivity$1;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerListActivity$1;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 126
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerListActivity$2;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerListActivity$2;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerListActivity$3;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerListActivity$3;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerListActivity$4;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerListActivity$4;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 181
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerListActivity$5;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerListActivity$5;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerListActivity;->init_ui()V

    .line 198
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerListActivity;->set_list()V

    .line 200
    const v2, 0x7f0700fc

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyVodTypeView2;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    .line 201
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTypeView2;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 203
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 204
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 205
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/gemini/play/ColumnStatus;->needps:I

    if-nez v2, :cond_2

    .line 206
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    .line 207
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->listtypeview:Lcom/gemini/play/MyVodTypeView2;

    invoke-virtual {v2, v0}, Lcom/gemini/play/MyVodTypeView2;->selectFirstIndex(I)V

    .line 208
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddList(Ljava/lang/String;)V

    .line 216
    .end local v0    # "ii":I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 218
    new-instance v2, Lcom/gemini/play/LruBitmapCache;

    invoke-direct {v2}, Lcom/gemini/play/LruBitmapCache;-><init>()V

    iput-object v2, p0, Lcom/gemini/play/VodPlayerListActivity;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    .line 222
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerListActivity;->listtypeFocus()V

    .line 224
    sput-boolean v5, Lcom/gemini/play/VodPlayerListActivity;->list_type_getfocus:Z

    .line 227
    iput v4, p0, Lcom/gemini/play/VodPlayerListActivity;->collectlist:I

    .line 228
    invoke-static {}, Lcom/gemini/play/VODplayer;->listClear()V

    .line 229
    sput v4, Lcom/gemini/play/VODplayer;->page:I

    .line 230
    sget-object v2, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 231
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddList(Ljava/lang/String;)V

    .line 233
    sget v2, Lcom/gemini/play/MGplayer;->updatetip_show:I

    if-ne v2, v5, :cond_1

    sget-boolean v2, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    if-nez v2, :cond_1

    .line 234
    invoke-static {p0}, Lcom/gemini/play/MGplayer;->showUpdateActivity(Landroid/content/Context;)V

    .line 242
    :cond_1
    return-void

    .line 204
    .restart local v0    # "ii":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "ii":I
    :cond_3
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerListActivity;->cmdMessageAddList(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1025
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

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->findview:Lcom/gemini/play/MyVodFindView;

    sget-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->showFindView(Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1033
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 1035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 1037
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

    .line 966
    sparse-switch p1, :sswitch_data_0

    .line 1012
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 978
    :sswitch_1
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerListActivity;->hideAllView()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 981
    iget-boolean v1, p0, Lcom/gemini/play/VodPlayerListActivity;->isexit:Z

    if-ne v1, v0, :cond_2

    .line 982
    iput-boolean v2, p0, Lcom/gemini/play/VodPlayerListActivity;->isexit:Z

    .line 983
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerListActivity;->finish()V

    .line 984
    sget-boolean v0, Lcom/gemini/play/MGplayer;->boot_launcher:Z

    if-nez v0, :cond_0

    .line 985
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gemini/play/LocalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/gemini/play/VodPlayerListActivity;->stopService(Landroid/content/Intent;)Z

    .line 986
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 987
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 990
    :cond_2
    iput-boolean v0, p0, Lcom/gemini/play/VodPlayerListActivity;->isexit:Z

    .line 991
    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    .line 992
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/gemini/play/VodPlayerListActivity$19;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerListActivity$19;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1004
    :sswitch_2
    iget-boolean v1, p0, Lcom/gemini/play/VodPlayerListActivity;->enable_focus:Z

    if-ne v1, v0, :cond_0

    .line 1005
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1006
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerListActivity;->listFocus()V

    goto :goto_1

    .line 966
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1048
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 719
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 720
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1054
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1061
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1066
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 723
    const-string v0, "vod onstart"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 724
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 725
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 702
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/VodPlayerListActivity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/gemini/play/VodPlayerListActivity$11;-><init>(Lcom/gemini/play/VodPlayerListActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 714
    return-void
.end method

.method public set_collect()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public set_list()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 597
    new-instance v0, Lcom/gemini/play/MySimpleAdapterVodView;

    sget-object v2, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    const v3, 0x7f090079

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "ItemView"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "ItemInfo"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "ItemTitle"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gemini/play/MySimpleAdapterVodView;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->adapter:Lcom/gemini/play/MySimpleAdapterVodView;

    .line 601
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity;->adapter:Lcom/gemini/play/MySimpleAdapterVodView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 603
    iget-object v0, p0, Lcom/gemini/play/VodPlayerListActivity;->adapter:Lcom/gemini/play/MySimpleAdapterVodView;

    new-instance v1, Lcom/gemini/play/VodPlayerListActivity$8;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerListActivity$8;-><init>(Lcom/gemini/play/VodPlayerListActivity;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 634
    return-void

    .line 597
    :array_0
    .array-data 4
        0x7f070022
        0x7f07000d
        0x7f07001a
    .end array-data
.end method

.method public set_top_text()V
    .locals 7

    .prologue
    .line 534
    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    iget v3, p0, Lcom/gemini/play/VodPlayerListActivity;->collectlist:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 536
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    invoke-virtual {v3}, Lcom/gemini/play/CollectVodDB;->parseSize()I

    move-result v1

    .line 537
    .local v1, "size":I
    iget v3, p0, Lcom/gemini/play/VodPlayerListActivity;->lineNum:I

    iget v4, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    mul-int/2addr v3, v4

    div-int v0, v1, v3

    .line 538
    .local v0, "pages":I
    iget v3, p0, Lcom/gemini/play/VodPlayerListActivity;->lineNum:I

    iget v4, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    mul-int/2addr v3, v4

    rem-int v3, v1, v3

    if-lez v3, :cond_0

    .line 539
    add-int/lit8 v0, v0, 0x1

    .line 540
    :cond_0
    if-nez v0, :cond_1

    .line 541
    const/4 v0, 0x1

    .line 542
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v4}, Lcom/gemini/play/MyGridView;->getFirstVisiblePosition()I

    move-result v4

    iget v5, p0, Lcom/gemini/play/VodPlayerListActivity;->lineNum:I

    iget v6, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    mul-int/2addr v5, v6

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity;->topview:Lcom/gemini/play/MyVodTopView;

    invoke-virtual {v3, v2}, Lcom/gemini/play/MyVodTopView;->set_vod_top_text(Ljava/lang/String;)V

    .line 562
    .end local v0    # "pages":I
    .end local v1    # "size":I
    .end local v2    # "t":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 545
    :cond_3
    sget-object v3, Lcom/gemini/play/VODplayer;->vod_number:[I

    sget-object v4, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lcom/gemini/play/VodPlayerListActivity;->lineNum:I

    iget v5, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    mul-int/2addr v4, v5

    div-int v0, v3, v4

    .line 546
    .restart local v0    # "pages":I
    sget-object v3, Lcom/gemini/play/VODplayer;->vod_number:[I

    sget-object v4, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lcom/gemini/play/VodPlayerListActivity;->lineNum:I

    iget v5, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    mul-int/2addr v4, v5

    rem-int/2addr v3, v4

    if-lez v3, :cond_4

    .line 547
    add-int/lit8 v0, v0, 0x1

    .line 548
    :cond_4
    if-nez v0, :cond_5

    .line 549
    const/4 v0, 0x1

    .line 550
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gemini/play/VodPlayerListActivity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v4}, Lcom/gemini/play/MyGridView;->getFirstVisiblePosition()I

    move-result v4

    iget v5, p0, Lcom/gemini/play/VodPlayerListActivity;->lineNum:I

    iget v6, p0, Lcom/gemini/play/VodPlayerListActivity;->colnumNum:I

    mul-int/2addr v5, v6

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    .restart local v2    # "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VodPlayerListActivity;->topview:Lcom/gemini/play/MyVodTopView;

    invoke-virtual {v3, v2}, Lcom/gemini/play/MyVodTopView;->set_vod_top_text(Ljava/lang/String;)V

    goto :goto_0
.end method
