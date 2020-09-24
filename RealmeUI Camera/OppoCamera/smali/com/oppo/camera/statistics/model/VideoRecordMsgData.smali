.class public Lcom/oppo/camera/statistics/model/VideoRecordMsgData;
.super Lcom/oppo/camera/statistics/model/DcsMsgData;
.source "VideoRecordMsgData.java"


# static fields
.field private static final EVENT_VIDEO_RECORD:Ljava/lang/String; = "videoRecord"

.field private static final KEY_AE_AF_LOCK:Ljava/lang/String; = "ae_af_lock"

.field private static final KEY_AVAILABLE_STORAGE:Ljava/lang/String; = "available_storage"

.field private static final KEY_FACE_COUNT:Ljava/lang/String; = "face_count"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash_mode"

.field private static final KEY_IS_RECORD_LOCATION:Ljava/lang/String; = "is_record_location"

.field private static final KEY_IS_SHUTTER_VOICE:Ljava/lang/String; = "is_shutter_voice"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_PREVIEW_CAPTURE_COST_TIME:Ljava/lang/String; = "preview_capture_cost_time"

.field private static final KEY_TOUCH_EXPOSURE_COMPENSATION:Ljava/lang/String; = "touch_ev"

.field private static final KEY_TOUCH_XY:Ljava/lang/String; = "touchxy_value"

.field private static final KEY_VIDEO_CODEC:Ljava/lang/String; = "video_codec"

.field private static final KEY_VIDEO_FACE_BEAUTY:Ljava/lang/String; = "video_face_beauty"

.field private static final KEY_VIDEO_FPS:Ljava/lang/String; = "video_fps"

.field private static final KEY_VIDEO_MODE:Ljava/lang/String; = "video_mode"

.field private static final KEY_VIDEO_RECORDER_SOUND:Ljava/lang/String; = "video_recorder_sound"

.field private static final KEY_VIDEO_SIZE_TYPE:Ljava/lang/String; = "video_rec_mode"

.field private static final KEY_VIDEO_TIME:Ljava/lang/String; = "video_time"

.field private static final KEY_VOLUME_FUNCTION:Ljava/lang/String; = "volume_function"

.field private static final TAG:Ljava/lang/String; = "VideoRecordMsgData"


# instance fields
.field public mAeAfLock:Ljava/lang/String;

.field public mAvaliableStorage:J

.field public mFaceCount:I

.field public mFlashMode:Ljava/lang/String;

.field public mIsRecordLocation:Ljava/lang/String;

.field public mIsShutterVoice:Ljava/lang/String;

.field public mLocation:Ljava/lang/String;

.field public mPreviewCaptureCostTime:J

.field public mTouchEVValue:I

.field public mTouchXYValue:Ljava/lang/String;

.field public mVideoCodec:Ljava/lang/String;

.field public mVideoFaceBeauty:I

.field public mVideoFps:I

.field public mVideoMode:Ljava/lang/String;

.field public mVideoRecorderSound:Ljava/lang/String;

.field public mVideoSizeType:Ljava/lang/String;

.field public mVideoTime:J

.field public mVolumeFunction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "202"

    const-string v2, "videoRecord"

    .line 50
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/oppo/camera/statistics/model/DcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoTime:J

    .line 11
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoSizeType:Ljava/lang/String;

    .line 12
    iput v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFps:I

    .line 13
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    .line 14
    iput-wide v1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAvaliableStorage:J

    .line 15
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoCodec:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoRecorderSound:Ljava/lang/String;

    .line 17
    iput-wide v1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    .line 18
    iput v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchEVValue:I

    .line 19
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchXYValue:Ljava/lang/String;

    .line 20
    iput v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFaceCount:I

    .line 21
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mLocation:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVolumeFunction:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsShutterVoice:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAeAfLock:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsRecordLocation:Ljava/lang/String;

    .line 26
    iput v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFaceBeauty:I

    return-void
.end method


# virtual methods
.method public report()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    const-string v2, "video_mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mLocation:Ljava/lang/String;

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    iget-wide v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "video_time"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoSizeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoSizeType:Ljava/lang/String;

    const-string v4, "video_rec_mode"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    iget v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFps:I

    if-lez v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFps:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "video_fps"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_4
    iget-wide v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAvaliableStorage:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAvaliableStorage:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "available_storage"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoCodec:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "video_codec"

    if-nez v0, :cond_6

    .line 80
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoCodec:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoRecorderSound:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 84
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoRecorderSound:Ljava/lang/String;

    const-string v5, "video_recorder_sound"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVolumeFunction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 88
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVolumeFunction:Ljava/lang/String;

    const-string v5, "volume_function"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_8
    iget-wide v4, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-wide v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preview_capture_cost_time"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchXYValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 96
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchXYValue:Ljava/lang/String;

    const-string v3, "touchxy_value"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchEVValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "touch_ev"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 102
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    const-string v3, "flash_mode"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_b
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsShutterVoice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 106
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsShutterVoice:Ljava/lang/String;

    const-string v3, "is_shutter_voice"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_c
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAeAfLock:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 110
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAeAfLock:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ae_af_lock"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_d
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFaceCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_count"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsRecordLocation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 116
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsRecordLocation:Ljava/lang/String;

    const-string v3, "is_record_location"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_e
    iget v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFaceBeauty:I

    if-lez v0, :cond_f

    .line 120
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFaceBeauty:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video_face_beauty"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_f
    iget-object v0, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchEVValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-boolean v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecordMsgData"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_10
    invoke-super {p0}, Lcom/oppo/camera/statistics/model/DcsMsgData;->report()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mEventId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mLogTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mLogTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mCaptureType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mCaptureType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mVideoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mVideoTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mVideoSizeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoSizeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mVideoFps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mFlashMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mbFlashTrigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mbFlashTrigger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mAvaliableStorage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAvaliableStorage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mVideoCodec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoCodec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mVideoRecorderSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoRecorderSound:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mVideoFaceBeauty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFaceBeauty:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mIsMirror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsMirror:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mFilterType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFilterType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mSmooth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mSmooth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mPreviewCaptureCostTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mZoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mZoomValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mTouchXYValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchXYValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mTouchEVValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchEVValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
