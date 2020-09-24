.class final Lcom/android/settings/network/telephony/e$c;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/a/d/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/d/a/j<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;Lcom/google/a/d/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/google/a/d/a/j<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/android/settings/network/telephony/e$c;->b:Landroid/telephony/TelephonyManager;

    .line 267
    iput-object p2, p0, Lcom/android/settings/network/telephony/e$c;->a:Lcom/google/a/d/a/j;

    return-void
.end method

.method private static synthetic a(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;
    .locals 11

    .line 1138
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "^[0-9]{5,6}$"

    .line 1141
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1142
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v1

    move-object v8, v7

    .line 1145
    :goto_0
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    .line 1152
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 1153
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance p0, Landroid/telephony/CellInfoGsm;

    invoke-direct {p0}, Landroid/telephony/CellInfoGsm;-><init>()V

    .line 1156
    invoke-virtual {p0, v0}, Landroid/telephony/CellInfoGsm;->setCellIdentity(Landroid/telephony/CellIdentityGsm;)V

    return-object p0
.end method

.method public static synthetic lambda$auWOcKs99K5n76jgUxegPmn2wK4(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/e$c;->a(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/android/settings/network/telephony/e$c;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAvailableNetworks()Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellNetworkScanResult;->getStatus()I

    move-result v1

    const-string v2, "NetworkScanHelper"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellNetworkScanResult;->getOperators()Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/-$$Lambda$e$c$auWOcKs99K5n76jgUxegPmn2wK4;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$e$c$auWOcKs99K5n76jgUxegPmn2wK4;

    .line 276
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 278
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sync network scan completed, cellInfos = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Lcom/android/settings/network/telephony/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/android/settings/network/telephony/e$c;->a:Lcom/google/a/d/a/j;

    invoke-virtual {v1, v0}, Lcom/google/a/d/a/j;->a(Ljava/lang/Object;)Z

    return-void

    .line 283
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    .line 284
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellNetworkScanResult;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/e;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/network/telephony/e$c;->a:Lcom/google/a/d/a/j;

    invoke-virtual {v0, v1}, Lcom/google/a/d/a/j;->a(Ljava/lang/Throwable;)Z

    .line 286
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sync network scan error, ex = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
