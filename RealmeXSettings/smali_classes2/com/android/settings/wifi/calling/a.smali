.class public abstract Lcom/android/settings/wifi/calling/a;
.super Ljava/lang/Object;
.source "DisclaimerItem.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:I

.field private final c:Landroid/telephony/CarrierConfigManager;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/calling/a;->a:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/android/settings/wifi/calling/a;->b:I

    .line 41
    iget-object p1, p0, Lcom/android/settings/wifi/calling/a;->a:Landroid/content/Context;

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/a;->c:Landroid/telephony/CarrierConfigManager;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/android/settings/wifi/calling/a;->a:Landroid/content/Context;

    const-string v2, "wfc_disclaimer_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1135
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/wifi/calling/a;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/a;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/wifi/calling/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method b()Z
    .locals 4

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 2121
    iget-object v1, p0, Lcom/android/settings/wifi/calling/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "wfc_disclaimer_prefs"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/wifi/calling/a;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shouldShow: false due to a user has already agreed."

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/a;->a(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v0, "shouldShow: true"

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final c()Landroid/os/PersistableBundle;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/calling/a;->c:Landroid/telephony/CarrierConfigManager;

    iget v1, p0, Lcom/android/settings/wifi/calling/a;->b:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 78
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d()I
.end method

.method protected abstract e()I
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/lang/String;
.end method
