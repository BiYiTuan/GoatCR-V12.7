.class Lcom/gemini/play/LivePlayerActivity$8;
.super Ljava/lang/Object;
.source "LivePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/LivePlayerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LivePlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LivePlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LivePlayerActivity;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/gemini/play/LivePlayerActivity$8;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/gemini/play/LivePlayerActivity$8;->this$0:Lcom/gemini/play/LivePlayerActivity;

    invoke-virtual {v0}, Lcom/gemini/play/LivePlayerActivity;->exitActivity()V

    .line 471
    return-void
.end method
