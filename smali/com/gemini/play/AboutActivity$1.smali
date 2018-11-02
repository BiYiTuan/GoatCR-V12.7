.class Lcom/gemini/play/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/AboutActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/AboutActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/gemini/play/AboutActivity$1;->this$0:Lcom/gemini/play/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/gemini/play/AboutActivity$1;->this$0:Lcom/gemini/play/AboutActivity;

    invoke-virtual {v0}, Lcom/gemini/play/AboutActivity;->finish()V

    .line 63
    return-void
.end method
