.class Lcom/gemini/play/BackPlayerVideoActivity$11;
.super Ljava/lang/Object;
.source "BackPlayerVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayerVideoActivity;->exitActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayerVideoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayerVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayerVideoActivity;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/gemini/play/BackPlayerVideoActivity$11;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 473
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 474
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity$11;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-virtual {v0}, Lcom/gemini/play/BackPlayerVideoActivity;->stopVideo()V

    .line 475
    invoke-static {}, Lcom/gemini/play/BACKplayer;->stopCheckVideo()V

    .line 476
    iget-object v0, p0, Lcom/gemini/play/BackPlayerVideoActivity$11;->this$0:Lcom/gemini/play/BackPlayerVideoActivity;

    invoke-virtual {v0}, Lcom/gemini/play/BackPlayerVideoActivity;->finish()V

    .line 477
    return-void
.end method
