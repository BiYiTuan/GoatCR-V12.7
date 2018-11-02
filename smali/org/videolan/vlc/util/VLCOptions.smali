.class public Lorg/videolan/vlc/util/VLCOptions;
.super Ljava/lang/Object;
.source "VLCOptions.java"


# static fields
.field public static final AOUT_AUDIOTRACK:I = 0x0

.field public static final AOUT_OPENSLES:I = 0x1

.field public static final HW_ACCELERATION_AUTOMATIC:I = -0x1

.field public static final HW_ACCELERATION_DECODING:I = 0x0

.field public static final HW_ACCELERATION_DISABLED:I = 0x1

.field public static final HW_ACCELERATION_FULL:I = 0x2

.field public static final MEDIA_FORCE_AUDIO:I = 0x8

.field public static final MEDIA_NO_HWACCEL:I = 0x2

.field public static final MEDIA_PAUSED:I = 0x4

.field public static final MEDIA_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VLCConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAout(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x1

    .line 137
    const/4 v0, -0x1

    .line 139
    .local v0, "aout":I
    :try_start_0
    const-string v3, "aout"

    const-string v4, "-1"

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 141
    :goto_0
    invoke-static {}, Lorg/videolan/libvlc/util/HWDecoderUtil;->getAudioOutputFromDevice()Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    move-result-object v1

    .line 142
    .local v1, "hwaout":Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;
    sget-object v3, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->AUDIOTRACK:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    if-eq v1, v3, :cond_0

    sget-object v3, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    if-ne v1, v3, :cond_1

    .line 143
    :cond_0
    sget-object v3, Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;->OPENSLES:Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;

    if-ne v1, v3, :cond_2

    move v0, v2

    .line 145
    :cond_1
    :goto_1
    if-ne v0, v2, :cond_3

    const-string v2, "opensles_android"

    :goto_2
    return-object v2

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 145
    :cond_3
    const-string v2, "android_audiotrack"

    goto :goto_2

    .line 140
    .end local v1    # "hwaout":Lorg/videolan/libvlc/util/HWDecoderUtil$AudioOutput;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getDeblocking(I)I
    .locals 6
    .param p0, "deblocking"    # I

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x44960000    # 1200.0f

    .line 149
    move v1, p0

    .line 150
    .local v1, "ret":I
    if-gez p0, :cond_7

    .line 158
    invoke-static {}, Lorg/videolan/libvlc/util/VLCUtil;->getMachineSpecs()Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move-result-object v0

    .line 159
    .local v0, "m":Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    if-nez v0, :cond_0

    move v2, v1

    .line 173
    .end local v0    # "m":Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 161
    .end local v2    # "ret":I
    .restart local v0    # "m":Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    .restart local v1    # "ret":I
    :cond_0
    iget-boolean v3, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasArmV6:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasArmV7:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->hasMips:Z

    if-eqz v3, :cond_4

    .line 162
    :cond_2
    const/4 v1, 0x4

    .end local v0    # "m":Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    :cond_3
    :goto_1
    move v2, v1

    .line 173
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 163
    .end local v2    # "ret":I
    .restart local v0    # "m":Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    .restart local v1    # "ret":I
    :cond_4
    iget v3, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->frequency:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    iget v3, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->processors:I

    if-le v3, v5, :cond_5

    .line 164
    const/4 v1, 0x1

    goto :goto_1

    .line 165
    :cond_5
    iget v3, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->bogoMIPS:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    iget v3, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->processors:I

    if-le v3, v5, :cond_6

    .line 166
    const/4 v1, 0x1

    .line 167
    const-string v3, "VLCConfig"

    const-string v4, "Used bogoMIPS due to lack of frequency info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    :cond_6
    const/4 v1, 0x3

    goto :goto_1

    .line 170
    .end local v0    # "m":Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    :cond_7
    const/4 v3, 0x4

    if-le p0, v3, :cond_3

    .line 171
    const/4 v1, 0x3

    goto :goto_1
.end method

.method public static getEqualizer(Landroid/content/Context;)Lorg/videolan/libvlc/MediaPlayer$Equalizer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 214
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v5, "equalizer_enabled"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    const-string v5, "equalizer_values"

    invoke-static {v4, v5}, Lorg/videolan/vlc/util/Preferences;->getFloatArray(Landroid/content/SharedPreferences;Ljava/lang/String;)[F

    move-result-object v1

    .line 216
    .local v1, "bands":[F
    invoke-static {}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->getBandCount()I

    move-result v0

    .line 217
    .local v0, "bandCount":I
    array-length v5, v1

    add-int/lit8 v6, v0, 0x1

    if-eq v5, v6, :cond_1

    .line 226
    .end local v0    # "bandCount":I
    .end local v1    # "bands":[F
    :cond_0
    return-object v2

    .line 220
    .restart local v0    # "bandCount":I
    .restart local v1    # "bands":[F
    :cond_1
    invoke-static {}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->create()Lorg/videolan/libvlc/MediaPlayer$Equalizer;

    move-result-object v2

    .line 221
    .local v2, "eq":Lorg/videolan/libvlc/MediaPlayer$Equalizer;
    aget v5, v1, v7

    invoke-virtual {v2, v5}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->setPreAmp(F)Z

    .line 222
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 223
    add-int/lit8 v5, v3, 0x1

    aget v5, v1, v5

    invoke-virtual {v2, v3, v5}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->setAmp(IF)Z

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getEqualizerPreset(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 231
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "equalizer_preset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLibOptions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 57
    .local v6, "pref":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/util/ArrayList;

    const/16 v13, 0x32

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v5, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x13

    if-lt v13, v14, :cond_4

    move v9, v11

    .line 62
    .local v9, "timeStrechingDefault":Z
    :goto_0
    const-string v13, "enable_time_stretching_audio"

    invoke-interface {v6, v13, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 63
    .local v8, "timeStreching":Z
    const-string v13, "subtitle_text_encoding"

    const-string v14, ""

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "subtitlesEncoding":Ljava/lang/String;
    const-string v13, "enable_frame_skip"

    invoke-interface {v6, v13, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 70
    .local v2, "frameSkip":Z
    const-string v13, "chroma_format"

    const-string v14, "RV16"

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "chroma":Ljava/lang/String;
    const-string v13, "YV12"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 72
    const-string v0, ""

    .line 73
    :cond_0
    const-string v13, "enable_verbose_mode"

    invoke-interface {v6, v13, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 75
    .local v10, "verboseMode":Z
    const/4 v1, -0x1

    .line 77
    .local v1, "deblocking":I
    :try_start_0
    const-string v13, "deblocking"

    const-string v14, "-1"

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lorg/videolan/vlc/util/VLCOptions;->getDeblocking(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 80
    :goto_1
    const-string v13, "network_caching_value"

    invoke-interface {v6, v13, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 81
    .local v3, "networkCaching":I
    const/16 v12, 0x3e8

    if-le v3, v12, :cond_5

    .line 82
    const/16 v3, 0x3e8

    .line 89
    :cond_1
    :goto_2
    const-string v12, "opengl"

    const-string v13, "-1"

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 92
    .local v4, "opengl":I
    if-eqz v8, :cond_6

    const-string v12, "--audio-time-stretch"

    :goto_3
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v12, "--avcodec-skiploopfilter"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v12, "--avcodec-skip-frame"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    if-eqz v2, :cond_7

    const-string v12, "2"

    :goto_4
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v12, "--avcodec-skip-idct"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    if-eqz v2, :cond_8

    const-string v12, "2"

    :goto_5
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v12, "--no-stats"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    if-lez v3, :cond_2

    .line 104
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--network-caching="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    const-string v12, "--audio-resampler"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {}, Lorg/videolan/vlc/util/VLCOptions;->getResampler()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    if-ne v4, v11, :cond_9

    .line 118
    const-string v11, "--vout=gles2,none"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    :goto_6
    if-eqz v10, :cond_a

    const-string v11, "-vv"

    :goto_7
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-object v5

    .end local v0    # "chroma":Ljava/lang/String;
    .end local v1    # "deblocking":I
    .end local v2    # "frameSkip":Z
    .end local v3    # "networkCaching":I
    .end local v4    # "opengl":I
    .end local v7    # "subtitlesEncoding":Ljava/lang/String;
    .end local v8    # "timeStreching":Z
    .end local v9    # "timeStrechingDefault":Z
    .end local v10    # "verboseMode":Z
    :cond_4
    move v9, v12

    .line 60
    goto/16 :goto_0

    .line 83
    .restart local v0    # "chroma":Ljava/lang/String;
    .restart local v1    # "deblocking":I
    .restart local v2    # "frameSkip":Z
    .restart local v3    # "networkCaching":I
    .restart local v7    # "subtitlesEncoding":Ljava/lang/String;
    .restart local v8    # "timeStreching":Z
    .restart local v9    # "timeStrechingDefault":Z
    .restart local v10    # "verboseMode":Z
    :cond_5
    if-gez v3, :cond_1

    .line 84
    const/16 v3, 0x3e8

    goto/16 :goto_2

    .line 92
    .restart local v4    # "opengl":I
    :cond_6
    const-string v12, "--no-audio-time-stretch"

    goto :goto_3

    .line 96
    :cond_7
    const-string v12, "0"

    goto :goto_4

    .line 98
    :cond_8
    const-string v12, "0"

    goto :goto_5

    .line 119
    :cond_9
    if-nez v4, :cond_3

    .line 120
    const-string v11, "--vout=android_display,none"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 131
    :cond_a
    const-string v11, "-v"

    goto :goto_7

    .line 78
    .end local v3    # "networkCaching":I
    .end local v4    # "opengl":I
    :catch_0
    move-exception v13

    goto/16 :goto_1
.end method

.method private static getResampler()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lorg/videolan/libvlc/util/VLCUtil;->getMachineSpecs()Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;

    move-result-object v0

    .line 178
    .local v0, "m":Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/videolan/libvlc/util/VLCUtil$MachineSpecs;->processors:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    :cond_0
    const-string v1, "soxr"

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "ugly"

    goto :goto_0
.end method

.method public static setEqualizer(Landroid/content/Context;Lorg/videolan/libvlc/MediaPlayer$Equalizer;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eq"    # Lorg/videolan/libvlc/MediaPlayer$Equalizer;
    .param p2, "preset"    # I

    .prologue
    const/4 v7, 0x0

    .line 235
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 236
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 237
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 238
    const-string v5, "equalizer_enabled"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-static {}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->getBandCount()I

    move-result v0

    .line 240
    .local v0, "bandCount":I
    add-int/lit8 v5, v0, 0x1

    new-array v1, v5, [F

    .line 241
    .local v1, "bands":[F
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->getPreAmp()F

    move-result v5

    aput v5, v1, v7

    .line 242
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 243
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v3}, Lorg/videolan/libvlc/MediaPlayer$Equalizer;->getAmp(I)F

    move-result v6

    aput v6, v1, v5

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const-string v5, "equalizer_values"

    invoke-static {v2, v5, v1}, Lorg/videolan/vlc/util/Preferences;->putFloatArray(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;[F)V

    .line 246
    const-string v5, "equalizer_preset"

    invoke-interface {v2, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    .end local v0    # "bandCount":I
    .end local v1    # "bands":[F
    .end local v3    # "i":I
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    return-void

    .line 248
    :cond_1
    const-string v5, "equalizer_enabled"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setMediaOptions(Lorg/videolan/libvlc/Media;Landroid/content/Context;I)V
    .locals 9
    .param p0, "media"    # Lorg/videolan/libvlc/Media;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 185
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_3

    move v1, v5

    .line 186
    .local v1, "noHardwareAcceleration":Z
    :goto_0
    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_4

    move v2, v5

    .line 187
    .local v2, "noVideo":Z
    :goto_1
    and-int/lit8 v7, p2, 0x4

    if-eqz v7, :cond_5

    move v3, v5

    .line 188
    .local v3, "paused":Z
    :goto_2
    const/4 v0, 0x1

    .line 190
    .local v0, "hardwareAcceleration":I
    if-nez v1, :cond_0

    .line 192
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 193
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v7, "hardware_acceleration"

    const-string v8, "-1"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 197
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_3
    if-ne v0, v5, :cond_6

    .line 198
    invoke-virtual {p0, v6, v6}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 207
    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    .line 208
    const-string v5, ":start-paused"

    invoke-virtual {p0, v5}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 209
    :cond_2
    return-void

    .end local v0    # "hardwareAcceleration":I
    .end local v1    # "noHardwareAcceleration":Z
    .end local v2    # "noVideo":Z
    .end local v3    # "paused":Z
    :cond_3
    move v1, v6

    .line 185
    goto :goto_0

    .restart local v1    # "noHardwareAcceleration":Z
    :cond_4
    move v2, v6

    .line 186
    goto :goto_1

    .restart local v2    # "noVideo":Z
    :cond_5
    move v3, v6

    .line 187
    goto :goto_2

    .line 199
    .restart local v0    # "hardwareAcceleration":I
    .restart local v3    # "paused":Z
    :cond_6
    const/4 v6, 0x2

    if-eq v0, v6, :cond_7

    if-nez v0, :cond_1

    .line 200
    :cond_7
    invoke-virtual {p0, v5, v5}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 201
    if-nez v0, :cond_1

    .line 202
    const-string v5, ":no-mediacodec-dr"

    invoke-virtual {p0, v5}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    .line 203
    const-string v5, ":no-omxil-dr"

    invoke-virtual {p0, v5}, Lorg/videolan/libvlc/Media;->addOption(Ljava/lang/String;)V

    goto :goto_4

    .line 194
    :catch_0
    move-exception v7

    goto :goto_3
.end method
