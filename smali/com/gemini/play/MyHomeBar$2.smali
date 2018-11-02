.class Lcom/gemini/play/MyHomeBar$2;
.super Landroid/os/Handler;
.source "MyHomeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyHomeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyHomeBar;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyHomeBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyHomeBar;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar$2;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar$2;->this$0:Lcom/gemini/play/MyHomeBar;

    iget-object v1, p0, Lcom/gemini/play/MyHomeBar$2;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v1}, Lcom/gemini/play/MyHomeBar;->access$000(Lcom/gemini/play/MyHomeBar;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyHomeBar;->selectIndex(II)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar$2;->this$0:Lcom/gemini/play/MyHomeBar;

    iget-object v1, p0, Lcom/gemini/play/MyHomeBar$2;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v1}, Lcom/gemini/play/MyHomeBar;->access$000(Lcom/gemini/play/MyHomeBar;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/gemini/play/MyHomeBar;->selectIndex(II)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
