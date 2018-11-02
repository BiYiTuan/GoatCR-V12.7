.class Lcom/gemini/goat/ValidateActivity$6;
.super Ljava/lang/Object;
.source "ValidateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/ValidateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/goat/ValidateActivity;


# direct methods
.method constructor <init>(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$6;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 465
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 466
    iget-object v0, p0, Lcom/gemini/goat/ValidateActivity$6;->this$0:Lcom/gemini/goat/ValidateActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gemini/goat/ValidateActivity;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method
