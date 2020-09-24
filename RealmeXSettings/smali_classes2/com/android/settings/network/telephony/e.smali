.class public final Lcom/android/settings/network/telephony/e;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/e$c;,
        Lcom/android/settings/network/telephony/e$b;,
        Lcom/android/settings/network/telephony/e$a;
    }
.end annotation


# static fields
.field static final a:Landroid/telephony/NetworkScanRequest;


# instance fields
.field final b:Landroid/telephony/TelephonyManager;

.field final c:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field final d:Ljava/util/concurrent/Executor;

.field e:Landroid/telephony/NetworkScan;

.field f:Lcom/google/a/d/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/d/a/f<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/android/settings/network/telephony/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 117
    new-instance v8, Landroid/telephony/NetworkScanRequest;

    const/4 v0, 0x3

    new-array v2, v0, [Landroid/telephony/RadioAccessSpecifier;

    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v4}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    const/4 v5, 0x0

    aput-object v1, v2, v5

    new-instance v1, Landroid/telephony/RadioAccessSpecifier;

    invoke-direct {v1, v0, v4, v4}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    aput-object v1, v2, v3

    new-instance v0, Landroid/telephony/RadioAccessSpecifier;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v4, v4}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    aput-object v0, v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/16 v4, 0x12c

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/NetworkScanRequest;-><init>(I[Landroid/telephony/RadioAccessSpecifier;IIZILjava/util/ArrayList;)V

    sput-object v8, Lcom/android/settings/network/telephony/e;->a:Landroid/telephony/NetworkScanRequest;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/e$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/settings/network/telephony/e;->b:Landroid/telephony/TelephonyManager;

    .line 155
    iput-object p2, p0, Lcom/android/settings/network/telephony/e;->g:Lcom/android/settings/network/telephony/e$a;

    .line 156
    new-instance p1, Lcom/android/settings/network/telephony/e$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/e$b;-><init>(Lcom/android/settings/network/telephony/e;B)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/e;->c:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 157
    iput-object p3, p0, Lcom/android/settings/network/telephony/e;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x2710

    return p0
.end method

.method static synthetic a(Lcom/android/settings/network/telephony/e;)V
    .locals 0

    .line 1218
    iget-object p0, p0, Lcom/android/settings/network/telephony/e;->g:Lcom/android/settings/network/telephony/e$a;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/e$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/network/telephony/e;I)V
    .locals 0

    .line 1222
    iget-object p0, p0, Lcom/android/settings/network/telephony/e;->g:Lcom/android/settings/network/telephony/e$a;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/e$a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/network/telephony/e;Ljava/util/List;)V
    .locals 0

    .line 1214
    iget-object p0, p0, Lcom/android/settings/network/telephony/e;->g:Lcom/android/settings/network/telephony/e$a;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/e$a;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/settings/network/telephony/e;->e:Landroid/telephony/NetworkScan;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/telephony/NetworkScan;->stopScan()V

    .line 204
    iput-object v1, p0, Lcom/android/settings/network/telephony/e;->f:Lcom/google/a/d/a/f;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/e;->f:Lcom/google/a/d/a/f;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 208
    invoke-interface {v0, v2}, Lcom/google/a/d/a/f;->cancel(Z)Z

    .line 209
    iput-object v1, p0, Lcom/android/settings/network/telephony/e;->f:Lcom/google/a/d/a/f;

    :cond_1
    return-void
.end method
