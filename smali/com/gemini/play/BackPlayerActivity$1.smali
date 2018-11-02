.class Lcom/gemini/play/BackPlayerActivity$1;
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
    .line 57
    iput-object p1, p0, Lcom/gemini/play/BackPlayerActivity$1;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gemini/play/BackPlayerActivity$1;->this$0:Lcom/gemini/play/BackPlayerActivity;

    invoke-static {v0}, Lcom/gemini/play/BackPlayerActivity;->access$000(Lcom/gemini/play/BackPlayerActivity;)Lcom/gemini/play/MyBackTypeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyBackTypeView;->showTypeList()V

    .line 61
    return-void
.end method
