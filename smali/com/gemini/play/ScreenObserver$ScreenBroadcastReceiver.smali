.class Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/ScreenObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lcom/gemini/play/ScreenObserver;


# direct methods
.method private constructor <init>(Lcom/gemini/play/ScreenObserver;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/gemini/play/ScreenObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gemini/play/ScreenObserver;Lcom/gemini/play/ScreenObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/gemini/play/ScreenObserver;
    .param p2, "x1"    # Lcom/gemini/play/ScreenObserver$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;-><init>(Lcom/gemini/play/ScreenObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    .line 71
    const-string v0, "android.intent.action.SCREEN_ON"

    iget-object v1, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/gemini/play/ScreenObserver;

    invoke-static {v0}, Lcom/gemini/play/ScreenObserver;->access$100(Lcom/gemini/play/ScreenObserver;)Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gemini/play/ScreenObserver$ScreenStateListener;->onScreenOn()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    iget-object v1, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/gemini/play/ScreenObserver;

    invoke-static {v0}, Lcom/gemini/play/ScreenObserver;->access$100(Lcom/gemini/play/ScreenObserver;)Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gemini/play/ScreenObserver$ScreenStateListener;->onScreenOff()V

    goto :goto_0

    .line 75
    :cond_2
    const-string v0, "android.intent.action.USER_PRESENT"

    iget-object v1, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/gemini/play/ScreenObserver;

    invoke-static {v0}, Lcom/gemini/play/ScreenObserver;->access$100(Lcom/gemini/play/ScreenObserver;)Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gemini/play/ScreenObserver$ScreenStateListener;->onUserPresent()V

    goto :goto_0
.end method
