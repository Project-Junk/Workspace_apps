.class Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;
.super Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;
.source "ColorVolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1111
    invoke-super {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 1115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Volume"

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 1117
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 1119
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1120
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive VOLUME_CHANGED_ACTION stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " oldLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p2, p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1126
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p2, p2, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;I)V

    return-void

    :cond_1
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 1130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1131
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 1133
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 1135
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1136
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive STREAM_DEVICES_CHANGED_ACTION stream="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " devices="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " oldDevices="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p2, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z

    move-result p2

    .line 1139
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-virtual {v0, p1, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    move-result p1

    or-int v2, p2, p1

    goto/16 :goto_3

    :cond_2
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    .line 1140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "android.media.EXTRA_RINGER_MODE"

    if-eqz v0, :cond_4

    .line 1141
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1142
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p2

    iput p1, p2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeExternal:I

    .line 1143
    :cond_3
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-static {p1}, Lcom/coloros/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1143
    invoke-static {v4, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p2, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2400(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z

    move-result v2

    goto/16 :goto_3

    :cond_4
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 1146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1147
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1148
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p2

    iput p1, p2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    .line 1149
    :cond_5
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive INTERNAL_RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-static {p1}, Lcom/coloros/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {v4, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p2, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2500(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)Z

    move-result v2

    goto/16 :goto_3

    :cond_6
    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 1152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1153
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    .line 1155
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 1156
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive STREAM_MUTE_CHANGED_ACTION stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " muted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2600(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;IZ)Z

    move-result v2

    goto/16 :goto_3

    :cond_7
    const-string v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 1159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1160
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    const-string p2, "onReceive ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-static {v4, p1, p2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2700(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2800(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Landroid/content/ComponentName;)Z

    move-result v2

    goto/16 :goto_3

    :cond_8
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 1162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1163
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    const-string p2, "onReceive ACTION_CONFIGURATION_CHANGED"

    invoke-static {v4, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onConfigurationChanged()V

    goto/16 :goto_2

    :cond_9
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 1165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1166
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    const-string p2, "onReceive ACTION_SCREEN_OFF"

    invoke-static {v4, p1, p2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onScreenOff()V

    goto/16 :goto_2

    :cond_a
    const-string v0, "oppo.media.volume_boost"

    .line 1170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "volume_boost"

    .line 1171
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1172
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive ACTION_VOLUME_BOOST  boosted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p2, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2900(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V

    goto :goto_2

    :cond_b
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 1174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "state"

    .line 1175
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_c

    move p1, v2

    goto :goto_0

    :cond_c
    move p1, v3

    :goto_0
    const-string v0, "microphone"

    .line 1176
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_d

    move p2, v2

    goto :goto_1

    :cond_d
    move p2, v3

    .line 1177
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive ACTION_HEADSET_PLUG connected="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  hasMic:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 1180
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p1

    iput-boolean v2, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->isDeviceHasMic:Z

    goto :goto_3

    .line 1182
    :cond_e
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p1

    iput-boolean v3, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->isDeviceHasMic:Z

    goto :goto_3

    :cond_f
    const-string p2, "oppo.intent.action.SKIN_CHANGED"

    .line 1186
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1187
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onThemeChanged()V

    :cond_10
    :goto_2
    move v2, v3

    :cond_11
    :goto_3
    if-eqz v2, :cond_12

    .line 1190
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    :cond_12
    return-void
.end method
