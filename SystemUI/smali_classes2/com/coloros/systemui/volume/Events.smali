.class public Lcom/coloros/systemui/volume/Events;
.super Ljava/lang/Object;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/volume/Events$Callback;
    }
.end annotation


# static fields
.field public static final DISMISS_MSG_REASON_TIMEOUT:I = 0xa

.field public static final DISMISS_REASONS:[Ljava/lang/String;

.field public static final DISMISS_REASON_CONFIGURATION_CHANGED:I = 0xb

.field public static final DISMISS_REASON_DONE_CLICKED:I = 0x6

.field public static final DISMISS_REASON_OUTPUT_CHOOSER:I = 0x8

.field public static final DISMISS_REASON_SCREEN_OFF:I = 0x4

.field public static final DISMISS_REASON_SETTINGS_CLICKED:I = 0x5

.field public static final DISMISS_REASON_TIMEOUT:I = 0x3

.field public static final DISMISS_REASON_TOUCH_OUTSIDE:I = 0x1

.field public static final DISMISS_REASON_UNKNOWN:I = 0x0

.field public static final DISMISS_REASON_USB_OVERHEAD_ALARM_CHANGED:I = 0x9

.field public static final DISMISS_REASON_VOLUME_CONTROLLER:I = 0x2

.field public static final DISMISS_STREAM_GONE:I = 0x7

.field public static final EVENT_ACTIVE_STREAM_CHANGED:I = 0x2

.field public static final EVENT_COLLECTION_STARTED:I = 0x5

.field public static final EVENT_COLLECTION_STOPPED:I = 0x6

.field public static final EVENT_DISMISS_DIALOG:I = 0x1

.field public static final EVENT_DISMISS_USB_OVERHEAT_ALARM:I = 0x14

.field public static final EVENT_EXPAND:I = 0x3

.field public static final EVENT_EXTERNAL_RINGER_MODE_CHANGED:I = 0xc

.field public static final EVENT_ICON_CLICK:I = 0x7

.field public static final EVENT_INTERNAL_RINGER_MODE_CHANGED:I = 0xb

.field public static final EVENT_KEY:I = 0x4

.field public static final EVENT_LEVEL_CHANGED:I = 0xa

.field public static final EVENT_MUTE_CHANGED:I = 0xf

.field public static final EVENT_ODI_CAPTIONS_CLICK:I = 0x15

.field public static final EVENT_ODI_CAPTIONS_TOOLTIP_CLICK:I = 0x16

.field public static final EVENT_RINGER_TOGGLE:I = 0x12

.field public static final EVENT_SETTINGS_CLICK:I = 0x8

.field public static final EVENT_SHOW_DIALOG:I = 0x0

.field public static final EVENT_SHOW_USB_OVERHEAT_ALARM:I = 0x13

.field public static final EVENT_SUPPRESSOR_CHANGED:I = 0xe

.field private static final EVENT_TAGS:[Ljava/lang/String;

.field public static final EVENT_TOUCH_LEVEL_CHANGED:I = 0x9

.field public static final EVENT_TOUCH_LEVEL_DONE:I = 0x10

.field public static final EVENT_ZEN_CONFIG_CHANGED:I = 0x11

.field public static final EVENT_ZEN_MODE_CHANGED:I = 0xd

.field public static final ICON_STATE_MUTE:I = 0x2

.field public static final ICON_STATE_UNKNOWN:I = 0x0

.field public static final ICON_STATE_UNMUTE:I = 0x1

.field public static final ICON_STATE_VIBRATE:I = 0x3

.field public static final SHOW_REASONS:[Ljava/lang/String;

.field public static final SHOW_REASON_REMOTE_VOLUME_CHANGED:I = 0x2

.field public static final SHOW_REASON_UNKNOWN:I = 0x0

.field public static final SHOW_REASON_USB_OVERHEAD_ALARM_CHANGED:I = 0x3

.field public static final SHOW_REASON_VOLUME_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static sCallback:Lcom/coloros/systemui/volume/Events$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 35
    const-class v0, Lcom/coloros/systemui/volume/Events;

    invoke-static {v0}, Lcom/coloros/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/volume/Events;->TAG:Ljava/lang/String;

    const-string v1, "show_dialog"

    const-string v2, "dismiss_dialog"

    const-string v3, "active_stream_changed"

    const-string v4, "expand"

    const-string v5, "key"

    const-string v6, "collection_started"

    const-string v7, "collection_stopped"

    const-string v8, "icon_click"

    const-string v9, "settings_click"

    const-string v10, "touch_level_changed"

    const-string v11, "level_changed"

    const-string v12, "internal_ringer_mode_changed"

    const-string v13, "external_ringer_mode_changed"

    const-string v14, "zen_mode_changed"

    const-string v15, "suppressor_changed"

    const-string v16, "mute_changed"

    const-string v17, "touch_level_done"

    const-string v18, "zen_mode_config_changed"

    const-string v19, "ringer_toggle"

    const-string v20, "show_usb_overheat_alarm"

    const-string v21, "dismiss_usb_overheat_alarm"

    const-string v22, "odi_captions_click"

    const-string v23, "odi_captions_tooltip_click"

    .line 61
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    const-string v1, "unknown"

    const-string v2, "touch_outside"

    const-string v3, "volume_controller"

    const-string v4, "timeout"

    const-string v5, "screen_off"

    const-string v6, "settings_clicked"

    const-string v7, "done_clicked"

    const-string v8, "a11y_stream_changed"

    const-string v9, "output_chooser"

    const-string v10, "usb_temperature_below_threshold"

    const-string v11, "msg_timeout"

    const-string v12, "configuration_changed"

    .line 99
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    const-string v0, "unknown"

    const-string v1, "volume_changed"

    const-string v2, "remote_volume_changed"

    const-string v3, "usb_temperature_above_threshold"

    .line 118
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iconStateToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown_state_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "vibrate"

    return-object p0

    :cond_1
    const-string p0, "mute"

    return-object p0

    :cond_2
    const-string p0, "unmute"

    return-object p0
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "normal"

    return-object p0

    :cond_1
    const-string p0, "vibrate"

    return-object p0

    :cond_2
    const-string p0, "silent"

    return-object p0
.end method

.method public static varargs writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 10

    .line 133
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "writeEvent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/coloros/systemui/volume/Events;->EVENT_TAGS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 136
    array-length v4, p2

    if-lez v4, :cond_0

    const-string v4, " "

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5b1

    const/16 v5, 0xcf

    const-string v6, " keyguard="

    const/16 v7, 0x20

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_0

    .line 214
    :pswitch_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 207
    :pswitch_1
    invoke-static {p0, v4}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 208
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Boolean;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "dismiss_usb_overheat_alarm"

    .line 208
    invoke-static {p0, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 210
    sget-object p0, Lcom/coloros/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 201
    :pswitch_2
    invoke-static {p0, v4}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 202
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Boolean;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "show_usb_overheat_alarm"

    .line 202
    invoke-static {p0, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 204
    sget-object p0, Lcom/coloros/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_3
    const/16 p0, 0x569

    .line 182
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, p0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0xd1

    .line 166
    aget-object v4, p2, v8

    check-cast v4, Ljava/lang/Integer;

    .line 167
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 166
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 198
    :pswitch_5
    aget-object p0, p2, v9

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 195
    :pswitch_6
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/coloros/systemui/volume/Events;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0xd5

    .line 188
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    .line 189
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 188
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 192
    :pswitch_8
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/coloros/systemui/volume/Events;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 172
    :goto_0
    :pswitch_9
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    .line 173
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_a
    const/16 p0, 0x56a

    .line 185
    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0xd4

    .line 160
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    .line 161
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 160
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 162
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    check-cast p0, Ljava/lang/Integer;

    .line 163
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/coloros/systemui/volume/Events;->iconStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0xd3

    .line 176
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 176
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 178
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    .line 179
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_d
    const/16 v0, 0xd0

    .line 146
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Boolean;

    .line 147
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 146
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 148
    aget-object p0, p2, v9

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_e
    const/16 v0, 0xd2

    .line 155
    aget-object v4, p2, v9

    check-cast v4, Ljava/lang/Integer;

    .line 156
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 155
    invoke-static {p0, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 157
    aget-object p0, p2, v9

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 151
    :pswitch_f
    invoke-static {p0, v5}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 152
    sget-object p0, Lcom/coloros/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    :pswitch_10
    invoke-static {p0, v5}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 141
    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Boolean;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "volume_from_keyguard"

    .line 141
    invoke-static {p0, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 143
    sget-object p0, Lcom/coloros/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v0, p2, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p2, v8

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    :cond_0
    :goto_1
    sget-object p0, Lcom/coloros/systemui/volume/Events;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object p0, Lcom/coloros/systemui/volume/Events;->sCallback:Lcom/coloros/systemui/volume/Events$Callback;

    if-eqz p0, :cond_1

    .line 220
    invoke-interface {p0, v1, v2, p1, p2}, Lcom/coloros/systemui/volume/Events$Callback;->writeEvent(JI[Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static writeState(JLcom/android/systemui/plugins/ColorVolumeDialogController$State;)V
    .locals 1

    .line 225
    sget-object v0, Lcom/coloros/systemui/volume/Events;->sCallback:Lcom/coloros/systemui/volume/Events$Callback;

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0, p0, p1, p2}, Lcom/coloros/systemui/volume/Events$Callback;->writeState(JLcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    :cond_0
    return-void
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "alarms"

    return-object p0

    :cond_1
    const-string p0, "no_interruptions"

    return-object p0

    :cond_2
    const-string p0, "important_interruptions"

    return-object p0

    :cond_3
    const-string p0, "off"

    return-object p0
.end method
