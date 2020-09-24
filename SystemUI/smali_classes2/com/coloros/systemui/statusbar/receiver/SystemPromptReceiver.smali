.class public Lcom/coloros/systemui/statusbar/receiver/SystemPromptReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "SystemPromptReceiver.java"


# static fields
.field public static final ACTION_AUDIO_RECORD_START:Ljava/lang/String; = "android.media.ACTION_AUDIO_RECORD_START"

.field public static final ACTION_AUDIO_RECORD_STOP:Ljava/lang/String; = "android.media.ACTION_AUDIO_RECORD_STOP"

.field public static final ACTION_ERROR_CODE:Ljava/lang/String; = "android.intent.action.ACTION_ERR_CODE"

.field public static final ACTION_HAVE_ERR_CODE:Ljava/lang/String; = "android.intent.action.ACTION_HAVE_ERR_CODE"

.field public static final ACTION_INCALLSCREEN_STATE_CHANGED:Ljava/lang/String; = "com.oppo.incallscreen.state"

.field public static final ACTION_STATUS_BAR_RECORDER:Ljava/lang/String; = "com.oppo.recorder"

.field public static final ACTION_TEST:Ljava/lang/String; = "oppo.intent.action.HIGHLIGHT_TEST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 10

    const-string v0, "android.intent.action.PHONE_STATE"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v2, "android.intent.action.USER_SWITCHED"

    const-string v3, "com.oppo.incallscreen.state"

    const-string v4, "com.oppo.recorder"

    const-string v5, "android.media.ACTION_AUDIO_RECORD_START"

    const-string v6, "android.media.ACTION_AUDIO_RECORD_STOP"

    const-string v7, "android.intent.action.ACTION_HAVE_ERR_CODE"

    const-string v8, "android.intent.action.ACTION_ERR_CODE"

    const-string v9, "oppo.intent.action.HIGHLIGHT_TEST"

    .line 35
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
