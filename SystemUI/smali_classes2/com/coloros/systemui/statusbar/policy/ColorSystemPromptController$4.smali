.class Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;
.super Lcom/coloros/systemui/statusbar/receiver/SystemPromptReceiver;
.source "ColorSystemPromptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/receiver/SystemPromptReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.ACTION_AUDIO_RECORD_STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "com.oppo.incallscreen.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "com.oppo.recorder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "android.intent.action.ACTION_ERR_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_7
    const-string v0, "android.intent.action.ACTION_HAVE_ERR_CODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "android.media.ACTION_AUDIO_RECORD_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 275
    :pswitch_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1700(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V

    goto/16 :goto_4

    .line 265
    :pswitch_1
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1500(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "close_developer_reboot"

    .line 266
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 267
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1500(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getDevelopmentSettingsState(Landroid/content/Context;)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    .line 269
    :goto_2
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boot completed!!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 271
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1600(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "errMsg"

    .line 256
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "-1"

    .line 257
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_3

    :cond_2
    move v3, v4

    .line 258
    :goto_3
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive ACTION_HAVE_ERR_CODE errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0, v3, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1400(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;ZLjava/lang/String;)V

    goto/16 :goto_4

    .line 247
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->TAG:Ljava/lang/String;

    const-string p2, "Receive ACTION_AUDIO_RECORD_STOP!"

    invoke-static {v2, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p1, v4}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$102(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z

    .line 250
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0, v4}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$300(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)V

    goto/16 :goto_4

    .line 241
    :pswitch_4
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->TAG:Ljava/lang/String;

    const-string v0, "Receive ACTION_AUDIO_RECORD_START!"

    invoke-static {v2, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.media.EXTRA_RECORD_ACTION_PID"

    .line 242
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 243
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1300(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;I)V

    goto/16 :goto_4

    .line 222
    :pswitch_5
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$700(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 223
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    const-string v0, "incall_screen_forground"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1102(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z

    .line 224
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    const-string v0, "incall_screen_name_tag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1202(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v5, -0x1

    const-string p1, "call_start_time"

    .line 225
    invoke-virtual {p2, p1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p1, "video_call"

    .line 226
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "call_state"

    .line 227
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 229
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive ACTION_INCALLSCREEN_STATE_CHANGED mInCallScreenFromBroadcast= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    .line 230
    invoke-static {v3}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1100(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mInCallScreenClassName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    .line 231
    invoke-static {v3}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1200(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", phoneCallStartTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isVideoCall="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", callState = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {v2, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$700(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$600(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$700(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$600(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :pswitch_6
    const-string p1, "state"

    .line 208
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive ACTION_PHONE_STATE_CHANGED state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 212
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$700(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$600(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p1, v4}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$800(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)V

    .line 214
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p1, v3}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$902(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z

    .line 215
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0, v3}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1002(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z

    goto :goto_4

    .line 217
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0, v4}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$1002(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)Z

    goto :goto_4

    :pswitch_7
    const-string p1, "recorder_status_for_statebar"

    .line 199
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-wide/16 v0, 0x0

    const-string v3, "recorder_time_for_statebar"

    .line 200
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 201
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive ACTION_STATUS_BAR_RECORDER recorderStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", recordTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$500(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;I)V

    :cond_4
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70e427a3 -> :sswitch_8
        -0x656dfc66 -> :sswitch_7
        -0x4f0a83a5 -> :sswitch_6
        -0x2dbf1ad5 -> :sswitch_5
        0x254d8d9f -> :sswitch_4
        0x2f94f923 -> :sswitch_3
        0x392cb822 -> :sswitch_2
        0x4b1c70b3 -> :sswitch_1
        0x5f748487 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
