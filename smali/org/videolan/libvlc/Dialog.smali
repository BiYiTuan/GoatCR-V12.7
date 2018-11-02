.class public abstract Lorg/videolan/libvlc/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/Dialog$ProgressDialog;,
        Lorg/videolan/libvlc/Dialog$QuestionDialog;,
        Lorg/videolan/libvlc/Dialog$LoginDialog;,
        Lorg/videolan/libvlc/Dialog$IdDialog;,
        Lorg/videolan/libvlc/Dialog$ErrorMessage;,
        Lorg/videolan/libvlc/Dialog$Callbacks;
    }
.end annotation


# static fields
.field public static final TYPE_ERROR:I = 0x0

.field public static final TYPE_LOGIN:I = 0x1

.field public static final TYPE_PROGRESS:I = 0x3

.field public static final TYPE_QUESTION:I = 0x2

.field private static sCallbacks:Lorg/videolan/libvlc/Dialog$Callbacks;

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Ljava/lang/Object;

.field protected mText:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field protected final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    sput-object v0, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    .line 105
    sput-object v0, Lorg/videolan/libvlc/Dialog;->sCallbacks:Lorg/videolan/libvlc/Dialog$Callbacks;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lorg/videolan/libvlc/Dialog;->mType:I

    .line 109
    iput-object p2, p0, Lorg/videolan/libvlc/Dialog;->mTitle:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lorg/videolan/libvlc/Dialog;->mText:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$100()Lorg/videolan/libvlc/Dialog$Callbacks;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/videolan/libvlc/Dialog;->sCallbacks:Lorg/videolan/libvlc/Dialog$Callbacks;

    return-object v0
.end method

.method private static cancelFromNative(Lorg/videolan/libvlc/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Lorg/videolan/libvlc/Dialog;

    .prologue
    .line 451
    sget-object v0, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/libvlc/Dialog$5;

    invoke-direct {v1, p0}, Lorg/videolan/libvlc/Dialog$5;-><init>(Lorg/videolan/libvlc/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    return-void
.end method

.method private static displayErrorFromNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v0, Lorg/videolan/libvlc/Dialog$ErrorMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/videolan/libvlc/Dialog$ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Dialog$1;)V

    .line 394
    .local v0, "dialog":Lorg/videolan/libvlc/Dialog$ErrorMessage;
    sget-object v1, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v2, Lorg/videolan/libvlc/Dialog$1;

    invoke-direct {v2, v0}, Lorg/videolan/libvlc/Dialog$1;-><init>(Lorg/videolan/libvlc/Dialog$ErrorMessage;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method

.method private static displayLoginFromNative(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/videolan/libvlc/Dialog;
    .locals 10
    .param p0, "id"    # J
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "defaultUsername"    # Ljava/lang/String;
    .param p5, "askStore"    # Z

    .prologue
    .line 407
    new-instance v1, Lorg/videolan/libvlc/Dialog$LoginDialog;

    const/4 v8, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lorg/videolan/libvlc/Dialog$LoginDialog;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/videolan/libvlc/Dialog$1;)V

    .line 408
    .local v1, "dialog":Lorg/videolan/libvlc/Dialog$LoginDialog;
    sget-object v0, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v2, Lorg/videolan/libvlc/Dialog$2;

    invoke-direct {v2, v1}, Lorg/videolan/libvlc/Dialog$2;-><init>(Lorg/videolan/libvlc/Dialog$LoginDialog;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    return-object v1
.end method

.method private static displayProgressFromNative(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;)Lorg/videolan/libvlc/Dialog;
    .locals 10
    .param p0, "id"    # J
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "indeterminate"    # Z
    .param p5, "position"    # F
    .param p6, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 438
    new-instance v1, Lorg/videolan/libvlc/Dialog$ProgressDialog;

    const/4 v9, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lorg/videolan/libvlc/Dialog$ProgressDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ZFLjava/lang/String;Lorg/videolan/libvlc/Dialog$1;)V

    .line 439
    .local v1, "dialog":Lorg/videolan/libvlc/Dialog$ProgressDialog;
    sget-object v0, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v2, Lorg/videolan/libvlc/Dialog$4;

    invoke-direct {v2, v1}, Lorg/videolan/libvlc/Dialog$4;-><init>(Lorg/videolan/libvlc/Dialog$ProgressDialog;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    return-object v1
.end method

.method private static displayQuestionFromNative(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/videolan/libvlc/Dialog;
    .locals 12
    .param p0, "id"    # J
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "cancelText"    # Ljava/lang/String;
    .param p6, "action1Text"    # Ljava/lang/String;
    .param p7, "action2Text"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v1, Lorg/videolan/libvlc/Dialog$QuestionDialog;

    const/4 v10, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lorg/videolan/libvlc/Dialog$QuestionDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Dialog$1;)V

    .line 424
    .local v1, "dialog":Lorg/videolan/libvlc/Dialog$QuestionDialog;
    sget-object v0, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v2, Lorg/videolan/libvlc/Dialog$3;

    invoke-direct {v2, v1}, Lorg/videolan/libvlc/Dialog$3;-><init>(Lorg/videolan/libvlc/Dialog$QuestionDialog;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 431
    return-object v1
.end method

.method private static native nativeSetCallbacks(Lorg/videolan/libvlc/LibVLC;Z)V
.end method

.method public static setCallbacks(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/Dialog$Callbacks;)V
    .locals 2
    .param p0, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p1, "callbacks"    # Lorg/videolan/libvlc/Dialog$Callbacks;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 172
    if-eqz p1, :cond_0

    sget-object v0, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    .line 174
    :cond_0
    sput-object p1, Lorg/videolan/libvlc/Dialog;->sCallbacks:Lorg/videolan/libvlc/Dialog$Callbacks;

    .line 175
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lorg/videolan/libvlc/Dialog;->nativeSetCallbacks(Lorg/videolan/libvlc/LibVLC;Z)V

    .line 176
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static updateProgressFromNative(Lorg/videolan/libvlc/Dialog;FLjava/lang/String;)V
    .locals 2
    .param p0, "dialog"    # Lorg/videolan/libvlc/Dialog;
    .param p1, "position"    # F
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 465
    sget-object v0, Lorg/videolan/libvlc/Dialog;->sHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/libvlc/Dialog$6;

    invoke-direct {v1, p0, p1, p2}, Lorg/videolan/libvlc/Dialog$6;-><init>(Lorg/videolan/libvlc/Dialog;FLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog;->mContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 122
    iget v0, p0, Lorg/videolan/libvlc/Dialog;->mType:I

    return v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lorg/videolan/libvlc/Dialog;->mContext:Ljava/lang/Object;

    .line 147
    return-void
.end method
