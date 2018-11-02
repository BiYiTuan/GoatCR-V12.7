.class Lcom/gemini/play/BackPlayerActivity$2;
.super Ljava/lang/Object;
.source "BackPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/BackPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/BackPlayerActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/BackPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/BackPlayerActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/gemini/play/BackPlayerActivity$2;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity$2;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-virtual {v0}, Lcom/gemini/play/BackPlayerActivity;->exitActivity()V

    .line 114
    return-void
.end method
