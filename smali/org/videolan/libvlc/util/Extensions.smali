.class public Lorg/videolan/libvlc/util/Extensions;
.super Ljava/lang/Object;
.source "Extensions.java"


# static fields
.field public static final AUDIO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYLIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBTITLES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lorg/videolan/libvlc/util/Extensions;->VIDEO:Ljava/util/HashSet;

    .line 29
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lorg/videolan/libvlc/util/Extensions;->AUDIO:Ljava/util/HashSet;

    .line 30
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lorg/videolan/libvlc/util/Extensions;->SUBTITLES:Ljava/util/HashSet;

    .line 31
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lorg/videolan/libvlc/util/Extensions;->PLAYLIST:Ljava/util/HashSet;

    .line 35
    const/16 v4, 0x3a

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ".3g2"

    aput-object v4, v3, v6

    const-string v4, ".3gp"

    aput-object v4, v3, v7

    const-string v4, ".3gp2"

    aput-object v4, v3, v8

    const-string v4, ".3gpp"

    aput-object v4, v3, v9

    const-string v4, ".amv"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, ".asf"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, ".avi"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, ".divx"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, ".drc"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, ".dv"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, ".f4v"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, ".flv"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, ".gvi"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, ".gxf"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, ".ismv"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, ".iso"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, ".m1v"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, ".m2v"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, ".m2t"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, ".m2ts"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, ".m4v"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, ".mkv"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, ".mov"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, ".mp2"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, ".mp2v"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, ".mp4"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, ".mp4v"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, ".mpe"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, ".mpeg"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, ".mpeg1"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, ".mpeg2"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, ".mpeg4"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, ".mpg"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, ".mpv2"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, ".mts"

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v5, ".mtv"

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-string v5, ".mxf"

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-string v5, ".mxg"

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-string v5, ".nsv"

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, ".nut"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, ".nuv"

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-string v5, ".ogm"

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-string v5, ".ogv"

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-string v5, ".ogx"

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    const-string v5, ".ps"

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    const-string v5, ".rec"

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    const-string v5, ".rm"

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    const-string v5, ".rmvb"

    aput-object v5, v3, v4

    const/16 v4, 0x30

    const-string v5, ".tod"

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-string v5, ".ts"

    aput-object v5, v3, v4

    const/16 v4, 0x32

    const-string v5, ".tts"

    aput-object v5, v3, v4

    const/16 v4, 0x33

    const-string v5, ".vob"

    aput-object v5, v3, v4

    const/16 v4, 0x34

    const-string v5, ".vro"

    aput-object v5, v3, v4

    const/16 v4, 0x35

    const-string v5, ".webm"

    aput-object v5, v3, v4

    const/16 v4, 0x36

    const-string v5, ".wm"

    aput-object v5, v3, v4

    const/16 v4, 0x37

    const-string v5, ".wmv"

    aput-object v5, v3, v4

    const/16 v4, 0x38

    const-string v5, ".wtv"

    aput-object v5, v3, v4

    const/16 v4, 0x39

    const-string v5, ".xesc"

    aput-object v5, v3, v4

    .line 43
    .local v3, "videoExtensions":[Ljava/lang/String;
    const/16 v4, 0x30

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, ".3ga"

    aput-object v4, v0, v6

    const-string v4, ".a52"

    aput-object v4, v0, v7

    const-string v4, ".aac"

    aput-object v4, v0, v8

    const-string v4, ".ac3"

    aput-object v4, v0, v9

    const-string v4, ".adt"

    aput-object v4, v0, v10

    const/4 v4, 0x5

    const-string v5, ".adts"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, ".aif"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, ".aifc"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, ".aiff"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, ".amr"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, ".aob"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, ".ape"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, ".awb"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, ".caf"

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const-string v5, ".dts"

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const-string v5, ".flac"

    aput-object v5, v0, v4

    const/16 v4, 0x10

    const-string v5, ".it"

    aput-object v5, v0, v4

    const/16 v4, 0x11

    const-string v5, ".m4a"

    aput-object v5, v0, v4

    const/16 v4, 0x12

    const-string v5, ".m4b"

    aput-object v5, v0, v4

    const/16 v4, 0x13

    const-string v5, ".m4p"

    aput-object v5, v0, v4

    const/16 v4, 0x14

    const-string v5, ".mid"

    aput-object v5, v0, v4

    const/16 v4, 0x15

    const-string v5, ".mka"

    aput-object v5, v0, v4

    const/16 v4, 0x16

    const-string v5, ".mlp"

    aput-object v5, v0, v4

    const/16 v4, 0x17

    const-string v5, ".mod"

    aput-object v5, v0, v4

    const/16 v4, 0x18

    const-string v5, ".mpa"

    aput-object v5, v0, v4

    const/16 v4, 0x19

    const-string v5, ".mp1"

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    const-string v5, ".mp2"

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    const-string v5, ".mp3"

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    const-string v5, ".mpc"

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    const-string v5, ".mpga"

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    const-string v5, ".oga"

    aput-object v5, v0, v4

    const/16 v4, 0x1f

    const-string v5, ".ogg"

    aput-object v5, v0, v4

    const/16 v4, 0x20

    const-string v5, ".oma"

    aput-object v5, v0, v4

    const/16 v4, 0x21

    const-string v5, ".opus"

    aput-object v5, v0, v4

    const/16 v4, 0x22

    const-string v5, ".ra"

    aput-object v5, v0, v4

    const/16 v4, 0x23

    const-string v5, ".ram"

    aput-object v5, v0, v4

    const/16 v4, 0x24

    const-string v5, ".rmi"

    aput-object v5, v0, v4

    const/16 v4, 0x25

    const-string v5, ".s3m"

    aput-object v5, v0, v4

    const/16 v4, 0x26

    const-string v5, ".spx"

    aput-object v5, v0, v4

    const/16 v4, 0x27

    const-string v5, ".tta"

    aput-object v5, v0, v4

    const/16 v4, 0x28

    const-string v5, ".voc"

    aput-object v5, v0, v4

    const/16 v4, 0x29

    const-string v5, ".vqf"

    aput-object v5, v0, v4

    const/16 v4, 0x2a

    const-string v5, ".w64"

    aput-object v5, v0, v4

    const/16 v4, 0x2b

    const-string v5, ".wav"

    aput-object v5, v0, v4

    const/16 v4, 0x2c

    const-string v5, ".wma"

    aput-object v5, v0, v4

    const/16 v4, 0x2d

    const-string v5, ".wv"

    aput-object v5, v0, v4

    const/16 v4, 0x2e

    const-string v5, ".xa"

    aput-object v5, v0, v4

    const/16 v4, 0x2f

    const-string v5, ".xm"

    aput-object v5, v0, v4

    .line 50
    .local v0, "audioExtensions":[Ljava/lang/String;
    const/16 v4, 0x16

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, ".idx"

    aput-object v4, v2, v6

    const-string v4, ".sub"

    aput-object v4, v2, v7

    const-string v4, ".srt"

    aput-object v4, v2, v8

    const-string v4, ".ssa"

    aput-object v4, v2, v9

    const-string v4, ".ass"

    aput-object v4, v2, v10

    const/4 v4, 0x5

    const-string v5, ".smi"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, ".utf"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, ".utf8"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, ".utf-8"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, ".rt"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, ".aqt"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, ".txt"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, ".usf"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, ".jss"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, ".cdg"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string v5, ".psb"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string v5, ".mpsub"

    aput-object v5, v2, v4

    const/16 v4, 0x11

    const-string v5, ".mpl2"

    aput-object v5, v2, v4

    const/16 v4, 0x12

    const-string v5, ".pjs"

    aput-object v5, v2, v4

    const/16 v4, 0x13

    const-string v5, ".dks"

    aput-object v5, v2, v4

    const/16 v4, 0x14

    const-string v5, ".stl"

    aput-object v5, v2, v4

    const/16 v4, 0x15

    const-string v5, ".vtt"

    aput-object v5, v2, v4

    .line 55
    .local v2, "subtitlesExtensions":[Ljava/lang/String;
    const/4 v4, 0x5

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, ".m3u"

    aput-object v4, v1, v6

    const-string v4, ".asx"

    aput-object v4, v1, v7

    const-string v4, ".b4s"

    aput-object v4, v1, v8

    const-string v4, ".pls"

    aput-object v4, v1, v9

    const-string v4, ".xspf"

    aput-object v4, v1, v10

    .line 57
    .local v1, "playlistExtensions":[Ljava/lang/String;
    sget-object v4, Lorg/videolan/libvlc/util/Extensions;->VIDEO:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 58
    sget-object v4, Lorg/videolan/libvlc/util/Extensions;->AUDIO:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 59
    sget-object v4, Lorg/videolan/libvlc/util/Extensions;->SUBTITLES:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 60
    sget-object v4, Lorg/videolan/libvlc/util/Extensions;->PLAYLIST:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
