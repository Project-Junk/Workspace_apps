.class public Lcom/android/internal/telephony/TelephonyTester;
.super Ljava/lang/Object;
.source "TelephonyTester.java"


# static fields
.field private static final ACTION_RESET:Ljava/lang/String; = "reset"

.field private static final ACTION_TEST_CHANGE_NUMBER:Ljava/lang/String; = "com.android.internal.telephony.TestChangeNumber"

.field private static final ACTION_TEST_CONFERENCE_EVENT_PACKAGE:Ljava/lang/String; = "com.android.internal.telephony.TestConferenceEventPackage"

.field private static final ACTION_TEST_DIALOG_EVENT_PACKAGE:Ljava/lang/String; = "com.android.internal.telephony.TestDialogEventPackage"

.field private static final ACTION_TEST_HANDOVER_FAIL:Ljava/lang/String; = "com.android.internal.telephony.TestHandoverFail"

.field private static final ACTION_TEST_IMS_E_CALL:Ljava/lang/String; = "com.android.internal.telephony.TestImsECall"

.field private static final ACTION_TEST_SERVICE_STATE:Ljava/lang/String; = "com.android.internal.telephony.TestServiceState"

.field private static final ACTION_TEST_SUPP_SRVC_FAIL:Ljava/lang/String; = "com.android.internal.telephony.TestSuppSrvcFail"

.field private static final ACTION_TEST_SUPP_SRVC_NOTIFICATION:Ljava/lang/String; = "com.android.internal.telephony.TestSuppSrvcNotification"

.field private static final DBG:Z = true

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_CANPULL:Ljava/lang/String; = "canPull"

.field private static final EXTRA_CODE:Ljava/lang/String; = "code"

.field private static final EXTRA_DATA_RAT:Ljava/lang/String; = "data_rat"

.field private static final EXTRA_DATA_REG_STATE:Ljava/lang/String; = "data_reg_state"

.field private static final EXTRA_DATA_ROAMING_TYPE:Ljava/lang/String; = "data_roaming_type"

.field private static final EXTRA_DIALOGID:Ljava/lang/String; = "dialogId"

.field private static final EXTRA_FAILURE_CODE:Ljava/lang/String; = "failureCode"

.field private static final EXTRA_FILENAME:Ljava/lang/String; = "filename"

.field private static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field private static final EXTRA_OPERATOR:Ljava/lang/String; = "operator"

.field private static final EXTRA_SENDPACKAGE:Ljava/lang/String; = "sendPackage"

.field private static final EXTRA_STARTPACKAGE:Ljava/lang/String; = "startPackage"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_VOICE_RAT:Ljava/lang/String; = "voice_rat"

.field private static final EXTRA_VOICE_REG_STATE:Ljava/lang/String; = "voice_reg_state"

.field private static final EXTRA_VOICE_ROAMING_TYPE:Ljava/lang/String; = "voice_roaming_type"

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyTester"

.field private static mImsExternalCallStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceStateTestIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/android/internal/telephony/TelephonyTester$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TelephonyTester$1;-><init>(Lcom/android/internal/telephony/TelephonyTester;)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 199
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register for intent action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v1, "register for intent action=com.android.internal.telephony.TestConferenceEventPackage"

    .line 209
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.TestConferenceEventPackage"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.TestDialogEventPackage"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.TestSuppSrvcFail"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.TestHandoverFail"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.TestSuppSrvcNotification"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.TestImsECall"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string v1, "com.android.internal.telephony.TestServiceState"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "register for intent action=com.android.internal.telephony.TestServiceState"

    .line 219
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    :goto_0
    const-string v1, "com.android.internal.telephony.TestChangeNumber"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleTestDialogEventPackageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleSuppServiceFailedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/TelephonyTester;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->handleHandoverFailedIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->sendTestSuppServiceNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    return-object p1
.end method

.method private handleHandoverFailedIntent()V
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 257
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 2761
    :cond_2
    iget-object v1, v0, Lcom/android/ims/a;->i:Lcom/android/ims/a$a;

    .line 262
    invoke-virtual {v0}, Lcom/android/ims/a;->f()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    const/16 v2, 0xe

    const/16 v3, 0x12

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/ims/a$a;->callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private handleSuppServiceFailedIntent(Landroid/content/Intent;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "failureCode"

    .line 241
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 242
    invoke-static {}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->values()[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method private handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 286
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 291
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    new-instance p2, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;-><init>(Ljava/io/InputStream;)V

    .line 301
    invoke-virtual {p2}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parse()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 306
    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsConferenceState;)V

    return-void

    .line 296
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Test conference event package file not found: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method private handleTestDialogEventPackageIntent(Landroid/content/Intent;)V
    .locals 9

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "startPackage"

    .line 324
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    sget-object p1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_2
    const-string v1, "sendPackage"

    .line 326
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    sget-object p1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshExternalCallState(Ljava/util/List;)V

    .line 328
    sget-object p1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    const-string v0, "dialogId"

    .line 329
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 330
    new-instance v1, Landroid/telephony/ims/ImsExternalCallState;

    const/4 v2, 0x0

    .line 331
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "number"

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v0, 0x1

    const-string v2, "canPull"

    .line 333
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v2, "state"

    .line 334
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    .line 339
    sget-object p1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method static synthetic lambda$testChangeNumber$0(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .locals 1

    const/4 v0, 0x1

    .line 445
    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/Connection;->setAddress(Ljava/lang/String;I)V

    .line 446
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Connection;->setDialString(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TelephonyTester"

    .line 233
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendTestSuppServiceNotification(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "code"

    .line 344
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 345
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 346
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v1, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Test supp service notification:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 352
    new-instance v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 353
    iput v0, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 354
    iput p1, v2, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 355
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    :cond_1
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 227
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method overrideServiceState(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "action"

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Service state override reset"

    .line 363
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string/jumbo v1, "voice_roaming_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setVoiceRoamingType(I)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Override voice roaming type with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "data_roaming_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRoamingType(I)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Override data roaming type with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "operator"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 401
    invoke-virtual {p1, v0, v0, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Override operator with "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method testChangeNumber(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "number"

    .line 435
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/-$$Lambda$TelephonyTester$TCWctVGu9r3w7c_RY-FxfL0bSys;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/-$$Lambda$TelephonyTester$TCWctVGu9r3w7c_RY-FxfL0bSys;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 450
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v0, :cond_1

    .line 451
    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 452
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    return-void

    .line 453
    :cond_1
    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_2

    .line 454
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 455
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    :cond_2
    return-void
.end method

.method testImsECall()V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 418
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/a;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 423
    :cond_2
    invoke-virtual {v0}, Lcom/android/ims/a;->b()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    .line 426
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_3
    const/4 v3, 0x1

    const-string v4, "e_call"

    .line 428
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 3761
    iget-object v2, v0, Lcom/android/ims/a;->i:Lcom/android/ims/a$a;

    .line 430
    invoke-virtual {v0}, Lcom/android/ims/a;->q()Landroid/telephony/ims/ImsCallSession;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/android/ims/a$a;->callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method
