.class Lcom/gemini/play/LauncherActivity$3;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/gemini/play/LauncherInterface;


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
    .line 146
    iput-object p1, p0, Lcom/gemini/play/LauncherActivity$3;->this$0:Lcom/gemini/play/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/gemini/play/LauncherActivity$3;->this$0:Lcom/gemini/play/LauncherActivity;

    const-class v1, Lcom/gemini/play/LivePlayerActivity;

    invoke-static {v0, v1}, Lcom/gemini/play/MGplayer;->openActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
