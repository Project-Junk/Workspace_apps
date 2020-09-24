.class public Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;
.super Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;
.source "SettingsRestorePlugin.java"


# static fields
.field private static final MAX_COUNT:I = 0x1

.field private static final SOURCE_PHONE_CLONE:Ljava/lang/String; = "PhoneClone"

.field private static final TAG:Ljava/lang/String; = "SettingsRestorePlugin"


# instance fields
.field private mCommonRecord:Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;

.field private mContext:Landroid/content/Context;

.field private mHasRecordFile:Z

.field private mIsCancel:Z

.field private mOldPhoneColorOSVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mOldPhoneColorOSVersion:I

    return-void
.end method

.method private getSettingsCommonRecord(Ljava/io/FileDescriptor;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "close buffreader e="

    const-string v3, "Error occur, e = "

    const-string v4, "SettingsRestorePlugin"

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getOldPhoneColorosVersion()I

    move-result v5

    const/16 v6, 0xf

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 154
    :goto_0
    new-instance v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;

    invoke-direct {v6}, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;-><init>()V

    const/4 v7, 0x0

    .line 158
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 159
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 160
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_71

    .line 163
    iget-boolean v9, v1, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mIsCancel:Z

    if-nez v9, :cond_71

    if-eqz v5, :cond_2

    .line 166
    invoke-direct {v1, v7}, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->isRingtoneKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_2
    const-string v9, "BEGIN:COMMON_DATA"

    .line 171
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "BREATH_NOTIFY:"

    .line 173
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0xe

    if-eqz v9, :cond_3

    .line 174
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mBreathlightNotify:I

    goto :goto_1

    :cond_3
    const-string v9, "DISPLAY_POWER_PERCENT:"

    .line 176
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v11, 0x16

    if-eqz v9, :cond_4

    .line 177
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPowerPercent:I

    goto :goto_1

    :cond_4
    const-string v9, "NETWORK_SPEED:"

    .line 179
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 180
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNetworkSpeed:I

    goto :goto_1

    :cond_5
    const-string v9, "OPPO_PLMN_DISPLAY_TYPE:"

    .line 182
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v12, 0x17

    if-eqz v9, :cond_6

    .line 183
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCarrierInfo:I

    goto :goto_1

    :cond_6
    const-string v9, "OPPO_DISAPLAY_CALCULATE_DATA_TRAFFIC:"

    .line 185
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x25

    .line 186
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 187
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOppoDisplayDataTraffic:I

    goto/16 :goto_1

    :cond_7
    const-string v9, "OPPO_STATUS_BAR_ENABLE_WHEN_LOCK:"

    .line 188
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x21

    .line 189
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOppoStatusbarEnbaleWhenLock:I

    goto/16 :goto_1

    :cond_8
    const-string v9, "NOTICE_WACKLOCK_STATE:"

    .line 191
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 192
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNoticeWakelockState:I

    goto/16 :goto_1

    :cond_9
    const-string v9, "ACCELEROMETER:"

    .line 194
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 195
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAccelerometer:I

    goto/16 :goto_1

    :cond_a
    const-string v9, "FONT_SCALE:"

    .line 197
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0xb

    .line 198
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 199
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mFontScale:F

    goto/16 :goto_1

    :cond_b
    const-string v9, "VIBRATE_WHEN_RINGING:"

    .line 200
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/16 v9, 0x15

    .line 201
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateRinging:I

    goto/16 :goto_1

    :cond_c
    const-string v9, "VIBRATE_WHEN_SILENT:"

    .line 203
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v13, 0x14

    if-eqz v9, :cond_d

    .line 204
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateSilent:I

    goto/16 :goto_1

    :cond_d
    const-string v9, "RINGTONE_CALL_URI:"

    .line 206
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v14, 0x12

    if-eqz v9, :cond_e

    .line 207
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStr:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v9, "RINGTONE_CALL_URI_PATH:"

    .line 208
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 209
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStrPath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    const-string v9, "RINGTONE_CALL_URI2:"

    .line 210
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v15, 0x13

    if-eqz v9, :cond_10

    .line 211
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStr2:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const-string v9, "RINGTONE_CALL_URI_PATH2:"

    .line 212
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x18

    if-eqz v9, :cond_11

    .line 213
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCallUriStrPath2:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v9, "RINGTONE_MES_URI:"

    .line 214
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v13, 0x11

    if-eqz v9, :cond_12

    .line 215
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStr:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const-string v9, "RINGTONE_MES_URI_PATH:"

    .line 216
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 217
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStrPath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_13
    const-string v9, "RINGTONE_MES_URI2:"

    .line 218
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 219
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStr2:Ljava/lang/String;

    goto/16 :goto_1

    :cond_14
    const-string v9, "RINGTONE_MES_URI_PATH2:"

    .line 220
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 221
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mMessageUriStrPath2:Ljava/lang/String;

    goto/16 :goto_1

    :cond_15
    const-string v9, "CALENDAR_REMINDER_SOUND:"

    .line 222
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 223
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCalendarUriStr:Ljava/lang/String;

    goto/16 :goto_1

    :cond_16
    const-string v9, "CALENDAR_REMINDER_SOUND_PATH:"

    .line 224
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v13, 0x1d

    if-eqz v9, :cond_17

    .line 225
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCalendarUriStrPath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    const-string v9, "NOTIFICATION_SOUND_URI:"

    .line 226
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 227
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationUriStr:Ljava/lang/String;

    goto/16 :goto_1

    :cond_18
    const-string v9, "NOTIFICATION_SOUND_PATH:"

    .line 228
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 229
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationUriStrPath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_19
    const-string v9, "DTMF_TONE_WHEN_DIALING:"

    .line 230
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 231
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDialTone:I

    goto/16 :goto_1

    :cond_1a
    const-string v9, "SOUND_EFFECTS_ENABLED"

    .line 233
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const/16 v9, 0x15

    .line 234
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mSoundEffectsEnabled:I

    goto/16 :goto_1

    :cond_1b
    const-string v9, "LOCKSCREEN_SOUNDS_ENABLED:"

    .line 236
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v11, 0x1a

    if-eqz v9, :cond_1c

    .line 237
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mLockTone:I

    goto/16 :goto_1

    :cond_1c
    const-string v9, "HAPTIC_FEEDBACK_ENABLED:"

    .line 239
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 240
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 241
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateTouch:I

    goto/16 :goto_1

    :cond_1d
    const-string v9, "DISABLE_SCREEN_CAPTURE:"

    .line 242
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 243
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableScreenCaputure:I

    goto/16 :goto_1

    :cond_1e
    const-string v9, "SCREEN_OFF_TIMEOUT:"

    .line 245
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 246
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenOffTimeout:I

    goto/16 :goto_1

    :cond_1f
    const-string v9, "SYNC_AUTO:"

    .line 248
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0xa

    .line 249
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 250
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAutoSync:Z

    goto/16 :goto_1

    :cond_20
    const-string v9, "DLAN_SWITCH:"

    .line 251
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    const/16 v9, 0xc

    .line 252
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDlnaSwith:I

    goto/16 :goto_1

    :cond_21
    const-string v9, "TIME_POWER_CONFIG:"

    .line 254
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 255
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTimePowerConfig:Ljava/lang/String;

    goto/16 :goto_1

    :cond_22
    const-string v9, "TAO_PASSWORD_FIELD:"

    .line 256
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 257
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 258
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTaoPasswordField:I

    goto/16 :goto_1

    :cond_23
    const-string v9, "RESIZE_SCREEN_FIELD:"

    .line 259
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v9, 0x14

    .line 260
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 261
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mResizeScreen:I

    goto/16 :goto_1

    :cond_24
    const-string v9, "DOUBLE_FINGER_SPLIT_SCREEN_FIELD:"

    .line 262
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    const/16 v9, 0x21

    .line 263
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDoubleFingerSplitScreen:I

    goto/16 :goto_1

    :cond_25
    const-string v9, "INSTALL_APPLICATION_SETTINGS:"

    .line 265
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 266
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 267
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mInstallApplication:I

    goto/16 :goto_1

    :cond_26
    const-string v9, "INSTALL_APPLICATION_FREQUENCY:"

    .line 268
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    const/16 v9, 0x1e

    .line 269
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 270
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mInstallApplicationFrequency:I

    goto/16 :goto_1

    :cond_27
    const-string v9, "APK_PRESCAN:"

    .line 271
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    const/16 v9, 0xc

    .line 272
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 273
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mApkPrescan:I

    goto/16 :goto_1

    :cond_28
    const-string v9, "DISABLE_ASSISTANT_SCREEN:"

    .line 274
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v12, 0x19

    if-eqz v9, :cond_29

    .line 275
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 276
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableAssistantScreen:I

    goto/16 :goto_1

    :cond_29
    const-string v9, "DEFAULT_VOLUME_TYPE_COLOROS_SIX:"

    .line 277
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    const/16 v9, 0x20

    .line 278
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 279
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultVolumeType:I

    goto/16 :goto_1

    :cond_2a
    const-string v9, "DISABLE_SLIDE_NOTIFICATION"

    .line 280
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 281
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultSlideType:I

    goto/16 :goto_1

    :cond_2b
    const-string v9, "DISABLE_FULL_SCREEN_BANNER:"

    .line 283
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/16 v15, 0x1b

    if-eqz v9, :cond_2c

    .line 284
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 285
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultFullBanner:I

    goto/16 :goto_1

    :cond_2c
    const-string v9, "AOD_CLOCK_MODE"

    .line 286
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v9, 0xe

    .line 287
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodClockMode:I

    goto/16 :goto_1

    :cond_2d
    const-string v9, "AOD_DATE_MODE"

    .line 289
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    const/16 v9, 0xd

    .line 290
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 291
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodDateMode:I

    goto/16 :goto_1

    :cond_2e
    const-string v9, "AOD_IMMEDIATE_SWITCH"

    .line 292
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2f

    const/16 v9, 0x14

    .line 293
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 294
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodImmediateSwitch:I

    goto/16 :goto_1

    :cond_2f
    const-string v9, "AOD_BATTERY_SWITCH"

    .line 295
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 296
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 297
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBatterySwitch:I

    goto/16 :goto_1

    :cond_30
    const-string v9, "AOD_STEP_SWITCH"

    .line 298
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_31

    const/16 v9, 0xf

    .line 299
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodStepSwitch:I

    goto/16 :goto_1

    :cond_31
    const-string v9, "AOD_CLOCK_ONLY"

    .line 301
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_32

    const/16 v9, 0xe

    .line 302
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 303
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodClockOnly:I

    goto/16 :goto_1

    :cond_32
    const-string v9, "AOD_SWITCH"

    .line 304
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/16 v9, 0xa

    .line 305
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodTimeSwitch:I

    goto/16 :goto_1

    :cond_33
    const-string v9, "AOD_BEGIN_HOUR"

    .line 307
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    const/16 v9, 0xe

    .line 308
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBeginHour:I

    goto/16 :goto_1

    :cond_34
    const-string v9, "AOD_BEGIN_MIN"

    .line 310
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_35

    const/16 v9, 0xd

    .line 311
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 312
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBeginMin:I

    goto/16 :goto_1

    :cond_35
    const-string v9, "AOD_END_HOUR"

    .line 313
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    const/16 v9, 0xc

    .line 314
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodEndHour:I

    goto/16 :goto_1

    :cond_36
    const-string v9, "AOD_END_MIN"

    .line 316
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_37

    const/16 v9, 0xb

    .line 317
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodEndMin:I

    goto/16 :goto_1

    :cond_37
    const-string v9, "CURVED_DISPLAY_INCALL_SWITCH"

    .line 319
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_38

    const/16 v9, 0x1c

    .line 320
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallSwitch:I

    goto/16 :goto_1

    :cond_38
    const-string v9, "CURVED_DISPLAY_INCALL_TYPE"

    .line 322
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 323
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallType:I

    goto/16 :goto_1

    :cond_39
    const-string v9, "CURVED_DISPLAY_INCALL_COLOR"

    .line 325
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 327
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3a
    const-string v9, "CURVED_DISPLAY_NOTIFICATION_SWITCH"

    .line 328
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3b

    const/16 v9, 0x22

    .line 329
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 330
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationSwitch:I

    goto/16 :goto_1

    :cond_3b
    const-string v9, "CURVED_DISPLAY_NOTIFICATION_COLOR"

    .line 331
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3c

    const/16 v9, 0x21

    .line 333
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3c
    const-string v9, "CAMERA_3D_SOUND_TYPE"

    .line 334
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    const/16 v9, 0x14

    .line 335
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPath:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3d
    const-string v9, "CAMERA_3D_SOUND_PATCH_BACKUP"

    .line 336
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    const/16 v9, 0x1c

    .line 337
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundPathBackup:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3e
    const-string v9, "CAMERA_3D_SOUND_SWITCH"

    .line 338
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3f

    const/16 v9, 0x16

    .line 339
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundSwitch:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 343
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3f
    const-string v9, "CAMERA_3D_LIGHT_TYPE"

    .line 345
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    const/16 v9, 0x14

    .line 346
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_40
    const-string v9, "CAMERA_3D_COLOR_SWITCH"

    .line 347
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_41

    const/16 v9, 0x16

    .line 348
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    :try_start_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColorSwitch:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 352
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_41
    const-string v9, "CAMERA_3D_RANDOM_COLOR_SWITCH"

    .line 354
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 355
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 357
    :try_start_6
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraRandomColorSwitch:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v7, v0

    .line 359
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_42
    const-string v9, "KEYBOARD_POSITION"

    .line 361
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_43

    const/16 v9, 0x11

    .line 362
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mKeyboardPosition:I

    goto/16 :goto_1

    :cond_43
    const-string v9, "DISABLE_GOOGLE_ASSSIST_POWER_WAKEUP:"

    .line 364
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_44

    const/16 v9, 0x24

    .line 365
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 366
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableGoogleAsssiant:I

    goto/16 :goto_1

    :cond_44
    const-string v9, "DISABLE_FRONT_FINGER_SOUND:"

    .line 367
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 368
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 369
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableFrontFingerSound:I

    goto/16 :goto_1

    :cond_45
    const-string v9, "DISPLAY_COMPAT_FULLSCREEN_LIST"

    .line 370
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_46

    const/16 v9, 0x1e

    .line 371
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatFullScreenList:Ljava/lang/String;

    goto/16 :goto_1

    :cond_46
    const-string v9, "DISPLAY_COMPAT_COMPAT_LIST"

    .line 372
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 373
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatCompatList:Ljava/lang/String;

    goto/16 :goto_1

    :cond_47
    const-string v9, "DISPLAY_COMPAT_IMMERSIVE_LIST"

    .line 374
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 375
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatImmersiveList:Ljava/lang/String;

    goto/16 :goto_1

    :cond_48
    const-string v9, "DISPLAY_COMPAT_NO_IMMERSIVE_LIST"

    .line 376
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_49

    const/16 v9, 0x20

    .line 377
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatNoImmersiveList:Ljava/lang/String;

    goto/16 :goto_1

    :cond_49
    const-string v9, "CUTOUT_HIDE_MODE_APP_LIST"

    .line 378
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 379
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCutoutHideModeList:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4a
    const-string v9, "OSIE_SWTCH:"

    .line 380
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4b

    const/16 v9, 0xb

    .line 381
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOSIESwitch:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4b
    const-string v9, "ENABLE_DUAL_CLOCK_SWITCH:"

    .line 382
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 383
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDualClockData:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4c
    const-string v9, "notification_prompt_mode:"

    .line 384
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 385
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 386
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationPromptMode:I

    goto/16 :goto_1

    :cond_4d
    const-string v9, "dolby_effect_switch:"

    .line 387
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4e

    const/16 v9, 0x14

    .line 388
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectSwitch:I

    goto/16 :goto_1

    :cond_4e
    const-string v9, "dolby_effect_mode:"

    .line 390
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 391
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 392
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectMode:I

    goto/16 :goto_1

    :cond_4f
    const-string v9, "dolby_music_ieq:"

    .line 393
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_50

    const/16 v9, 0x10

    .line 394
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 395
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicIeq:I

    goto/16 :goto_1

    :cond_50
    const-string v9, "dolby_music_geq:"

    .line 396
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_51

    const/16 v9, 0x10

    .line 397
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicGeq:Ljava/lang/String;

    goto/16 :goto_1

    :cond_51
    const-string v9, "dolby_geq_state:"

    .line 398
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_52

    const/16 v9, 0x10

    .line 399
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 400
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyGeqState:I

    goto/16 :goto_1

    :cond_52
    const-string v9, "OPPO_COLOR_MODE:"

    .line 401
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_53

    const/16 v9, 0x10

    .line 402
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 403
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mColorMode:I

    goto/16 :goto_1

    :cond_53
    const-string v9, "NONE_SENSING_CERTIFICATION:"

    .line 404
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 405
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 406
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNoneSensingCertification:I

    goto/16 :goto_1

    :cond_54
    const-string v9, "DC_BACKLIGHT_MODE"

    .line 407
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_55

    const/16 v9, 0x11

    .line 408
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDCBacklightMode:I

    goto/16 :goto_1

    :cond_55
    const-string v9, "PRESS_KEY_BACKLIGHT_MODE"

    .line 410
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 411
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 412
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPressKeyBacklightMode:I

    goto/16 :goto_1

    :cond_56
    const-string v9, "PRESS_KEY_BACKLIGHT_TIME"

    .line 413
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 414
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 415
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPressKeyBacklightTime:I

    goto/16 :goto_1

    :cond_57
    const-string v9, "SOUND_INPUT_DEVICE"

    .line 416
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 417
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 418
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mSoundInputDevice:I

    goto/16 :goto_1

    :cond_58
    const-string v9, "GLOBAL_DELETE_SOUND:"

    .line 419
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_59

    const/16 v9, 0x14

    .line 420
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 421
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mGlobalDeleteSound:I

    goto/16 :goto_1

    :cond_59
    const-string v9, "SCREEN_REFRESH_RATE"

    .line 422
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5a

    const/16 v9, 0x13

    .line 423
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 424
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenRefreshRate:I

    goto/16 :goto_1

    :cond_5a
    const-string v9, "COLOR_TEMPERATURE_ADJUSTMENT"

    .line 425
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5b

    const/16 v9, 0x1c

    .line 426
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 427
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTemperatureAdjustment:I

    goto/16 :goto_1

    :cond_5b
    const-string v9, "osie_iris5_switch"

    .line 428
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5c

    const/16 v9, 0x11

    .line 429
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5Switch:I

    goto/16 :goto_1

    :cond_5c
    const-string v9, "osie_video_display_switch"

    .line 431
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 432
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5VideoDisplay:I

    goto/16 :goto_1

    :cond_5d
    const-string v9, "osie_motion_fluency_switch"

    .line 434
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 435
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 436
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5MotionFluency:I

    goto/16 :goto_1

    :cond_5e
    const-string v9, "osie_motion_value"

    .line 437
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5f

    const/16 v9, 0x11

    .line 438
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 439
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5MotionValue:I

    goto/16 :goto_1

    :cond_5f
    const-string v9, "AOD_REALME_CLOCK_SETTING"

    .line 440
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 441
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 442
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeClocKSetting:I

    goto/16 :goto_1

    :cond_60
    const-string v9, "AOD_REALME_DATE_SETTING"

    .line 443
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_61

    const/16 v9, 0x17

    .line 444
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 445
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeDateSetting:I

    goto/16 :goto_1

    :cond_61
    const-string v9, "AOD_REALME_DATE_SELECT_SETTING"

    .line 446
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_62

    const/16 v9, 0x1e

    .line 447
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 448
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAODRealmeDateSelectSetting:I

    goto/16 :goto_1

    :cond_62
    const-string v9, "AOD_REALME_NOTIFICATION_SETTING"

    .line 449
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_63

    const/16 v9, 0x1f

    .line 450
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeNotificationSetting:I

    goto/16 :goto_1

    :cond_63
    const-string v9, "AOD_BETTERY_SETTING"

    .line 452
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_64

    const/16 v9, 0x13

    .line 453
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBetterySetting:I

    goto/16 :goto_1

    :cond_64
    const-string v9, "AOD_REALME_SIGNATURE_SETTING"

    .line 455
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_65

    const/16 v9, 0x1c

    .line 456
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 457
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeSignatureSetting:I

    goto/16 :goto_1

    :cond_65
    const-string v9, "AOD_REALME_NOTIFICATION_PACKAGE_SETTING"

    .line 458
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_66

    const/16 v9, 0x27

    .line 459
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 460
    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeNotificationPackageSetting:Ljava/lang/String;

    goto/16 :goto_1

    :cond_66
    const-string v9, "AOD_REALME_SIGNATURE_TEXT"

    .line 461
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 462
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 463
    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeSignatureText:Ljava/lang/String;

    goto/16 :goto_1

    :cond_67
    const-string v9, "AOD_REALME_COLOR_INDEX"

    .line 464
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_68

    const/16 v9, 0x16

    .line 465
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 466
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeColorIndex:I

    goto/16 :goto_1

    :cond_68
    const-string v9, "AOD_REALME_ALIGN_TYPE_INDEX"

    .line 467
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 468
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 469
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeAlignTypeIndex:I

    goto/16 :goto_1

    :cond_69
    const-string v9, "AOD_REALME_FONT_SZIE_INDEX"

    .line 470
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 471
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeFontSizeIndex:I

    goto/16 :goto_1

    :cond_6a
    const-string v9, "AOD_REALME_TYPE_FACE_INDEX"

    .line 473
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 474
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 475
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeTypeFaceIndex:I

    goto/16 :goto_1

    :cond_6b
    const-string v9, "END:COMMON_DATA"

    .line 476
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_71

    const-string v9, "display_ring_power_switch"

    .line 478
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 479
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 480
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mRingPowerSwitch:I

    goto/16 :goto_1

    :cond_6c
    const-string v9, "video_beauty_data"

    .line 481
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6d

    const/16 v9, 0x11

    .line 482
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 483
    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVideoBeautyData:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6d
    const-string v9, "dirac_effect_switch:"

    .line 484
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6e

    const/16 v9, 0x14

    .line 485
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 486
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectSwitch:I

    goto/16 :goto_1

    :cond_6e
    const-string v9, "dirac_scene_mode:"

    .line 487
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6f

    const/16 v9, 0x11

    .line 488
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 489
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracScene:I

    goto/16 :goto_1

    :cond_6f
    const-string v9, "dirac_effect_mode:"

    .line 490
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 491
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 492
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectMode:I

    goto/16 :goto_1

    :cond_70
    const-string v9, "dirac_eq_bands:"

    .line 493
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0xf

    .line 494
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEqBands:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 505
    :cond_71
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v7, v8

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v5, v0

    move-object v7, v8

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v8, v7

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v5, v0

    .line 500
    :goto_2
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v6, 0x0

    if-eqz v7, :cond_72

    .line 505
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 507
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v5, v0

    .line 498
    :goto_3
    :try_start_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v7, :cond_72

    .line 505
    :try_start_c
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_72
    :goto_4
    return-object v6

    :goto_5
    if-eqz v8, :cond_73

    :try_start_d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v5, v0

    .line 507
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_73
    :goto_6
    throw v3
.end method

.method private isRingtoneKey(Ljava/lang/String;)Z
    .locals 2

    .line 143
    invoke-static {}, Lcom/coloros/settings/backuprestore/SettingXmlComposer;->getRingtoneKeys()Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onCancel(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mIsCancel:Z

    const-string p1, "SettingsRestorePlugin"

    const-string v0, "onCancel "

    .line 69
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onContinue(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V
    .locals 1

    .line 56
    iput-object p1, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mIsCancel:Z

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mHasRecordFile:Z

    if-nez p3, :cond_0

    .line 60
    new-instance p3, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    invoke-direct {p3}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;-><init>()V

    .line 62
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/backup/sdk/v2/component/plugin/RestorePlugin;->onCreate(Landroid/content/Context;Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)V

    const-string p1, "SettingsRestorePlugin"

    const-string p2, "onCreate "

    .line 63
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 79
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 80
    iget-boolean v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mIsCancel:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putBRResult(Landroid/os/Bundle;I)V

    .line 81
    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 82
    invoke-static {p1, v1}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy ="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsRestorePlugin"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepare(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 94
    invoke-virtual {p0, p1}, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->getBREngineConfig(Landroid/os/Bundle;)Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getRestoreRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Setting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "settings.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->getFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 102
    iput-boolean v1, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mHasRecordFile:Z

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneClone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 105
    iget-boolean v2, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mHasRecordFile:Z

    if-eqz v2, :cond_2

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->getSettingsCommonRecord(Ljava/io/FileDescriptor;Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;)Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mCommonRecord:Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;

    .line 108
    :cond_2
    invoke-virtual {p1}, Lcom/coloros/backup/sdk/v2/common/host/BREngineConfig;->getOldPhoneColorosVersion()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mOldPhoneColorOSVersion:I

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mOldPhoneColorOSVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mOldPhoneColorOSVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsRestorePlugin"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    .line 111
    invoke-static {p1, v2}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPrepare :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mIsPhoneClone ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mHasRecordFile ="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mHasRecordFile:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPreview(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 119
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    .line 120
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 121
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreview :"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsRestorePlugin"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onRestore(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mIsCancel:Z

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mCommonRecord:Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;

    if-eqz v0, :cond_1

    .line 132
    iget v1, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mOldPhoneColorOSVersion:I

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/backuprestore/SettingsConstants;->setCommonSettings(Landroid/content/Context;Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;I)Z

    .line 134
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    .line 135
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putMaxCount(Landroid/os/Bundle;I)V

    .line 136
    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/listener/BRListener$ProgressConstants$Helper;->putCompletedCount(Landroid/os/Bundle;I)V

    .line 137
    invoke-virtual {p0}, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->getPluginHandler()Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/coloros/backup/sdk/v2/component/BRPluginHandler;->updateProgress(Landroid/os/Bundle;)V

    .line 139
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onRestore  mIsCancel ="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/settings/backuprestore/SettingsRestorePlugin;->mIsCancel:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsRestorePlugin"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
