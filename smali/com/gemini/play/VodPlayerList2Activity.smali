.class public Lcom/gemini/play/VodPlayerList2Activity;
.super Landroid/app/Activity;
.source "VodPlayerList2Activity.java"

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

.field private listtypeview:Lcom/gemini/play/MyVodTypeView3;

.field private mVodGrid:Lcom/gemini/play/MyGridView;

.field public onClassifyPressed:Lcom/gemini/play/ListViewInterface;

.field public onControlVideo:Lcom/gemini/play/ControlVideoInterface;

.field public onFindPressed:Lcom/gemini/play/ListViewInterface;

.field public onTopPressed:Lcom/gemini/play/ListViewInterface;

.field public onTypePressed:Lcom/gemini/play/ListViewInterface;

.field public rHandler:Landroid/os/Handler;

.field private rate:F

.field private selectItemIndex:I

.field private topview:Lcom/gemini/play/MyVodTop3View;

.field private typeFace:Landroid/graphics/Typeface;

.field private vodProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/gemini/play/VodPlayerList2Activity;->dialog:Landroid/app/AlertDialog;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gemini/play/VodPlayerList2Activity;->list_type_getfocus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    .line 50
    iput-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->detector:Landroid/view/GestureDetector;

    .line 51
    iput-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->findview:Lcom/gemini/play/MyVodFindView;

    .line 52
    iput-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    .line 54
    iput-boolean v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->isexit:Z

    .line 57
    iput v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectlist:I

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->lineNum:I

    .line 67
    iput-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->vodProgressBar:Landroid/widget/ProgressBar;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->enable_focus:Z

    .line 307
    new-instance v0, Lcom/gemini/play/VodPlayerList2Activity$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerList2Activity$6;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    .line 607
    new-instance v0, Lcom/gemini/play/VodPlayerList2Activity$9;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerList2Activity$9;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    .line 622
    new-instance v0, Lcom/gemini/play/VodPlayerList2Activity$10;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerList2Activity$10;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->onFindPressed:Lcom/gemini/play/ListViewInterface;

    .line 646
    new-instance v0, Lcom/gemini/play/VodPlayerList2Activity$11;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerList2Activity$11;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    .line 667
    new-instance v0, Lcom/gemini/play/VodPlayerList2Activity$12;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerList2Activity$12;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->onTopPressed:Lcom/gemini/play/ListViewInterface;

    .line 682
    new-instance v0, Lcom/gemini/play/VodPlayerList2Activity$13;

    invoke-direct {v0, p0}, Lcom/gemini/play/VodPlayerList2Activity$13;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    iput-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->onClassifyPressed:Lcom/gemini/play/ListViewInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MySimpleAdapterVodView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->adapter:Lcom/gemini/play/MySimpleAdapterVodView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyGridView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyVodFindView;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->findview:Lcom/gemini/play/MyVodFindView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/gemini/play/VodPlayerList2Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/gemini/play/VodPlayerList2Activity;->isexit:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyVodClassify2View;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/gemini/play/VodPlayerList2Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/gemini/play/VodPlayerList2Activity;->selectItemIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/gemini/play/VodPlayerList2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/gemini/play/VodPlayerList2Activity;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectlist:I

    return v0
.end method

.method static synthetic access$402(Lcom/gemini/play/VodPlayerList2Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectlist:I

    return p1
.end method

.method static synthetic access$500(Lcom/gemini/play/VodPlayerList2Activity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->vodProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/gemini/play/VodPlayerList2Activity;->list_type_getfocus:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/gemini/play/VodPlayerList2Activity;->list_type_getfocus:Z

    return p0
.end method

.method static synthetic access$702(Lcom/gemini/play/VodPlayerList2Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/gemini/play/VodPlayerList2Activity;->enable_focus:Z

    return p1
.end method

.method static synthetic access$800(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/CollectVodDB;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    return-object v0
.end method

.method static synthetic access$900(Lcom/gemini/play/VodPlayerList2Activity;)Lcom/gemini/play/MyVodTypeView3;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    return-object v0
.end method

.method private findActivity(Landroid/content/Context;)V
    .locals 3
    .param p1, "_this"    # Landroid/content/Context;

    .prologue
    .line 712
    new-instance v0, Lcom/gemini/play/MyVodFind;

    invoke-direct {v0}, Lcom/gemini/play/MyVodFind;-><init>()V

    .line 713
    .local v0, "finder":Lcom/gemini/play/MyVodFind;
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->onFindPressed:Lcom/gemini/play/ListViewInterface;

    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/gemini/play/MyVodFind;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/gemini/play/VodPlayerList2Activity;->dialog:Landroid/app/AlertDialog;

    .line 714
    return-void
.end method

.method private hideAllView()Z
    .locals 2

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 551
    .local v0, "v":I
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->findview:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodFindView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->findview:Lcom/gemini/play/MyVodFindView;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodFindView;->hideFindView()V

    .line 553
    const/4 v0, 0x1

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodClassify2View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v1}, Lcom/gemini/play/MyVodClassify2View;->hideClassifyList()V

    .line 558
    const/4 v0, 0x1

    .line 561
    :cond_1
    if-lez v0, :cond_2

    .line 562
    const/4 v1, 0x1

    .line 564
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

    .line 250
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 255
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 256
    iput v3, v1, Landroid/os/Message;->what:I

    .line 257
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 258
    return-void
.end method

.method public cmdMessageAddList(Ljava/lang/String;I)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "what"    # I

    .prologue
    .line 261
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 266
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 267
    iput p2, v1, Landroid/os/Message;->what:I

    .line 268
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    return-void
.end method

.method public cmdMessageAddList(Ljava/lang/String;II)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "what"    # I

    .prologue
    .line 272
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "page"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 278
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 279
    iput p3, v1, Landroid/os/Message;->what:I

    .line 280
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 281
    return-void
.end method

.method public cmdMessageAddVod()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 288
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 289
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    return-void
.end method

.method public cmdMessageAddVod(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 293
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 294
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 295
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method

.method public cmdMessageHideProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 299
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 303
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 304
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->rHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    return-void
.end method

.method public delCollect(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 717
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    const v1, 0x7f0b00da

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    .line 719
    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerList2Activity$14;

    invoke-direct {v2, p0, p1}, Lcom/gemini/play/VodPlayerList2Activity$14;-><init>(Lcom/gemini/play/VodPlayerList2Activity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 730
    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gemini/play/VodPlayerList2Activity$15;

    invoke-direct {v2, p0}, Lcom/gemini/play/VodPlayerList2Activity$15;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    .line 737
    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 738
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 741
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 742
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 766
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 744
    :sswitch_0
    iget-boolean v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->enable_focus:Z

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->selectItemIndex:I

    iget v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->listtypeFocus()V

    .line 747
    iput-boolean v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->enable_focus:Z

    goto :goto_1

    .line 749
    :cond_1
    iget-boolean v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->enable_focus:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassify2View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    :cond_2
    iget-boolean v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->enable_focus:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 759
    :sswitch_1
    invoke-static {p0, v3}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;I)V

    .line 760
    invoke-static {p0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    goto :goto_1

    .line 742
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public get_top_title(II)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I
    .param p2, "classify"    # I

    .prologue
    const/4 v3, 0x1

    .line 492
    const-string v0, ""

    .line 493
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

    .line 494
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, p1

    iget-object v0, v2, Lcom/gemini/play/ColumnStatus;->name:Ljava/lang/String;

    .line 512
    :goto_0
    const/4 v1, 0x0

    .line 513
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

    .line 514
    sget-object v2, Lcom/gemini/play/VODplayer;->columner:[Lcom/gemini/play/ColumnStatus;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/gemini/play/ColumnStatus;->type_type:Ljava/lang/String;

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 516
    :cond_0
    add-int/lit8 v2, p2, -0x1

    if-ltz v2, :cond_1

    if-eqz v1, :cond_1

    array-length v2, v1

    add-int/lit8 v3, p2, -0x1

    if-le v2, v3, :cond_1

    .line 517
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

    .line 520
    :cond_1
    return-object v0

    .line 496
    .end local v1    # "type_names":[Ljava/lang/String;
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 498
    :pswitch_0
    const v2, 0x7f0b00dc

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    goto :goto_0

    .line 501
    :pswitch_1
    const v2, 0x7f0b00dd

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    goto :goto_0

    .line 504
    :pswitch_2
    const v2, 0x7f0b00de

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    goto :goto_0

    .line 507
    :pswitch_3
    const v2, 0x7f0b00df

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init_ui()V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->typeFace:Landroid/graphics/Typeface;

    .line 246
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->rate:F

    .line 247
    return-void
.end method

.method public listFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 568
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyGridView;->setFocusable(Z)V

    .line 569
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyGridView;->setFocusableInTouchMode(Z)V

    .line 570
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v0}, Lcom/gemini/play/MyGridView;->requestFocus()Z

    .line 571
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v0}, Lcom/gemini/play/MyGridView;->requestFocusFromTouch()Z

    .line 572
    return-void
.end method

.method public listtypeFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 575
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodTypeView3;->setFocusable(Z)V

    .line 576
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodTypeView3;->setFocusableInTouchMode(Z)V

    .line 577
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodTypeView3;->requestFocus()Z

    .line 578
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodTypeView3;->requestFocusFromTouch()Z

    .line 579
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v2, 0x7f09007c

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 79
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    .line 81
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->detector:Landroid/view/GestureDetector;

    .line 82
    const v2, 0x7f0700a1

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyVodFindView;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->findview:Lcom/gemini/play/MyVodFindView;

    .line 84
    new-instance v2, Lcom/gemini/play/CollectVodDB;

    invoke-direct {v2, p0}, Lcom/gemini/play/CollectVodDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    .line 86
    const v2, 0x7f0700fb

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyVodTop3View;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    .line 87
    const v2, 0x7f07017a

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyGridView;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    .line 88
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->onTopPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTop3View;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 91
    const v2, 0x7f0700fa

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyVodClassify2View;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    .line 92
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->classifyview:Lcom/gemini/play/MyVodClassify2View;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->onClassifyPressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodClassify2View;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 94
    const v2, 0x7f070115

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->vodProgressBar:Landroid/widget/ProgressBar;

    .line 95
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->vodProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .local v0, "progressBarlayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v2, Lcom/gemini/play/MGplayer;->screenWidth:I

    div-int/lit8 v2, v2, 0x6

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 97
    sget v2, Lcom/gemini/play/MGplayer;->screenHeight:I

    div-int/lit8 v2, v2, 0x6

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 98
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->vodProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerList2Activity$1;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerList2Activity$1;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 121
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerList2Activity$2;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerList2Activity$2;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerList2Activity$3;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerList2Activity$3;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerList2Activity$4;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerList2Activity$4;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 170
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    new-instance v3, Lcom/gemini/play/VodPlayerList2Activity$5;

    invoke-direct {v3, p0}, Lcom/gemini/play/VodPlayerList2Activity$5;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->init_ui()V

    .line 186
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->set_list()V

    .line 188
    const v2, 0x7f0700fc

    invoke-virtual {p0, v2}, Lcom/gemini/play/VodPlayerList2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gemini/play/MyVodTypeView3;

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    .line 189
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->onTypePressed:Lcom/gemini/play/ListViewInterface;

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTypeView3;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 190
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTypeView3;->set_init(I)V

    .line 201
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 203
    new-instance v2, Lcom/gemini/play/LruBitmapCache;

    invoke-direct {v2}, Lcom/gemini/play/LruBitmapCache;-><init>()V

    iput-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->bitmapCache:Lcom/gemini/play/LruBitmapCache;

    .line 205
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->listtypeFocus()V

    .line 207
    sput-boolean v5, Lcom/gemini/play/VodPlayerList2Activity;->list_type_getfocus:Z

    .line 209
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v3, "collect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    iput v5, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectlist:I

    .line 211
    sget-object v2, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 212
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;I)V

    .line 231
    :goto_1
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 232
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/gemini/play/VodPlayerList2Activity;->get_top_title(II)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    invoke-virtual {v2, v1}, Lcom/gemini/play/MyVodTop3View;->set_vod_top_center_text(Ljava/lang/String;)V

    .line 241
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 192
    :cond_2
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v3, "find"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTypeView3;->set_init(I)V

    goto :goto_0

    .line 194
    :cond_3
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v3, "hot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTypeView3;->set_init(I)V

    goto :goto_0

    .line 196
    :cond_4
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v3, "collect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->listtypeview:Lcom/gemini/play/MyVodTypeView3;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTypeView3;->set_init(I)V

    goto :goto_0

    .line 214
    :cond_5
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v3, "find"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 216
    iput v4, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectlist:I

    .line 217
    invoke-static {}, Lcom/gemini/play/VODplayer;->listClear()V

    .line 218
    sput v4, Lcom/gemini/play/VODplayer;->page:I

    .line 219
    sget-object v2, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 220
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;I)V

    goto :goto_1

    .line 223
    :cond_6
    const-string v2, "&itype=001&iyear=0&iarea=0"

    sput-object v2, Lcom/gemini/play/VODplayer;->url_param:Ljava/lang/String;

    .line 224
    iput v4, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectlist:I

    .line 225
    invoke-static {}, Lcom/gemini/play/VODplayer;->listClear()V

    .line 226
    sput v4, Lcom/gemini/play/VODplayer;->page:I

    .line 227
    sget-object v2, Lcom/gemini/play/VODplayer;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 228
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/gemini/play/VodPlayerList2Activity;->cmdMessageAddList(Ljava/lang/String;I)V

    goto :goto_1

    .line 234
    :cond_7
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v3, "find"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 235
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    const v3, 0x7f0b00e6

    invoke-virtual {p0, v3}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTop3View;->set_vod_top_center_text(Ljava/lang/String;)V

    goto :goto_2

    .line 236
    :cond_8
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v3, "hot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 237
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    const v3, 0x7f0b00e7

    invoke-virtual {p0, v3}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTop3View;->set_vod_top_center_text(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    :cond_9
    sget-object v2, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    const-string v3, "collect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    const v3, 0x7f0b00e8

    invoke-virtual {p0, v3}, Lcom/gemini/play/VodPlayerList2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyVodTop3View;->set_vod_top_center_text(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 816
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

    .line 822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->findview:Lcom/gemini/play/MyVodFindView;

    sget-object v1, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodFindView;->showFindView(Ljava/lang/String;)V

    .line 831
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 824
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 828
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
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 773
    sparse-switch p1, :sswitch_data_0

    .line 803
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 785
    :sswitch_1
    invoke-direct {p0}, Lcom/gemini/play/VodPlayerList2Activity;->hideAllView()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->isexit:Z

    .line 789
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->finish()V

    goto :goto_0

    .line 795
    :sswitch_2
    iget-boolean v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->enable_focus:Z

    if-ne v1, v0, :cond_0

    .line 796
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 797
    invoke-virtual {p0}, Lcom/gemini/play/VodPlayerList2Activity;->listFocus()V

    goto :goto_1

    .line 773
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
    .line 839
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->onControlVideo:Lcom/gemini/play/ControlVideoInterface;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->video_every_interface(Lcom/gemini/play/ControlVideoInterface;)V

    .line 599
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 600
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 852
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 603
    const-string v0, "vod onstart"

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 604
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 605
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 582
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gemini/play/VodPlayerList2Activity$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/gemini/play/VodPlayerList2Activity$8;-><init>(Lcom/gemini/play/VodPlayerList2Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 594
    return-void
.end method

.method public set_collect()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public set_list()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 524
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

    iput-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->adapter:Lcom/gemini/play/MySimpleAdapterVodView;

    .line 528
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity;->adapter:Lcom/gemini/play/MySimpleAdapterVodView;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 530
    iget-object v0, p0, Lcom/gemini/play/VodPlayerList2Activity;->adapter:Lcom/gemini/play/MySimpleAdapterVodView;

    new-instance v1, Lcom/gemini/play/VodPlayerList2Activity$7;

    invoke-direct {v1, p0}, Lcom/gemini/play/VodPlayerList2Activity$7;-><init>(Lcom/gemini/play/VodPlayerList2Activity;)V

    invoke-virtual {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 546
    return-void

    .line 524
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
    .line 469
    sget-object v3, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/gemini/play/MGplayer;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    iget v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectlist:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 471
    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->collectvoddber:Lcom/gemini/play/CollectVodDB;

    invoke-virtual {v3}, Lcom/gemini/play/CollectVodDB;->parseSize()I

    move-result v1

    .line 472
    .local v1, "size":I
    iget v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->lineNum:I

    iget v4, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

    mul-int/2addr v3, v4

    div-int v0, v1, v3

    .line 473
    .local v0, "pages":I
    iget v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->lineNum:I

    iget v4, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

    mul-int/2addr v3, v4

    rem-int v3, v1, v3

    if-lez v3, :cond_0

    .line 474
    add-int/lit8 v0, v0, 0x1

    .line 475
    :cond_0
    if-nez v0, :cond_1

    .line 476
    const/4 v0, 0x1

    .line 477
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v4}, Lcom/gemini/play/MyGridView;->getFirstVisiblePosition()I

    move-result v4

    iget v5, p0, Lcom/gemini/play/VodPlayerList2Activity;->lineNum:I

    iget v6, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

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

    .line 478
    .local v2, "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    invoke-virtual {v3, v2}, Lcom/gemini/play/MyVodTop3View;->set_vod_top_text(Ljava/lang/String;)V

    .line 489
    .end local v0    # "pages":I
    .end local v1    # "size":I
    .end local v2    # "t":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 480
    :cond_3
    sget-object v3, Lcom/gemini/play/VODplayer;->vod_number:[I

    sget-object v4, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lcom/gemini/play/VodPlayerList2Activity;->lineNum:I

    iget v5, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

    mul-int/2addr v4, v5

    div-int v0, v3, v4

    .line 481
    .restart local v0    # "pages":I
    sget-object v3, Lcom/gemini/play/VODplayer;->vod_number:[I

    sget-object v4, Lcom/gemini/play/VODplayer;->type:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lcom/gemini/play/VodPlayerList2Activity;->lineNum:I

    iget v5, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

    mul-int/2addr v4, v5

    rem-int/2addr v3, v4

    if-lez v3, :cond_4

    .line 482
    add-int/lit8 v0, v0, 0x1

    .line 483
    :cond_4
    if-nez v0, :cond_5

    .line 484
    const/4 v0, 0x1

    .line 485
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gemini/play/VodPlayerList2Activity;->mVodGrid:Lcom/gemini/play/MyGridView;

    invoke-virtual {v4}, Lcom/gemini/play/MyGridView;->getFirstVisiblePosition()I

    move-result v4

    iget v5, p0, Lcom/gemini/play/VodPlayerList2Activity;->lineNum:I

    iget v6, p0, Lcom/gemini/play/VodPlayerList2Activity;->colnumNum:I

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

    .line 486
    .restart local v2    # "t":Ljava/lang/String;
    iget-object v3, p0, Lcom/gemini/play/VodPlayerList2Activity;->topview:Lcom/gemini/play/MyVodTop3View;

    invoke-virtual {v3, v2}, Lcom/gemini/play/MyVodTop3View;->set_vod_top_text(Ljava/lang/String;)V

    goto :goto_0
.end method
