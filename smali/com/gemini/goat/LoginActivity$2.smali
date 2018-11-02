.class Lcom/gemini/goat/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/goat/LoginActivity;


# direct methods
.method constructor <init>(Lcom/gemini/goat/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/goat/LoginActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/gemini/goat/LoginActivity$2;->this$0:Lcom/gemini/goat/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gemini/goat/LoginActivity$2;->this$0:Lcom/gemini/goat/LoginActivity;

    invoke-static {v0}, Lcom/gemini/goat/LoginActivity;->access$000(Lcom/gemini/goat/LoginActivity;)V

    .line 65
    iget-object v0, p0, Lcom/gemini/goat/LoginActivity$2;->this$0:Lcom/gemini/goat/LoginActivity;

    invoke-virtual {v0}, Lcom/gemini/goat/LoginActivity;->finish()V

    .line 66
    return-void
.end method
