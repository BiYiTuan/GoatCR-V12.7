.class Lcom/gemini/play/VodPlayerMainActivity$8;
.super Ljava/lang/Object;
.source "VodPlayerMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$8;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x18

    .line 159
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity$8;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$000(Lcom/gemini/play/VodPlayerMainActivity;I)V

    .line 160
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity$8;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v0, v1}, Lcom/gemini/play/VodPlayerMainActivity;->EnterEvent(I)V

    .line 161
    return-void
.end method
