.class public Lorg/videolan/libvlc/Dialog$QuestionDialog;
.super Lorg/videolan/libvlc/Dialog$IdDialog;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuestionDialog"
.end annotation


# static fields
.field public static final TYPE_ERROR:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_WARNING:I = 0x1


# instance fields
.field private final mAction1Text:Ljava/lang/String;

.field private final mAction2Text:Ljava/lang/String;

.field private final mCancelText:Ljava/lang/String;

.field private final mQuestionType:I


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "cancelText"    # Ljava/lang/String;
    .param p7, "action1Text"    # Ljava/lang/String;
    .param p8, "action2Text"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v4, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/videolan/libvlc/Dialog$IdDialog;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 277
    iput p5, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mQuestionType:I

    .line 278
    iput-object p6, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mCancelText:Ljava/lang/String;

    .line 279
    iput-object p7, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mAction1Text:Ljava/lang/String;

    .line 280
    iput-object p8, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mAction2Text:Ljava/lang/String;

    .line 281
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Dialog$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # I
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # Lorg/videolan/libvlc/Dialog$1;

    .prologue
    .line 264
    invoke-direct/range {p0 .. p8}, Lorg/videolan/libvlc/Dialog$QuestionDialog;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativePostAction(JI)V
.end method


# virtual methods
.method public bridge synthetic dismiss()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 264
    invoke-super {p0}, Lorg/videolan/libvlc/Dialog$IdDialog;->dismiss()V

    return-void
.end method

.method public getAction1Text()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mAction1Text:Ljava/lang/String;

    return-object v0
.end method

.method public getAction2Text()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mAction2Text:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mCancelText:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestionType()I
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 291
    iget v0, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mQuestionType:I

    return v0
.end method

.method public postAction(I)V
    .locals 4
    .param p1, "action"    # I
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 325
    iget-wide v0, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 326
    iget-wide v0, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mId:J

    invoke-direct {p0, v0, v1, p1}, Lorg/videolan/libvlc/Dialog$QuestionDialog;->nativePostAction(JI)V

    .line 327
    iput-wide v2, p0, Lorg/videolan/libvlc/Dialog$QuestionDialog;->mId:J

    .line 329
    :cond_0
    return-void
.end method
