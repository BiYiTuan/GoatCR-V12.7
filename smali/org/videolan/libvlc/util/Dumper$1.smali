.class Lorg/videolan/libvlc/util/Dumper$1;
.super Ljava/lang/Object;
.source "Dumper.java"

# interfaces
.implements Lorg/videolan/libvlc/MediaPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/util/Dumper;-><init>(Landroid/net/Uri;Ljava/lang/String;Lorg/videolan/libvlc/util/Dumper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/util/Dumper;


# direct methods
.method constructor <init>(Lorg/videolan/libvlc/util/Dumper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/videolan/libvlc/util/Dumper;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/videolan/libvlc/util/Dumper$1;->this$0:Lorg/videolan/libvlc/util/Dumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V
    .locals 3
    .param p1, "event"    # Lorg/videolan/libvlc/MediaPlayer$Event;

    .prologue
    .line 70
    iget v0, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper$1;->this$0:Lorg/videolan/libvlc/util/Dumper;

    invoke-static {v0}, Lorg/videolan/libvlc/util/Dumper;->access$000(Lorg/videolan/libvlc/util/Dumper;)Lorg/videolan/libvlc/util/Dumper$Listener;

    move-result-object v0

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    move-result v1

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/util/Dumper$Listener;->onProgress(F)V

    goto :goto_0

    .line 76
    :sswitch_1
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper$1;->this$0:Lorg/videolan/libvlc/util/Dumper;

    invoke-static {v0}, Lorg/videolan/libvlc/util/Dumper;->access$000(Lorg/videolan/libvlc/util/Dumper;)Lorg/videolan/libvlc/util/Dumper$Listener;

    move-result-object v1

    iget v0, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    const/16 v2, 0x109

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lorg/videolan/libvlc/util/Dumper$Listener;->onFinish(Z)V

    .line 77
    iget-object v0, p0, Lorg/videolan/libvlc/util/Dumper$1;->this$0:Lorg/videolan/libvlc/util/Dumper;

    invoke-virtual {v0}, Lorg/videolan/libvlc/util/Dumper;->cancel()V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x103 -> :sswitch_0
        0x109 -> :sswitch_1
        0x10a -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onEvent(Lorg/videolan/libvlc/VLCEvent;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/util/Dumper$1;->onEvent(Lorg/videolan/libvlc/MediaPlayer$Event;)V

    return-void
.end method
