.class public Lorg/videolan/libvlc/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;,
        Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private mCurrentMedia:Lorg/videolan/libvlc/Media;

.field private final mLibVLC:Lorg/videolan/libvlc/LibVLC;

.field private mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    .line 75
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    .line 76
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 77
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/videolan/libvlc/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/videolan/libvlc/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/videolan/libvlc/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Lorg/videolan/libvlc/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Lorg/videolan/libvlc/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p4, "audioSessionId"    # I

    .prologue
    .line 89
    new-instance v0, Lorg/videolan/libvlc/media/MediaPlayer;

    invoke-direct {v0}, Lorg/videolan/libvlc/media/MediaPlayer;-><init>()V

    .line 91
    .local v0, "player":Lorg/videolan/libvlc/media/MediaPlayer;
    return-object v0
.end method


# virtual methods
.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, v1, p2, v1}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    .line 287
    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 295
    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 291
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, v1, p1, v1}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILjava/lang/String;Z)Z

    .line 283
    return-void
.end method

.method public attachAuxEffect(I)V
    .locals 0
    .param p1, "effectId"    # I

    .prologue
    .line 230
    return-void
.end method

.method public deselectTrack(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 305
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackInfo()[Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v1, 0x1

    new-array v0, v1, [Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;

    .line 276
    .local v0, "trackInfo":[Lorg/videolan/libvlc/media/MediaPlayer$TrackInfo;
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, -0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, -0x1

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 162
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    const-string v1, ":video-paused"

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 139
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 200
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 183
    return-void
.end method

.method public selectTrack(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 302
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .prologue
    .line 206
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 0
    .param p1, "level"    # F

    .prologue
    .line 233
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 111
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    .line 112
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 113
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    .line 124
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 125
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lorg/videolan/libvlc/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 131
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    .line 118
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mCurrentMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 119
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 143
    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "looping"    # Z

    .prologue
    .line 212
    return-void
.end method

.method public setNextMediaPlayer(Lorg/videolan/libvlc/media/MediaPlayer;)V
    .locals 0
    .param p1, "next"    # Lorg/videolan/libvlc/media/MediaPlayer;

    .prologue
    .line 196
    return-void
.end method

.method public setOnBufferingUpdateListener(Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 332
    return-void
.end method

.method public setOnCompletionListener(Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 324
    return-void
.end method

.method public setOnErrorListener(Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 364
    return-void
.end method

.method public setOnInfoListener(Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 372
    return-void
.end method

.method public setOnPreparedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 316
    return-void
.end method

.method public setOnSeekCompleteListener(Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 340
    return-void
.end method

.method public setOnTimedTextListener(Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnTimedTextListener;

    .prologue
    .line 356
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 348
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 168
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/videolan/libvlc/IVLCVout;->setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 147
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 150
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 219
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setVolume(I)I

    .line 220
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 165
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 154
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/videolan/libvlc/media/MediaPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 158
    return-void
.end method
