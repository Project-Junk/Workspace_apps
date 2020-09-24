.class public Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.super Landroid/os/Handler;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    }
.end annotation


# static fields
.field private static final ARAD:I = 0x0

.field private static final ARAD_AID:Ljava/lang/String; = "A00000015144414300"

.field private static final ARAM:I = 0x1

.field private static final ARAM_AID:Ljava/lang/String; = "A00000015141434C00"

.field private static final CARRIER_PRIVILEGE_AID:Ljava/lang/String; = "FFFFFFFFFFFF"

.field private static final CLA:I = 0x80

.field private static final COMMAND:I = 0xca

.field private static final DATA:Ljava/lang/String; = ""

.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x3

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0x1

.field private static final EVENT_PKCS15_READ_DONE:I = 0x4

.field private static final EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCarrierPrivilegeRules"

.field private static final MAX_RETRY:I = 0x1

.field private static final P1:I = 0xff

.field private static final P2:I = 0x40

.field private static final P2_EXTENDED_DATA:I = 0x60

.field private static final P3:I = 0x0

.field private static final RETRY_INTERVAL_MS:I = 0x2710

.field private static final STATE_ERROR:I = 0x2

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_LOADING:I = 0x0

.field private static final TAG_AID_REF_DO:Ljava/lang/String; = "4F"

.field private static final TAG_ALL_REF_AR_DO:Ljava/lang/String; = "FF40"

.field private static final TAG_AR_DO:Ljava/lang/String; = "E3"

.field private static final TAG_DEVICE_APP_ID_REF_DO:Ljava/lang/String; = "C1"

.field private static final TAG_PERM_AR_DO:Ljava/lang/String; = "DB"

.field private static final TAG_PKG_REF_DO:Ljava/lang/String; = "CA"

.field private static final TAG_REF_AR_DO:Ljava/lang/String; = "E2"

.field private static final TAG_REF_DO:Ljava/lang/String; = "E1"


# instance fields
.field private mAIDInUse:I

.field private mAccessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field private mCheckedRules:Z

.field private mLoadedCallback:Landroid/os/Message;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;

.field private mRules:Ljava/lang/String;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mStatusMessage:Landroid/util/LocalLog;

.field private mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

.field private mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V
    .locals 2

    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 195
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Landroid/util/LocalLog;

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    .line 200
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    const-string v1, "Creating UiccCarrierPrivilegeRules"

    .line 216
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 218
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 219
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Landroid/util/LocalLog;

    const-string v1, "Not loaded."

    invoke-virtual {p1, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 220
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    const-string p1, ""

    .line 221
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    .line 225
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 226
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    return-void
.end method

.method private getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 420
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p1

    .line 421
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    .line 422
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object p1

    .line 423
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_2

    .line 424
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN"

    return-object p1

    :cond_0
    const-string p1, "STATE_ERROR"

    return-object p1

    :cond_1
    const-string p1, "STATE_LOADED"

    return-object p1

    :cond_2
    const-string p1, "STATE_LOADING"

    return-object p1
.end method

.method private isDataComplete()Z
    .locals 4

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDataComplete mRules:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    const-string v1, "FF40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isDataComplete lengthBytes: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 578
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$300(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    if-ne v2, v1, :cond_0

    const-string v0, "isDataComplete yes"

    .line 579
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "isDataComplete no"

    .line 582
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 586
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tags don\'t match."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private openChannel(I)V
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "A00000015144414300"

    goto :goto_0

    :cond_0
    const-string v0, "A00000015141434C00"

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0, v2, v4, p1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 211
    invoke-virtual {v1, v0, v4, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method private static parseRefArdo(Ljava/lang/String;)Landroid/telephony/UiccAccessRule;
    .locals 10

    .line 618
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got rule: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 625
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "E1"

    .line 626
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    .line 627
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1, p0, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 634
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v3, "C1"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "4F"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 636
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$500(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "06"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "FFFFFFFFFFFF"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 639
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 642
    :cond_0
    invoke-virtual {v2, v1, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    :goto_1
    return-object v0

    .line 644
    :cond_2
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 645
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v2

    .line 650
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "CA"

    .line 651
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    return-object v0

    .line 654
    :cond_3
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v4, v1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 656
    new-instance v1, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_0

    :cond_4
    move-object v1, v2

    move-object v2, v0

    goto/16 :goto_0

    :cond_5
    return-object v0

    :cond_6
    const-string v3, "E3"

    .line 660
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 661
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v4, p0, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 665
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v3

    .line 666
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v7, "DB"

    if-nez v4, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 667
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v4, v3, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 670
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    return-object v0

    .line 673
    :cond_8
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_0

    .line 677
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid Rule type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 681
    :cond_a
    new-instance p0, Landroid/telephony/UiccAccessRule;

    .line 682
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    return-object p0
.end method

.method private static parseRules(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 594
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got rules: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 596
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v1, "FF40"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 597
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 599
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object p0

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 602
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v2, "E2"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 603
    invoke-virtual {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 604
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRefArdo(Ljava/lang/String;)Landroid/telephony/UiccAccessRule;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 606
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skip unrecognized rule."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->access$400(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UiccCarrierPrivilegeRules"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private updateState(ILjava/lang/String;)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 691
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    if-eqz p1, :cond_0

    .line 692
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 695
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateStatusMessage(Ljava/lang/String;)V

    return-void
.end method

.method private updateStatusMessage(Ljava/lang/String;)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 710
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccCarrierPrivilegeRules: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mStatusMessage="

    .line 712
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, " mAccessRules: "

    .line 715
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccAccessRule;

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  rule=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, " mAccessRules: null"

    .line 720
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    if-eqz v0, :cond_2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mUiccPkcs15: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, " mUiccPkcs15: null"

    .line 726
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getAccessRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 394
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 399
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 400
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 407
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 p1, -0x2

    return p1

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccAccessRule;

    .line 344
    invoke-virtual {v1, p1}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->hasCarrierPrivilegeRules()Z

    move-result v1

    if-nez v1, :cond_2

    .line 307
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const/4 p1, -0x2

    return p1

    :cond_1
    return v0

    :cond_2
    const v1, 0x20008040

    .line 318
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 324
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Package "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found for carrier privilege status check"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    return v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 p1, -0x2

    return p1

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccAccessRule;

    .line 286
    invoke-virtual {v1, p1, p2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 1

    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I

    move-result p1

    return p1
.end method

.method public getCarrierPrivilegeStatusForUid(Landroid/content/pm/PackageManager;I)I
    .locals 4

    .line 370
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    .line 372
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 373
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccAccessRule;

    .line 252
    invoke-virtual {v2}, Landroid/telephony/UiccAccessRule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    invoke-virtual {v2}, Landroid/telephony/UiccAccessRule;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 432
    iget v2, v0, Landroid/os/Message;->arg2:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 434
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-string v5, "Success!"

    const-string v6, ""

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_e

    const/4 v9, 0x3

    if-eq v2, v7, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v4, :cond_0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UiccCarrierPrivilegeRules"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_0
    const-string v0, "EVENT_PKCS15_READ_DONE"

    .line 549
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 550
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 553
    :cond_1
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 554
    new-instance v3, Landroid/telephony/UiccAccessRule;

    .line 555
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-wide/16 v9, 0x0

    invoke-direct {v3, v2, v6, v9, v10}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    .line 556
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    :cond_2
    invoke-direct {v1, v8, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "No ARA or ARF."

    .line 551
    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "EVENT_CLOSE_LOGICAL_CHANNEL_DONE"

    .line 540
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 541
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v0, :cond_14

    .line 543
    iput-object v6, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 544
    invoke-direct {v1, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    return-void

    :cond_5
    const-string v2, "EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE"

    .line 482
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 483
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 484
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_9

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 485
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 486
    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v4, 0x90

    if-ne v2, v4, :cond_8

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v2, v2

    if-lez v2, :cond_8

    .line 489
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 490
    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->isDataComplete()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 493
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v0, :cond_6

    .line 494
    iput-boolean v8, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    goto/16 :goto_5

    .line 496
    :cond_6
    invoke-direct {v1, v8, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 499
    :cond_7
    iget-object v10, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v11, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const/16 v12, 0x80

    const/16 v13, 0xca

    const/16 v14, 0xff

    const/16 v15, 0x60

    const/16 v16, 0x0

    const-string v17, ""

    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 501
    invoke-virtual {v1, v7, v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    .line 499
    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 506
    :goto_2
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v2, v8, :cond_d

    .line 507
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error parsing rules: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 511
    :cond_8
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v2, v8, :cond_d

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid response: payload="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " sw1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sw2="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto :goto_5

    .line 518
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error reading value from SIM via "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    iget v4, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v4, :cond_a

    const-string v4, "ARAD"

    goto :goto_3

    :cond_a
    const-string v4, "ARAM"

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_b

    .line 521
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 522
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "error code : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 525
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown exception : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_4
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v2, :cond_c

    .line 528
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateStatusMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 530
    :cond_c
    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    .line 534
    :cond_d
    :goto_5
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    iget v4, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    invoke-virtual {v1, v9, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    const/4 v0, -0x1

    .line 536
    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    return-void

    :cond_e
    const-string v2, "EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    .line 437
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 438
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 439
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 440
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v3

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    .line 441
    iget-object v8, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v9, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const/16 v10, 0x80

    const/16 v11, 0xca

    const/16 v12, 0xff

    const/16 v13, 0x40

    const/4 v14, 0x0

    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    .line 442
    invoke-virtual {v1, v7, v9, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    const-string v15, ""

    .line 441
    invoke-virtual/range {v8 .. v16}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 447
    :cond_f
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_10

    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    if-gtz v2, :cond_10

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 448
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_10

    .line 450
    iget v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    .line 451
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 454
    :cond_10
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-nez v2, :cond_11

    .line 456
    iput-object v6, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 457
    invoke-direct {v1, v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel(I)V

    .line 459
    :cond_11
    iget v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAIDInUse:I

    if-ne v2, v8, :cond_14

    .line 460
    iget-boolean v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mCheckedRules:Z

    if-eqz v2, :cond_12

    .line 461
    invoke-direct {v1, v8, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    return-void

    :cond_12
    const-string v2, "No ARA, try ARF next."

    .line 465
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 466
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_13

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 467
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v2, v3, :cond_13

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No ARA due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateStatusMessage(Ljava/lang/String;)V

    .line 473
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccPkcs15;

    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 474
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;-><init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    :cond_14
    :goto_6
    return-void
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
