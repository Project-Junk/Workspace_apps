.class public Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Lcom/android/systemui/ConfigurationChangedReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistManager$UiController;
    }
.end annotation


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field public static final DISMISS_REASON_BACK:I = 0x3

.field public static final DISMISS_REASON_INVOCATION_CANCELLED:I = 0x1

.field public static final DISMISS_REASON_TAP:I = 0x2

.field public static final DISMISS_REASON_TIMEOUT:I = 0x4

.field public static final INVOCATION_HOME_BUTTON_LONG_PRESS:I = 0x5

.field private static final INVOCATION_PHONE_STATE_KEY:Ljava/lang/String; = "invocation_phone_state"

.field private static final INVOCATION_TIME_MS_KEY:Ljava/lang/String; = "invocation_time_ms"

.field public static final INVOCATION_TYPE_ACTIVE_EDGE:I = 0x2

.field public static final INVOCATION_TYPE_GESTURE:I = 0x1

.field public static final INVOCATION_TYPE_KEY:Ljava/lang/String; = "invocation_type"

.field public static final INVOCATION_TYPE_QUICK_SEARCH_BAR:I = 0x4

.field public static final INVOCATION_TYPE_VOICE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AssistManager"

.field private static final TIMEOUT_ACTIVITY:J = 0x3e8L

.field private static final TIMEOUT_SERVICE:J = 0x9c4L

.field private static final VERBOSE:Z = false


# instance fields
.field private final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field protected final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field protected final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field private final mShouldEnableOrb:Z

.field private mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field private final mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

.field private mView:Lcom/android/systemui/assist/AssistOrbContainer;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/android/systemui/assist/AssistManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 154
    new-instance v0, Lcom/android/systemui/assist/AssistManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$2;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    .line 163
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 164
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 165
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    .line 166
    new-instance p1, Lcom/android/internal/app/AssistUtils;

    invoke-direct {p1, p2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 167
    new-instance p1, Lcom/android/systemui/assist/AssistDisclosure;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 168
    new-instance p1, Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-direct {p1, p2}, Lcom/android/systemui/assist/PhoneStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 169
    new-instance p1, Lcom/android/systemui/assist/AssistHandleBehaviorController;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p2, v0, v1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;-><init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->registerVoiceInteractionSessionListener()V

    .line 173
    new-instance p1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v0, -0x7ffffc7c

    invoke-direct {p1, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 176
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistManager;->mShouldEnableOrb:Z

    .line 179
    new-instance p1, Lcom/android/systemui/assist/ui/DefaultUiController;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/assist/ui/DefaultUiController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    .line 181
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 182
    new-instance p2, Lcom/android/systemui/assist/AssistManager$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistManager;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistManager;)Lcom/android/systemui/assist/AssistOrbContainer;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    return-object p0
.end method

.method private checkGoogleAssistant()V
    .locals 12

    .line 267
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const-string v2, "assistant"

    .line 268
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const v1, 0x1040021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to load assistant from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AssistManager"

    const-string v4, "NavBar"

    invoke-static {v4, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 278
    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 281
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.service.voice.VoiceInteractionService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const v7, 0xc0080

    .line 281
    invoke-virtual {v5, v6, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    const-string v7, "voice_recognition_service"

    const-string v8, "voice_interaction_service"

    if-eqz v6, :cond_2

    .line 288
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 289
    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 290
    new-instance v10, Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-direct {v10, v5, v9}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 292
    invoke-virtual {v10}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "checkGoogleAssistant and getAssistant by service"

    .line 295
    invoke-static {v4, v3, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v9}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 298
    new-instance v4, Landroid/content/ComponentName;

    .line 299
    invoke-virtual {v10}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v2, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 303
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v8, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 306
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v7, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 314
    :cond_2
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 315
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.ASSIST"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v9, 0xd0000

    .line 315
    invoke-virtual {v5, v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    const-string v9, "checkGoogleAssistant and getAssistant by activity"

    .line 322
    invoke-static {v4, v3, v9}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 324
    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 326
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v3, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 327
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v8, v2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 329
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer(Landroid/content/pm/PackageManager;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {v0, v7, p0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method private getAssistInfo()Landroid/content/ComponentName;
    .locals 1

    .line 552
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultRecognizer(Landroid/content/pm/PackageManager;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 1

    .line 338
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.speech.RecognitionService"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/16 v0, 0x80

    .line 338
    invoke-virtual {p1, p0, v0, p2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 341
    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "NavBar"

    const-string p1, "AssistManager"

    const-string p2, "Unable to resolve default voice recognition service."

    .line 342
    invoke-static {p0, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 405
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700ee

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v1, -0x1

    const/16 v3, 0x7f1

    const/16 v4, 0x118

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 413
    new-instance p0, Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const p0, 0x800053

    .line 414
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string p0, "AssistPreviewPanel"

    .line 415
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p0, 0x31

    .line 416
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v6
.end method

.method private isVoiceSessionRunning()Z
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->isSessionRunning()Z

    move-result p0

    return p0
.end method

.method private maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbContainer;->getOrb()Lcom/android/systemui/assist/AssistOrbView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->getLogo()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "com.android.systemui.action_assist_icon"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/systemui/assist/AssistManager;->replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    return-void
.end method

.method private showOrb(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->maybeSwapSearchIcon(Landroid/content/ComponentName;Z)V

    .line 423
    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistManager;->mShouldEnableOrb:Z

    if-eqz p1, :cond_0

    .line 424
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    :cond_0
    return-void
.end method

.method private startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v3, 0x1

    const-string v4, "assist_structure_enabled"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-nez v0, :cond_2

    return-void

    .line 455
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 459
    :cond_3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v2, :cond_4

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    .line 467
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const p2, 0x7f01007c

    const v1, 0x7f01007d

    invoke-static {p1, p2, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 469
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    new-instance p2, Lcom/android/systemui/assist/AssistManager$5;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/systemui/assist/AssistManager$5;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Activity not found for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 431
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startVoiceInteractor(Landroid/os/Bundle;)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->startAssistActivity(Landroid/os/Bundle;Landroid/content/ComponentName;)V

    :goto_0
    return-void
.end method

.method private startVoiceInteractor(Landroid/os/Bundle;)V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    return-void
.end method

.method private toLoggingSubType(II)I
    .locals 0

    .line 572
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->areHandlesShowing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x4

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public canVoiceAssistBeLaunchedFromKeyguard()Z
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->activeServiceSupportsLaunchFromKeyguard()Z

    move-result p0

    return p0
.end method

.method public getAssistInfoForUser(I)Landroid/content/ComponentName;
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method protected getHandleBehaviorController()Lcom/android/systemui/assist/AssistHandleBehaviorController;
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    return-object p0
.end method

.method public getVoiceInteractorComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public hideAssist()V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    return-void
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->launchVoiceAssistFromKeyguard()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 224
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistOrbContainer;->isShowing()Z

    move-result p1

    .line 236
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move p1, v0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistOrbContainer;

    iput-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    .line 242
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/AssistOrbContainer;->setSystemUiVisibility(I)V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    .line 249
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V

    :cond_2
    return-void
.end method

.method public onGestureCompletion(F)V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1}, Lcom/android/systemui/assist/AssistManager$UiController;->onGestureCompletion(F)V

    return-void
.end method

.method public onInvocationProgress(IF)V
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/AssistManager$UiController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager$UiController;->onInvocationProgress(IF)V

    return-void
.end method

.method public onLockscreenShown()V
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->onLockscreenShown()V

    return-void
.end method

.method protected registerVoiceInteractionSessionListener()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    new-instance v1, Lcom/android/systemui/assist/AssistManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/AssistManager$4;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    return-void
.end method

.method public replaceDrawable(Landroid/widget/ImageView;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 512
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    if-eqz p4, :cond_0

    .line 515
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    if-eqz p4, :cond_1

    .line 520
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 523
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 522
    invoke-virtual {p0, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 524
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 534
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to swap drawable from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AssistManager"

    .line 534
    invoke-static {p3, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    const/4 p0, 0x0

    .line 538
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected shouldShowOrb()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDisclosure()V
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure;->postShow()V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 8

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->checkGoogleAssistant()V

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->getAssistInfo()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->getVoiceInteractorComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistManager;->isVoiceSessionRunning()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->shouldShowOrb()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/assist/AssistManager;->showOrb(Landroid/content/ComponentName;Z)V

    .line 363
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mView:Lcom/android/systemui/assist/AssistOrbContainer;

    iget-object v3, p0, Lcom/android/systemui/assist/AssistManager;->mHideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x9c4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/assist/AssistOrbContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    if-nez p1, :cond_4

    .line 369
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const/4 v2, 0x0

    const-string v3, "invocation_type"

    .line 371
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 373
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mHandleController:Lcom/android/systemui/assist/AssistHandleBehaviorController;

    invoke-virtual {v4}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->onAssistantGesturePerformed()V

    .line 375
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v4

    const-string v5, "invocation_phone_state"

    .line 376
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-string v7, "invocation_time_ms"

    invoke-virtual {p1, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 379
    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v6, 0x6b4

    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 381
    invoke-virtual {v5, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 382
    invoke-direct {p0, v2, v4}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 379
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 383
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistManager;->startAssistInternal(Landroid/os/Bundle;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public toLoggingSubType(I)I
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(II)I

    move-result p0

    return p0
.end method
