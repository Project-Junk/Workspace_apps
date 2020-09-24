.class Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;
.super Ljava/lang/Object;
.source "SettingXmlComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/backuprestore/SettingXmlComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommonRecord"
.end annotation


# instance fields
.field mAODRealmeDateSelectSetting:I

.field mAccelerometer:I

.field mAodBatterySwitch:I

.field mAodBeginHour:I

.field mAodBeginMin:I

.field mAodBetterySetting:I

.field mAodClockMode:I

.field mAodClockOnly:I

.field mAodDateMode:I

.field mAodEndHour:I

.field mAodEndMin:I

.field mAodImmediateSwitch:I

.field mAodRealmeAlignTypeIndex:I

.field mAodRealmeClocKSetting:I

.field mAodRealmeColorIndex:I

.field mAodRealmeDateSetting:I

.field mAodRealmeFontSizeIndex:I

.field mAodRealmeNotificationPackageSetting:Ljava/lang/String;

.field mAodRealmeNotificationSetting:I

.field mAodRealmeSignatureSetting:I

.field mAodRealmeSignatureText:Ljava/lang/String;

.field mAodRealmeTypeFaceIndex:I

.field mAodStepSwitch:I

.field mAodTimeSwitch:I

.field mApkPrescan:I

.field mAutoSync:Z

.field mBreathlightNotify:I

.field mCalendarUriStr:Ljava/lang/String;

.field mCalendarUriStrPath:Ljava/lang/String;

.field mCallUriStr:Ljava/lang/String;

.field mCallUriStr2:Ljava/lang/String;

.field mCallUriStrPath:Ljava/lang/String;

.field mCallUriStrPath2:Ljava/lang/String;

.field mCameraColor:Ljava/lang/String;

.field mCameraColorSwitch:I

.field mCameraRandomColorSwitch:I

.field mCameraSoundPath:Ljava/lang/String;

.field mCameraSoundPathBackup:Ljava/lang/String;

.field mCameraSoundSwitch:I

.field mCarrierInfo:I

.field mColorMode:I

.field mColorModeNew:I

.field mCurvedDisplayIncallColor:Ljava/lang/String;

.field mCurvedDisplayIncallSwitch:I

.field mCurvedDisplayIncallType:I

.field mCurvedDisplayNotificationColor:Ljava/lang/String;

.field mCurvedDisplayNotificationSwitch:I

.field mCutoutHideModeList:Ljava/lang/String;

.field mDCBacklightMode:I

.field mDateFormat:Ljava/lang/String;

.field mDefaultFullBanner:I

.field mDefaultSlideType:I

.field mDefaultVolumeType:I

.field mDialTone:I

.field mDiracEffectMode:I

.field mDiracEffectSwitch:I

.field mDiracEqBands:Ljava/lang/String;

.field mDiracScene:I

.field mDisableAssistantScreen:I

.field mDisableFrontFingerSound:I

.field mDisableGoogleAsssiant:I

.field mDisableScreenCaputure:I

.field mDisplayCompatCompatList:Ljava/lang/String;

.field mDisplayCompatFullScreenList:Ljava/lang/String;

.field mDisplayCompatImmersiveList:Ljava/lang/String;

.field mDisplayCompatNoImmersiveList:Ljava/lang/String;

.field mDlnaSwith:I

.field mDolbyEffectMode:I

.field mDolbyEffectSwitch:I

.field mDolbyGeqState:I

.field mDolbyMusicGeq:Ljava/lang/String;

.field mDolbyMusicIeq:I

.field mDoubleFingerSplitScreen:I

.field mDualClockData:Ljava/lang/String;

.field mFontScale:F

.field mGlobalDeleteSound:I

.field mInstallApplication:I

.field mInstallApplicationFrequency:I

.field mIris5MotionFluency:I

.field mIris5MotionValue:I

.field mIris5Switch:I

.field mIris5VideoDisplay:I

.field mKeyboardPosition:I

.field mLockTone:I

.field mMessageUriStr:Ljava/lang/String;

.field mMessageUriStr2:Ljava/lang/String;

.field mMessageUriStrPath:Ljava/lang/String;

.field mMessageUriStrPath2:Ljava/lang/String;

.field mNetworkSpeed:I

.field mNoneSensingCertification:I

.field mNoticeWakelockState:I

.field mNotificationPromptMode:I

.field mNotificationUriStr:Ljava/lang/String;

.field mNotificationUriStrPath:Ljava/lang/String;

.field mOSIESwitch:Ljava/lang/String;

.field mOppoDisplayDataTraffic:I

.field mOppoStatusbarEnbaleWhenLock:I

.field mPowerPercent:I

.field mPressKeyBacklightMode:I

.field mPressKeyBacklightTime:I

.field mResizeScreen:I

.field mRingPowerSwitch:I

.field mScreenOffTimeout:I

.field mScreenRefreshRate:I

.field mSoundEffectsEnabled:I

.field mSoundInputDevice:I

.field mTaoPasswordField:I

.field mTemperatureAdjustment:I

.field mTime1224:Z

.field mTimePowerConfig:Ljava/lang/String;

.field mVibrateRinging:I

.field mVibrateSilent:I

.field mVibrateTouch:I

.field mVideoBeautyData:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mBreathlightNotify:I

    .line 33
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPowerPercent:I

    .line 34
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNetworkSpeed:I

    .line 35
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCarrierInfo:I

    .line 36
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOppoDisplayDataTraffic:I

    .line 37
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mOppoStatusbarEnbaleWhenLock:I

    .line 38
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNoticeWakelockState:I

    .line 39
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAccelerometer:I

    .line 41
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateRinging:I

    .line 42
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateSilent:I

    .line 55
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDialTone:I

    .line 56
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mSoundEffectsEnabled:I

    .line 57
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mLockTone:I

    .line 58
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVibrateTouch:I

    .line 59
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableScreenCaputure:I

    .line 60
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenOffTimeout:I

    .line 66
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDlnaSwith:I

    .line 68
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTaoPasswordField:I

    .line 69
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mResizeScreen:I

    .line 70
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDoubleFingerSplitScreen:I

    .line 71
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mInstallApplication:I

    .line 72
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mInstallApplicationFrequency:I

    .line 73
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mApkPrescan:I

    .line 74
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableAssistantScreen:I

    .line 75
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultVolumeType:I

    .line 76
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultSlideType:I

    .line 77
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDefaultFullBanner:I

    .line 79
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodClockMode:I

    .line 80
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodDateMode:I

    .line 81
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodImmediateSwitch:I

    .line 82
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodTimeSwitch:I

    .line 83
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBatterySwitch:I

    .line 84
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodStepSwitch:I

    .line 85
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodClockOnly:I

    .line 86
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBeginHour:I

    .line 87
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBeginMin:I

    .line 88
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodEndHour:I

    .line 89
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodEndMin:I

    .line 92
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeClocKSetting:I

    .line 93
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeDateSetting:I

    .line 94
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAODRealmeDateSelectSetting:I

    .line 95
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeNotificationSetting:I

    .line 96
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodBetterySetting:I

    .line 97
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeSignatureSetting:I

    const-string v1, ""

    .line 98
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeNotificationPackageSetting:Ljava/lang/String;

    const-string v2, "Dare\nto\nLeap"

    .line 99
    iput-object v2, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeSignatureText:Ljava/lang/String;

    .line 100
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeColorIndex:I

    .line 101
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeAlignTypeIndex:I

    .line 102
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeFontSizeIndex:I

    .line 103
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mAodRealmeTypeFaceIndex:I

    .line 106
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatFullScreenList:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatCompatList:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatImmersiveList:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisplayCompatNoImmersiveList:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCutoutHideModeList:Ljava/lang/String;

    .line 114
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mKeyboardPosition:I

    .line 118
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallSwitch:I

    .line 119
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallType:I

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayIncallColor:Ljava/lang/String;

    .line 121
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationSwitch:I

    .line 122
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    .line 125
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableGoogleAsssiant:I

    .line 126
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDisableFrontFingerSound:I

    .line 128
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDualClockData:Ljava/lang/String;

    .line 129
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNotificationPromptMode:I

    .line 130
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectSwitch:I

    .line 131
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyEffectMode:I

    .line 132
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicIeq:I

    .line 133
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyMusicGeq:Ljava/lang/String;

    const/4 v2, 0x1

    .line 135
    iput v2, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectSwitch:I

    .line 136
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracScene:I

    .line 137
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEffectMode:I

    .line 138
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDiracEqBands:Ljava/lang/String;

    .line 140
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDolbyGeqState:I

    .line 141
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mColorMode:I

    .line 142
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mColorModeNew:I

    .line 143
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mNoneSensingCertification:I

    .line 144
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mDCBacklightMode:I

    const/4 v2, 0x3

    .line 145
    iput v2, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPressKeyBacklightMode:I

    const/16 v2, 0x1770

    .line 146
    iput v2, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mPressKeyBacklightTime:I

    .line 147
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mSoundInputDevice:I

    .line 148
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mGlobalDeleteSound:I

    .line 151
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraColorSwitch:I

    .line 152
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraRandomColorSwitch:I

    .line 153
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mCameraSoundSwitch:I

    .line 157
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mScreenRefreshRate:I

    .line 158
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mTemperatureAdjustment:I

    .line 162
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5Switch:I

    .line 163
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5VideoDisplay:I

    .line 164
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5MotionFluency:I

    .line 165
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mIris5MotionValue:I

    .line 167
    iput v0, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mRingPowerSwitch:I

    .line 168
    iput-object v1, p0, Lcom/coloros/settings/backuprestore/SettingXmlComposer$CommonRecord;->mVideoBeautyData:Ljava/lang/String;

    return-void
.end method
