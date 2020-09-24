.class public final Lcom/coloros/settings/feature/othersettings/recover/d;
.super Ljava/lang/Object;
.source "ClearContactsStrategy.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/recover/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/recover/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p2, 0x7f1204fe

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ClearContactsStrategy"

    const-string v1, "process: start clear contacts"

    .line 60
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clear_contact"

    .line 61
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "activity"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/d$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/recover/d$a;-><init>(Lcom/coloros/settings/feature/othersettings/recover/d;)V

    const-string v1, "com.android.providers.contacts"

    invoke-virtual {p1, v1, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "ClearContactsStrategy"

    return-object v0
.end method

.method public final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204ff

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204ff

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
