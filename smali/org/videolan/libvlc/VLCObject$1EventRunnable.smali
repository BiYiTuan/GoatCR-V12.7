.class Lorg/videolan/libvlc/VLCObject$1EventRunnable;
.super Ljava/lang/Object;
.source "VLCObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/VLCObject;->dispatchEventFromNative(IJF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventRunnable"
.end annotation


# instance fields
.field private final event:Lorg/videolan/libvlc/VLCEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final listener:Lorg/videolan/libvlc/VLCEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/videolan/libvlc/VLCEvent$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/videolan/libvlc/VLCObject;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/VLCObject;Lorg/videolan/libvlc/VLCEvent$Listener;Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/libvlc/VLCObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/videolan/libvlc/VLCEvent$Listener",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/videolan/libvlc/VLCObject$1EventRunnable;, "Lorg/videolan/libvlc/VLCObject$1EventRunnable;"
    .local p2, "listener":Lorg/videolan/libvlc/VLCEvent$Listener;, "Lorg/videolan/libvlc/VLCEvent$Listener<TT;>;"
    .local p3, "event":Lorg/videolan/libvlc/VLCEvent;, "TT;"
    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->this$0:Lorg/videolan/libvlc/VLCObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->listener:Lorg/videolan/libvlc/VLCEvent$Listener;

    .line 126
    iput-object p3, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->event:Lorg/videolan/libvlc/VLCEvent;

    .line 127
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    .local p0, "this":Lorg/videolan/libvlc/VLCObject$1EventRunnable;, "Lorg/videolan/libvlc/VLCObject$1EventRunnable;"
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->listener:Lorg/videolan/libvlc/VLCEvent$Listener;

    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->event:Lorg/videolan/libvlc/VLCEvent;

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/VLCEvent$Listener;->onEvent(Lorg/videolan/libvlc/VLCEvent;)V

    .line 131
    return-void
.end method
