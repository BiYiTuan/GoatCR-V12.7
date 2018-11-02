.class public interface abstract Lcom/memo/sdk/IMemoAplistener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onApConnectedTimeOut()V
.end method

.method public abstract onNetworkStateChanged(Z)V
.end method

.method public abstract scanFinish(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/memo/connection/AccessPoint;",
            ">;)V"
        }
    .end annotation
.end method
