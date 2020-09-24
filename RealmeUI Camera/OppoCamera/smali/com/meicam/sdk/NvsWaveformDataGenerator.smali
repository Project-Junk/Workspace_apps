.class public Lcom/meicam/sdk/NvsWaveformDataGenerator;
.super Ljava/lang/Object;
.source "NvsWaveformDataGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;,
        Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m_fetchingWaveformData:Z

.field private m_nextTaskId:J

.field private m_taskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;",
            ">;"
        }
    .end annotation
.end field

.field private m_tmpLeftWaveformData:[F

.field private m_tmpRightWaveformData:[F

.field private m_tmpSamplesPerGroup:J

.field private m_waveformDataCallback:Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;

.field private m_waveformDataGenerator:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Meicam"

    .line 41
    iput-object v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataGenerator:J

    const-wide/16 v2, 0x1

    .line 44
    iput-wide v2, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_nextTaskId:J

    const/4 v2, 0x0

    .line 46
    iput-boolean v2, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_fetchingWaveformData:Z

    .line 49
    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpSamplesPerGroup:J

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    .line 71
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 72
    invoke-direct {p0}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataGenerator:J

    return-void
.end method

.method private finishWaveformDataFetchingTask(JZ)V
    .locals 23

    move-object/from16 v12, p0

    .line 206
    iget-object v0, v12, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;

    .line 207
    iget-object v1, v12, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v13, v12, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataCallback:Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;

    if-nez v13, :cond_1

    return-void

    .line 216
    :cond_1
    iget-object v5, v0, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->m_audioFilePath:Ljava/lang/String;

    .line 217
    iget-wide v6, v0, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->m_audioFileSampleCount:J

    .line 218
    invoke-static {v0}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$100(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;)J

    move-result-wide v19

    .line 219
    invoke-static {v0}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$200(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;)[F

    move-result-object v21

    .line 220
    invoke-static {v0}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$300(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;)[F

    move-result-object v22

    if-nez p3, :cond_2

    move-wide/from16 v14, p1

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    .line 223
    invoke-interface/range {v13 .. v22}, Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;->onWaveformDataReady(JLjava/lang/String;JJ[F[F)V

    goto :goto_0

    .line 225
    :cond_2
    new-instance v14, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v15, Lcom/meicam/sdk/NvsWaveformDataGenerator$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide/from16 v3, p1

    move-wide/from16 v8, v19

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Lcom/meicam/sdk/NvsWaveformDataGenerator$1;-><init>(Lcom/meicam/sdk/NvsWaveformDataGenerator;Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;JLjava/lang/String;JJ[F[F)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private native nativeCancelTask(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeFetchWaveformData(JLjava/lang/String;J)J
.end method

.method private native nativeGetAudioFileDuration(Ljava/lang/String;)J
.end method

.method private native nativeGetAudioFileSampleCount(Ljava/lang/String;)J
.end method

.method private native nativeInit()J
.end method


# virtual methods
.method public cancelTask(J)V
    .locals 2

    .line 168
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 169
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->isReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-wide v0, v0, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->waveformTaskId:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->nativeCancelTask(J)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public generateWaveformData(Ljava/lang/String;JI)J
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    .line 127
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->isReleased()Z

    move-result v0

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_0

    return-wide v10

    :cond_0
    if-eqz v7, :cond_6

    cmp-long v0, v8, v10

    if-gtz v0, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->nativeGetAudioFileSampleCount(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-gtz v0, :cond_2

    return-wide v10

    :cond_2
    const/4 v14, 0x1

    .line 137
    iput-boolean v14, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_fetchingWaveformData:Z

    .line 138
    iget-wide v1, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataGenerator:J

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->nativeFetchWaveformData(JLjava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 139
    iput-boolean v2, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_fetchingWaveformData:Z

    cmp-long v2, v0, v10

    if-nez v2, :cond_3

    return-wide v10

    .line 143
    :cond_3
    new-instance v2, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;-><init>(Lcom/meicam/sdk/NvsWaveformDataGenerator$1;)V

    .line 144
    iget-wide v4, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_nextTaskId:J

    const-wide/16 v15, 0x1

    add-long v14, v4, v15

    iput-wide v14, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_nextTaskId:J

    iput-wide v4, v2, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->taskId:J

    .line 145
    iput-wide v0, v2, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->waveformTaskId:J

    .line 146
    iput-object v7, v2, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->m_audioFilePath:Ljava/lang/String;

    .line 147
    iput-wide v12, v2, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->m_audioFileSampleCount:J

    .line 148
    invoke-static {v2, v8, v9}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$102(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;J)J

    .line 149
    iget-wide v0, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpSamplesPerGroup:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    .line 151
    iget-object v0, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpLeftWaveformData:[F

    invoke-static {v2, v0}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$202(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;[F)[F

    .line 152
    iget-object v0, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpRightWaveformData:[F

    invoke-static {v2, v0}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$302(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;[F)[F

    .line 153
    iget-wide v0, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpSamplesPerGroup:J

    invoke-static {v2, v0, v1}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$102(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;J)J

    .line 154
    iput-object v3, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpLeftWaveformData:[F

    .line 155
    iput-object v3, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpRightWaveformData:[F

    .line 156
    iput-wide v10, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpSamplesPerGroup:J

    .line 159
    :cond_4
    iget-object v0, v6, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    iget-wide v3, v2, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->taskId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {v2}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$200(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;)[F

    move-result-object v0

    if-eqz v0, :cond_5

    .line 161
    iget-wide v0, v2, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->taskId:J

    const/4 v3, 0x1

    invoke-direct {v6, v0, v1, v3}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->finishWaveformDataFetchingTask(JZ)V

    .line 163
    :cond_5
    iget-wide v0, v2, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->taskId:J

    return-wide v0

    :cond_6
    :goto_0
    return-wide v10
.end method

.method public getAudioFileDuration(Ljava/lang/String;)J
    .locals 2

    .line 107
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->nativeGetAudioFileDuration(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioFileSampleCount(Ljava/lang/String;)J
    .locals 2

    .line 116
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->nativeGetAudioFileSampleCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isReleased()Z
    .locals 4

    .line 95
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 96
    iget-wide v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataGenerator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyWaveformDataReady(JJ[F[F)V
    .locals 6

    .line 182
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_fetchingWaveformData:Z

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;

    .line 186
    iget-wide v4, v1, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->waveformTaskId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 187
    invoke-static {v1, p3, p4}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$102(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;J)J

    .line 188
    invoke-static {v1, p5}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$202(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;[F)[F

    .line 189
    invoke-static {v1, p6}, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->access$302(Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;[F)[F

    .line 190
    iget-wide p1, v1, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->taskId:J

    goto :goto_0

    :cond_1
    move-wide p1, v2

    :goto_0
    cmp-long p3, p1, v2

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->finishWaveformDataFetchingTask(JZ)V

    goto :goto_1

    .line 198
    :cond_2
    iput-wide p3, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpSamplesPerGroup:J

    .line 199
    iput-object p5, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpLeftWaveformData:[F

    .line 200
    iput-object p6, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_tmpRightWaveformData:[F

    :cond_3
    :goto_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 77
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 78
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;

    .line 83
    iget-wide v1, v1, Lcom/meicam/sdk/NvsWaveformDataGenerator$Task;->waveformTaskId:J

    invoke-direct {p0, v1, v2}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->nativeCancelTask(J)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_taskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataCallback:Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;

    .line 89
    iget-wide v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataGenerator:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/sdk/NvsWaveformDataGenerator;->nativeClose(J)V

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataGenerator:J

    return-void
.end method

.method public setWaveformDataCallback(Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;)V
    .locals 0

    .line 101
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 102
    iput-object p1, p0, Lcom/meicam/sdk/NvsWaveformDataGenerator;->m_waveformDataCallback:Lcom/meicam/sdk/NvsWaveformDataGenerator$WaveformDataCallback;

    return-void
.end method
