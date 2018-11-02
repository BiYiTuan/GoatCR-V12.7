.class Lcom/gemini/goat/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 41
    iput-object p1, p0, Lcom/gemini/goat/LoginActivity$1;->this$0:Lcom/gemini/goat/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 44
    sparse-switch p2, :sswitch_data_0

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 50
    :sswitch_0
    iget-object v0, p0, Lcom/gemini/goat/LoginActivity$1;->this$0:Lcom/gemini/goat/LoginActivity;

    invoke-static {v0}, Lcom/gemini/goat/LoginActivity;->access$000(Lcom/gemini/goat/LoginActivity;)V

    .line 51
    iget-object v0, p0, Lcom/gemini/goat/LoginActivity$1;->this$0:Lcom/gemini/goat/LoginActivity;

    invoke-virtual {v0}, Lcom/gemini/goat/LoginActivity;->finish()V

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
