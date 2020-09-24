.class public final Lcom/android/settings/datausage/e;
.super Ljava/lang/Object;
.source "DataUsageInfoController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settingslib/net/a$a;Landroid/net/NetworkPolicy;)V
    .locals 4

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 33
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    iput-wide v0, p0, Lcom/android/settingslib/net/a$a;->e:J

    .line 35
    :cond_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 36
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    iput-wide v0, p0, Lcom/android/settingslib/net/a$a;->d:J

    :cond_2
    :goto_0
    return-void
.end method
