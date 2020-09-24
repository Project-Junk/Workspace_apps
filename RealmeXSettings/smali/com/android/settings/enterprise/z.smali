.class public final Lcom/android/settings/enterprise/z;
.super Lcom/android/settings/enterprise/b;
.source "SecurityLogsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/settings/enterprise/z;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->e()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "security_logs"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/settings/enterprise/z;->a:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/enterprise/z;->a:Lcom/android/settings/enterprise/o;

    .line 36
    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->e()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
