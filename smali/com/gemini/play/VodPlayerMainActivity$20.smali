.class Lcom/gemini/play/VodPlayerMainActivity$20;
.super Ljava/lang/Object;
.source "VodPlayerMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerMainActivity;->exitActivity()V
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
    .line 725
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$20;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 727
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 728
    iget-object v0, p0, Lcom/gemini/play/VodPlayerMainActivity$20;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v0}, Lcom/gemini/play/VodPlayerMainActivity;->finish()V

    .line 729
    return-void
.end method
