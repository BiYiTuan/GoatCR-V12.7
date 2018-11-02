.class Lcom/gemini/play/LauncherActivity$2;
.super Landroid/os/Handler;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/LauncherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/LauncherActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/gemini/play/LauncherActivity$2;->this$0:Lcom/gemini/play/LauncherActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :pswitch_0
    return-void

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
