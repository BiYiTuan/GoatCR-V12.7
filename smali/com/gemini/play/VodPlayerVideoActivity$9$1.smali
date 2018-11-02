.class Lcom/gemini/play/VodPlayerVideoActivity$9$1;
.super Ljava/lang/Object;
.source "VodPlayerVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerVideoActivity$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/VodPlayerVideoActivity$9;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerVideoActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/VodPlayerVideoActivity$9;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/gemini/play/VodPlayerVideoActivity$9$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$9$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$9;

    iget-object v0, v0, Lcom/gemini/play/VodPlayerVideoActivity$9;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->access$800(Lcom/gemini/play/VodPlayerVideoActivity;)Lcom/gemini/play/PositionVodDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/PositionVodDB;->close()V

    .line 532
    iget-object v0, p0, Lcom/gemini/play/VodPlayerVideoActivity$9$1;->this$1:Lcom/gemini/play/VodPlayerVideoActivity$9;

    iget-object v0, v0, Lcom/gemini/play/VodPlayerVideoActivity$9;->this$0:Lcom/gemini/play/VodPlayerVideoActivity;

    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerVideoActivity;->finish()V

    .line 533
    return-void
.end method
