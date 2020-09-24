.class public Lcom/android/internal/telephony/DebugService;
.super Ljava/lang/Object;
.source "DebugService.java"


# static fields
.field private static TAG:Ljava/lang/String; = "DebugService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DebugService:"

    .line 39
    invoke-static {v0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .line 61
    sget-object v0, Lcom/android/internal/telephony/DebugService;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DebugService "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_1

    .line 46
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 47
    aget-object v1, p3, v0

    const-string v2, "--metrics"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p3, v0

    const-string v2, "--metricsproto"

    .line 48
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v0, p3, v0

    const-string v1, "--metricsprototext"

    .line 49
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Collecting telephony metrics.."

    .line 51
    invoke-static {v0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "Dump telephony."

    .line 56
    invoke-static {v0}, Lcom/android/internal/telephony/DebugService;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/PhoneFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
