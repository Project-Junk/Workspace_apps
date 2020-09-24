.class public Lcom/b/a;
.super Ljava/lang/Object;
.source "MeicamVideoEngine.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;


# instance fields
.field private a:J

.field private b:Z

.field private c:Landroid/app/Activity;

.field private d:Lcom/b/b;

.field private e:Lcom/meicam/sdk/NvsStreamingContext;

.field private f:Lcom/meicam/sdk/NvsTimeline;

.field private g:Lcom/meicam/sdk/NvsVideoTrack;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/b/b;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/b/a;->b:Z

    .line 47
    iput-object p1, p0, Lcom/b/a;->c:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lcom/b/a;->d:Lcom/b/b;

    .line 50
    invoke-direct {p0}, Lcom/b/a;->e()V

    return-void
.end method

.method private b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x168

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private e()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/b/a;->c:Landroid/app/Activity;

    const-string v1, "assets:/3542-139-eec0b0dcecc5d98cf43896461f46c51e.lic"

    invoke-static {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/app/Activity;Ljava/lang/String;)Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    .line 55
    iget-object v0, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    const-string v1, "MeicamVideoEngine"

    if-nez v0, :cond_0

    const-string v0, "NvsStreamingContext onCreate: init fail !!!"

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "NvsStreamingContext onCreate: init successful"

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MeicamVideoEngine"

    const-string v1, "stopMeicamVideoEngine"

    .line 189
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->stop(I)V

    return-void
.end method

.method public a(I)Z
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/b/a;->b:Z

    invoke-direct {p0, p1}, Lcom/b/a;->b(I)Z

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTimeline orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbVideoOrientationPortrait: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/b/a;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p0, p1}, Lcom/b/a;->b(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MeicamVideoEngine"

    .line 73
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/b/a;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a;->b:Z

    .line 77
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/16 v3, 0x1e

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 78
    new-instance v3, Lcom/meicam/sdk/NvsAudioResolution;

    invoke-direct {v3}, Lcom/meicam/sdk/NvsAudioResolution;-><init>()V

    const v5, 0xac44

    .line 79
    iput v5, v3, Lcom/meicam/sdk/NvsAudioResolution;->sampleRate:I

    const/4 v5, 0x2

    .line 80
    iput v5, v3, Lcom/meicam/sdk/NvsAudioResolution;->channelCount:I

    .line 82
    new-instance v5, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v5}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 83
    new-instance v6, Lcom/meicam/sdk/NvsRational;

    invoke-direct {v6, v4, v4}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v6, v5, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 85
    invoke-direct {p0, p1}, Lcom/b/a;->b(I)Z

    move-result p1

    const/16 v6, 0x2d0

    const/16 v7, 0x500

    if-eqz p1, :cond_2

    .line 86
    iput v6, v5, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 87
    iput v7, v5, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    goto :goto_0

    .line 89
    :cond_2
    iput v7, v5, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 90
    iput v6, v5, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    if-eqz p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p1, v4}, Lcom/meicam/sdk/NvsStreamingContext;->stop(I)V

    .line 95
    iget-object p1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v6, p0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p1, v6}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    .line 96
    iget-object p1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p1, v1}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    const-string p1, "orientation changed, need initTimeline again!"

    .line 99
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p1, v5, v0, v3}, Lcom/meicam/sdk/NvsStreamingContext;->createTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    .line 103
    iget-object p1, p0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    .line 104
    iget-object p1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p1, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    return v4
.end method

.method public a(Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 110
    iget-object v1, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v8, 0x0

    const-string v9, "MeicamVideoEngine"

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    if-eqz v1, :cond_9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 116
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/b/a;->a:J

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compileSlowMotion original fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1, v8}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    .line 122
    iget-object v1, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    const/16 v2, 0xf0

    invoke-virtual {v1, v7, v2}, Lcom/meicam/sdk/NvsStreamingContext;->setMediaCodecVideoDecodingOperatingRate(Ljava/lang/String;I)V

    .line 123
    iget-object v1, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1, v7}, Lcom/meicam/sdk/NvsStreamingContext;->enableGetAVFileInfoFromMediaExtractor(Ljava/lang/String;)V

    .line 124
    iget-object v1, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1, v7}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 126
    invoke-virtual {v1}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamCount()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 133
    :cond_1
    iget-object v2, v0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 136
    iget-object v2, v0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsVideoTrack;->removeAllClips()Z

    .line 139
    :cond_2
    invoke-static {}, Lcom/oppo/camera/i/a;->a()Lcom/oppo/camera/i/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/i/a;->b()V

    .line 140
    invoke-virtual {v1, v8}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamDuration(I)J

    move-result-wide v10

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compileSlowMotion, videoStreamDuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, v0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x1e84800

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v1

    const-wide/high16 v12, 0x4040000000000000L    # 32.0

    if-eqz v1, :cond_3

    .line 146
    invoke-virtual {v1, v12, v13}, Lcom/meicam/sdk/NvsVideoClip;->changeSpeed(D)V

    .line 149
    :cond_3
    iget-object v1, v0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    const-wide/32 v3, 0x1e84800

    const-wide/32 v5, 0x2625a00

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoClip;

    .line 151
    iget-object v1, v0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    const-wide/32 v3, 0x2625a00

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {v1, v12, v13}, Lcom/meicam/sdk/NvsVideoClip;->changeSpeed(D)V

    .line 158
    :cond_4
    iget-object v1, v0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 159
    iget-object v1, v0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    .line 160
    iget-object v1, v0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    const-string v1, "VID"

    const-string v2, "Slow"

    .line 162
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a;->h:Ljava/lang/String;

    .line 163
    iget-object v1, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsStreamingContext;->getStreamingEngineState()I

    move-result v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compileSlowMotion, showResult mCompilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/b/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 180
    iget-object v1, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    goto :goto_1

    .line 170
    :cond_6
    :goto_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const v2, 0x989680

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "bitrate"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v2, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileConfigurations(Ljava/util/Hashtable;)V

    .line 174
    iget-object v10, v0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v11, v0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v12, 0x0

    invoke-virtual {v11}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v14

    iget-object v1, v0, Lcom/b/a;->h:Ljava/lang/String;

    const/16 v17, 0x4

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v10 .. v19}, Lcom/meicam/sdk/NvsStreamingContext;->compileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;III)Z

    move-result v8

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compileSlowMotion, compileTimeline compileResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_7
    :goto_1
    invoke-static {}, Lcom/oppo/camera/i/a;->a()Lcom/oppo/camera/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/i/a;->c()V

    return v8

    :cond_8
    :goto_2
    const-string v1, "compileSlowMotion return for nvsAVFileInfo!"

    .line 128
    invoke-static {v9, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_9
    :goto_3
    const-string v1, "compileSlowMotion return !"

    .line 111
    invoke-static {v9, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method public b()V
    .locals 3

    const-string v0, "MeicamVideoEngine"

    const-string v1, "releaseMeicamVideoEngine start"

    .line 195
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->stop(I)V

    .line 198
    iget-object v1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    .line 199
    iget-object v1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    const/4 v1, 0x0

    .line 200
    iput-object v1, p0, Lcom/b/a;->e:Lcom/meicam/sdk/NvsStreamingContext;

    .line 202
    iput-object v1, p0, Lcom/b/a;->g:Lcom/meicam/sdk/NvsVideoTrack;

    .line 203
    iput-object v1, p0, Lcom/b/a;->f:Lcom/meicam/sdk/NvsTimeline;

    .line 204
    iput-object v1, p0, Lcom/b/a;->h:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/b/a;->d:Lcom/b/b;

    const-string v1, "releaseMeicamVideoEngine X"

    .line 207
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 237
    iget-wide v0, p0, Lcom/b/a;->a:J

    return-wide v0
.end method

.method public onCompileFailed(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lcom/b/a;->d:Lcom/b/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 231
    invoke-interface {p1, v0}, Lcom/b/b;->a(I)V

    :cond_0
    return-void
.end method

.method public onCompileFinished(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/b/a;->d:Lcom/b/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 224
    invoke-interface {p1, v0}, Lcom/b/b;->a(I)V

    :cond_0
    return-void
.end method

.method public onCompileProgress(Lcom/meicam/sdk/NvsTimeline;I)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/b/a;->d:Lcom/b/b;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 217
    invoke-interface {p1, p2}, Lcom/b/b;->a(I)V

    :cond_0
    return-void
.end method
