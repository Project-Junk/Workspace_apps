.class public Lcom/cdv/io/NvAndroidVideoFileReaderSW;
.super Ljava/lang/Object;
.source "NvAndroidVideoFileReaderSW.java"


# static fields
.field private static final ERROR_EOF:I = 0x1

.field private static final ERROR_FAIL:I = 0x2

.field private static final ERROR_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NvAndroidVideoFileReaderSW"

.field private static final m_verbose:Z = false


# instance fields
.field private m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private m_contiuousDecodingThreshold:J

.field private m_decoder:Landroid/media/MediaCodec;

.field m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private m_decoderSetupFailed:Z

.field private m_decoderStarted:Z

.field private m_duration:J

.field private m_extractor:Landroid/media/MediaExtractor;

.field private m_extractorInOriginalState:Z

.field private m_format:Landroid/media/MediaFormat;

.field private m_inputBufferQueued:Z

.field private m_lastSeekActualTimestamp:J

.field private m_lastSeekTimestamp:J

.field private m_onlyDecodecKeyFrame:Z

.field private m_owner:J

.field private m_pendingInputFrameCount:I

.field private m_sawInputEOS:Z

.field private m_sawOutputEOS:Z

.field private m_timestampOfLastCopiedFrame:J

.field private m_timestampOfLastDecodedFrame:J

.field private m_videoTrackIndex:I


# direct methods
.method constructor <init>(J)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_owner:J

    const/4 v2, 0x0

    .line 38
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v3, -0x1

    .line 39
    iput v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    .line 40
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    .line 41
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    .line 44
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 46
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderSetupFailed:Z

    .line 48
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    .line 49
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 50
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    const-wide/high16 v1, -0x8000000000000000L

    .line 52
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    .line 53
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    .line 54
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z

    .line 55
    iput v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    .line 56
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    .line 57
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    .line 59
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekTimestamp:J

    .line 60
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekActualTimestamp:J

    .line 61
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodecKeyFrame:Z

    const-wide/32 v0, 0xf4240

    .line 63
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_contiuousDecodingThreshold:J

    .line 67
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_owner:J

    .line 68
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private CleanupDecoder()V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 285
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 287
    :try_start_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->DrainOutputBuffers()V

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 301
    :catch_0
    :try_start_2
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NvAndroidVideoFileReaderSW"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    :goto_0
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    .line 310
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 313
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    :cond_3
    const-wide/high16 v2, -0x8000000000000000L

    .line 316
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    .line 317
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    .line 318
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    .line 319
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    .line 320
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    return-void
.end method

.method private DecodeToFrame(JJ)I
    .locals 0

    .line 390
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->DoDecodeToFrame(JJ)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 392
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NvAndroidVideoFileReaderSW"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder()V

    const/4 p1, 0x2

    return p1
.end method

.method private DoDecodeToFrame(JJ)I
    .locals 22

    move-object/from16 v8, p0

    .line 404
    iget-object v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    .line 405
    div-int/lit8 v0, v0, 0x3

    const/4 v9, 0x2

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    move v0, v11

    .line 409
    :cond_0
    iget-boolean v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    const-wide/32 v2, 0x186a0

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x1

    if-nez v1, :cond_12

    .line 410
    iget-boolean v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    const-string v12, "NvAndroidVideoFileReaderSW"

    if-nez v1, :cond_3

    .line 412
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const-wide/16 v13, 0xfa0

    invoke-virtual {v1, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v16

    if-ltz v16, :cond_3

    .line 414
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v16

    .line 417
    iget-object v7, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v1, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v18

    if-gez v18, :cond_1

    .line 420
    iget-object v15, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 421
    iput-boolean v6, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    goto :goto_0

    .line 425
    :cond_1
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v1

    iget v7, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    if-eq v1, v7, :cond_2

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WEIRD: got sample from track "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    .line 427
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", expected "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_2
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v19

    .line 431
    iget-object v15, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const/16 v17, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 435
    iput-boolean v6, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z

    .line 436
    iget v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    add-int/2addr v1, v6

    iput v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    .line 440
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    .line 441
    iput-boolean v11, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    .line 451
    :cond_3
    :goto_0
    iget v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    if-gt v1, v10, :cond_5

    iget-boolean v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v11

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v1, 0xfa0

    .line 460
    :goto_2
    iget-object v7, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    iget-object v13, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    int-to-long v14, v1

    invoke-virtual {v7, v13, v14, v15}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v13

    add-int/2addr v0, v6

    const/4 v1, -0x1

    if-ne v13, v1, :cond_6

    goto/16 :goto_7

    :cond_6
    const/4 v1, -0x3

    if-ne v13, v1, :cond_7

    .line 469
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    :cond_7
    const/4 v1, -0x2

    if-ne v13, v1, :cond_8

    .line 471
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 474
    invoke-direct {v8, v1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->ParseMediaFormat(Landroid/media/MediaFormat;)V

    goto/16 :goto_7

    :cond_8
    if-gez v13, :cond_9

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 484
    :cond_9
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    .line 487
    iput-boolean v6, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    .line 491
    :cond_a
    iget-object v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_f

    .line 495
    iget-object v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    .line 496
    iget v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    sub-int/2addr v0, v6

    iput v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    .line 501
    iget-wide v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    sub-long v4, p1, p3

    cmp-long v0, v0, v4

    if-ltz v0, :cond_b

    move v0, v6

    goto :goto_3

    :cond_b
    move v0, v11

    :goto_3
    if-nez v0, :cond_c

    .line 502
    iget-wide v4, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    iget-wide v14, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    sub-long/2addr v14, v2

    cmp-long v1, v4, v14

    if-ltz v1, :cond_c

    move v0, v6

    move v1, v0

    goto :goto_4

    :cond_c
    move v1, v11

    .line 511
    :goto_4
    iget-boolean v2, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodecKeyFrame:Z

    if-eqz v2, :cond_d

    move v15, v1

    move v14, v6

    goto :goto_5

    :cond_d
    move v14, v0

    move v15, v1

    :goto_5
    move/from16 v16, v11

    goto :goto_6

    :cond_e
    move v14, v6

    move v15, v11

    move/from16 v16, v15

    goto :goto_6

    :cond_f
    move/from16 v16, v0

    move v14, v11

    move v15, v14

    :goto_6
    if-eqz v14, :cond_10

    .line 520
    iget-wide v1, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_owner:J

    iget-object v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v0, v13

    iget-object v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->nativeCopyVideoFrame(JLjava/nio/ByteBuffer;IIJ)V

    .line 521
    iget-wide v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    iput-wide v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    .line 524
    :cond_10
    iget-object v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v13, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v14, :cond_11

    if-nez v15, :cond_11

    return v11

    :cond_11
    move/from16 v0, v16

    :goto_7
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const-string v0, "We have tried too many times and can\'t decode a frame!"

    .line 530
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_12
    cmp-long v0, p1, v4

    if-eqz v0, :cond_13

    .line 535
    iget-wide v0, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_13

    iget-wide v4, v8, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    sub-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_13

    return v11

    :cond_13
    return v6
.end method

.method private DrainOutputBuffers()V
    .locals 6

    .line 543
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 550
    :cond_1
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    if-nez v2, :cond_7

    .line 552
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/4 v4, -0x1

    const-string v5, "NvAndroidVideoFileReaderSW"

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, -0x3

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, -0x2

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrainDecoderBuffers(): Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 565
    :cond_5
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 566
    iput-boolean v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    .line 568
    :cond_6
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v1, v0

    :goto_0
    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const-string v0, "DrainDecoderBuffers(): We have tried too many times and can\'t decode a frame!"

    .line 572
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method private InvalidLastSeekTimestamp()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 580
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekTimestamp:J

    .line 581
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekActualTimestamp:J

    return-void
.end method

.method private IsValid()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ParseMediaFormat(Landroid/media/MediaFormat;)V
    .locals 13

    const-string v1, "width"

    .line 586
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "height"

    .line 587
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "color-format"

    .line 588
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_8

    .line 591
    :cond_0
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 592
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 593
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 594
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    .line 595
    iget-object v4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x19

    if-ne v3, v6, :cond_1

    const-string v6, "OMX.k3.video.decoder.avc"

    .line 596
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v3, 0x7f000100

    :cond_1
    move v6, v3

    .line 601
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    const-string v3, "slice-height"

    .line 602
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 603
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    const-string v4, "stride"

    .line 604
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 605
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v1

    move v3, v2

    .line 608
    :goto_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_6

    .line 609
    iget-object v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "OMX.Nvidia."

    .line 610
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v3, v3, 0xf

    and-int/lit8 v3, v3, -0x10

    goto :goto_2

    :cond_5
    const-string v7, "OMX.SEC.avc.dec"

    .line 612
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v8, v1

    move v7, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v3

    move v8, v4

    :goto_3
    const-string v3, "crop-left"

    .line 621
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 622
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    goto :goto_4

    :cond_7
    move v9, v5

    :goto_4
    const-string v3, "crop-right"

    .line 625
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 626
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, -0x1

    :goto_5
    move v10, v1

    const-string v1, "crop-top"

    .line 629
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 630
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    move v11, v1

    goto :goto_6

    :cond_9
    move v11, v5

    :goto_6
    const-string v1, "crop-bottom"

    .line 633
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 634
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    goto :goto_7

    :cond_a
    add-int/lit8 v2, v2, -0x1

    move v12, v2

    :goto_7
    add-int/lit8 v0, v10, 0x1

    sub-int v3, v0, v9

    add-int/lit8 v0, v12, 0x1

    sub-int v4, v0, v11

    .line 641
    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_owner:J

    move-object v0, p0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->nativeSetFormatInfo(JIIIIIIIII)V

    :cond_b
    :goto_8
    return-void
.end method

.method private SeekInternal(JJ)I
    .locals 7

    .line 326
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_contiuousDecodingThreshold:J

    add-long/2addr v0, v5

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_contiuousDecodingThreshold:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 341
    :goto_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodecKeyFrame:Z

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    if-nez v3, :cond_5

    const/4 v0, 0x2

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, p1, p2, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 350
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 364
    :cond_3
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_5

    .line 366
    :try_start_1
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 371
    :catch_0
    :try_start_2
    iput-boolean v4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z

    .line 372
    iput v4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    goto :goto_2

    .line 354
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder()V

    .line 355
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-direct {p0, v1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SetupDecoder(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v1, :cond_5

    return v0

    :catch_1
    move-exception p1

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NvAndroidVideoFileReaderSW"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    .line 384
    :cond_5
    :goto_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->DecodeToFrame(JJ)I

    move-result p1

    return p1
.end method

.method private SetupDecoder(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 257
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    .line 258
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 259
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    .line 263
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 264
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NvAndroidVideoFileReaderSW"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder()V

    return v0
.end method

.method private native nativeCopyVideoFrame(JLjava/nio/ByteBuffer;IIJ)V
.end method

.method private native nativeSetFormatInfo(JIIIIIIIII)V
.end method


# virtual methods
.method public CloseFile()V
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->InvalidLastSeekTimestamp()V

    .line 167
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder()V

    .line 169
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 172
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    .line 173
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodecKeyFrame:Z

    :cond_0
    return-void
.end method

.method public GetNextVideoFrameForPlayback()I
    .locals 4

    .line 238
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    const-wide/16 v2, 0x0

    .line 241
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->DecodeToFrame(JJ)I

    move-result v0

    .line 242
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->InvalidLastSeekTimestamp()V

    return v0
.end method

.method public OpenFile(Ljava/lang/String;Landroid/content/res/AssetManager;IJ)Z
    .locals 9

    .line 76
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v0

    const-string v1, "NvAndroidVideoFileReaderSW"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "You can\'t call OpenFile() twice!"

    .line 77
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 83
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    if-nez p2, :cond_1

    .line 86
    iget-object p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    .line 90
    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 92
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :goto_0
    const/4 p2, 0x1

    .line 95
    iput-boolean p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    move v3, v2

    :goto_1
    const-string v4, "mime"

    if-ge v3, v0, :cond_3

    .line 107
    iget-object v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 108
    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "video/"

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    iput v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    :cond_3
    :goto_2
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    if-gez v0, :cond_4

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to find a video track from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CloseFile()V

    return v2

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 124
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    .line 125
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_5

    .line 129
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string v0, "max-input-size"

    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 132
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_7

    if-ltz p3, :cond_7

    .line 135
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    if-lez p3, :cond_6

    goto :goto_3

    :cond_6
    const/16 p3, 0x78

    :goto_3
    const-string v0, "operating-rate"

    invoke-virtual {p1, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 138
    :cond_7
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string p3, "durationUs"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    .line 139
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderSetupFailed:Z

    .line 144
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SetupDecoder(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 145
    iput-boolean p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderSetupFailed:Z

    .line 146
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CloseFile()V

    return v2

    .line 150
    :cond_8
    iput-wide p4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_contiuousDecodingThreshold:J

    return p2

    :catch_0
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CloseFile()V

    return v2
.end method

.method public SeekVideoFrame(JJ)I
    .locals 6

    .line 185
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 188
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 189
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    const-wide/16 v4, 0x61a8

    add-long/2addr v4, v2

    cmp-long p1, p1, v4

    if-gez p1, :cond_1

    const-wide/16 p1, 0x1

    sub-long p1, v2, p1

    goto :goto_0

    :cond_1
    return v1

    .line 198
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    sub-long v0, p1, v0

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-gtz v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SeekInternal(JJ)I

    move-result p3

    if-nez p3, :cond_4

    .line 204
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekTimestamp:J

    .line 205
    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekActualTimestamp:J

    goto :goto_1

    .line 207
    :cond_4
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->InvalidLastSeekTimestamp()V

    :goto_1
    return p3
.end method

.method public StartPlayback(JJ)I
    .locals 5

    .line 217
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 220
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 221
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    return v1

    .line 225
    :cond_1
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekTimestamp:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekActualTimestamp:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    move-wide p1, v0

    .line 228
    :cond_2
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 231
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SeekInternal(JJ)I

    move-result p1

    .line 232
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->InvalidLastSeekTimestamp()V

    return p1
.end method

.method public enableOnlyDecodeKeyFrame(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodecKeyFrame:Z

    return-void
.end method

.method public hasDecoderSetupFailed()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderSetupFailed:Z

    return v0
.end method
