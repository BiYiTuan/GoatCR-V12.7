.class public Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/connection/ConnectInfoSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecycleSendPackageThread"
.end annotation


# instance fields
.field public sendMessages:[Ljava/lang/String;

.field public stop:Z

.field final synthetic this$0:Lcom/memo/connection/ConnectInfoSender;


# direct methods
.method public constructor <init>(Lcom/memo/connection/ConnectInfoSender;)V
    .locals 1

    iput-object p1, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->stop:Z

    return-void
.end method


# virtual methods
.method public appendMessage([Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/memo/connection/ConnectInfoSender;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->sendMessages:[Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->stop:Z

    invoke-virtual {p0}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    :goto_0
    iget-boolean v0, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->stop:Z

    if-nez v0, :cond_2

    const-class v1, Lcom/memo/connection/ConnectInfoSender;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->sendMessages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    iget-object v2, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->sendMessages:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/memo/connection/ConnectInfoSender;->send([Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->sendMessages:[Ljava/lang/String;

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v0, "\"name\":\"%s\",\"timestamp\":\"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    invoke-static {v4}, Lcom/memo/connection/ConnectInfoSender;->access$000(Lcom/memo/connection/ConnectInfoSender;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    iget-object v2, v2, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    iget-object v2, v2, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    invoke-virtual {v2, v0}, Lcom/memo/connection/ConnectInfoSender;->send(Ljava/lang/String;)Ljava/net/DatagramSocket;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    return-void
.end method
