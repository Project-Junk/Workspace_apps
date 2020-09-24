.class public Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;,
        Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final EVENT_ON_FILTER_COMPLETE_NOT_CALLED:I = 0x1

.field public static final FILTER_COMPLETE_TIMEOUT_MS:I = 0x927c0


# instance fields
.field private final mCallbackTimeoutHandler:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

.field private final mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

.field private final mContext:Landroid/content/Context;

.field private final mDestPort:I

.field private mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mLogTag:Ljava/lang/String;

.field private final mPduFormat:Ljava/lang/String;

.field private final mPdus:[[B

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;[[BILjava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;Ljava/lang/String;Landroid/util/LocalLog;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPdus:[[B

    .line 82
    iput p4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mDestPort:I

    .line 83
    iput-object p5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPduFormat:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    .line 85
    iput-object p7, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    .line 86
    new-instance p1, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCallbackTimeoutHandler:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    .line 87
    iput-object p8, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCarrierServicesSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCallbackTimeoutHandler:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/util/LocalLog;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    return-object p0
.end method

.method private filterWithPackage(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)V
    .locals 4

    .line 153
    new-instance v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPdus:[[B

    iget v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mDestPort:I

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPduFormat:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;[[BILjava/lang/String;)V

    .line 154
    new-instance v1, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Landroid/telephony/CarrierMessagingServiceManager;)V

    .line 156
    invoke-static {p2, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->access$000(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    .line 158
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    return-void
.end method

.method private getCarrierAppPackageForFiltering()Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    const-string v1, "android.service.carrier.CarrierMessagingService"

    if-eqz v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    const-string v2, "UiccCard not initialized."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const-string v1, "Found carrier package."

    .line 134
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_2

    const-string v0, "Found system package."

    .line 144
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    .line 145
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 147
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find carrier package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nor systemPackages: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->logv(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 168
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_1

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t get service information from "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, "android.permission.CARRIER_FILTER_SMS"

    .line 173
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 175
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSystemAppForIntent: added package "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public filter()Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->getCarrierAppPackageForFiltering()Ljava/util/Optional;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/CarrierSmsUtils;->getCarrierImsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    if-nez v0, :cond_4

    .line 112
    new-instance v0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;-><init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mCallbackTimeoutHandler:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    const/4 v2, 0x1

    .line 115
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x927c0

    .line 114
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->filterWithPackage(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    const-string v0, "Cannot reuse the same CarrierServiceSmsFilter object for filtering."

    .line 108
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->loge(Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
