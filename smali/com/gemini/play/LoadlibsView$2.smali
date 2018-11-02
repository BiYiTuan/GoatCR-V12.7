.class final Lcom/gemini/play/LoadlibsView$2;
.super Ljava/lang/Thread;
.source "LoadlibsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LoadlibsView;->showDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$md5:Ljava/lang/String;

.field final synthetic val$osfile:Ljava/lang/String;

.field final synthetic val$strUrl:Ljava/lang/String;

.field final synthetic val$t:Landroid/app/Activity;

.field final synthetic val$version:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/gemini/play/LoadlibsView$2;->val$t:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gemini/play/LoadlibsView$2;->val$strUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/LoadlibsView$2;->val$osfile:Ljava/lang/String;

    iput-object p4, p0, Lcom/gemini/play/LoadlibsView$2;->val$md5:Ljava/lang/String;

    iput p5, p0, Lcom/gemini/play/LoadlibsView$2;->val$version:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/gemini/play/LoadlibsView$2;->val$t:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gemini/play/LoadlibsView$2;->val$strUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/gemini/play/LoadlibsView$2;->val$osfile:Ljava/lang/String;

    iget-object v4, p0, Lcom/gemini/play/LoadlibsView$2;->val$md5:Ljava/lang/String;

    iget v5, p0, Lcom/gemini/play/LoadlibsView$2;->val$version:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/gemini/play/LoadlibsView;->access$100(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
