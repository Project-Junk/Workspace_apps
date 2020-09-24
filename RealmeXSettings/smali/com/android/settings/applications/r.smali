.class public final Lcom/android/settings/applications/r;
.super Ljava/lang/Object;
.source "ApplicationFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/applications/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/r$c;,
        Lcom/android/settings/applications/r$d;,
        Lcom/android/settings/applications/r$a;,
        Lcom/android/settings/applications/r$b;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Landroid/content/pm/IPackageManager;

.field private final d:Landroid/app/admin/DevicePolicyManager;

.field private final e:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/applications/r;->b:Landroid/content/pm/PackageManager;

    .line 54
    iput-object p3, p0, Lcom/android/settings/applications/r;->c:Landroid/content/pm/IPackageManager;

    .line 55
    iput-object p4, p0, Lcom/android/settings/applications/r;->d:Landroid/app/admin/DevicePolicyManager;

    .line 56
    iget-object p1, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/r;->e:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final a(I[Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/z;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 103
    iget-object v2, p0, Lcom/android/settings/applications/r;->e:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 104
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    .line 106
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/applications/r;->c:Landroid/content/pm/IPackageManager;

    .line 107
    invoke-interface {v6, v5, p1}, Landroid/content/pm/IPackageManager;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    .line 110
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    .line 111
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    .line 112
    :cond_0
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_1

    .line 113
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 114
    :cond_1
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v7, :cond_2

    .line 115
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 118
    new-instance v5, Lcom/android/settings/applications/z;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v2, v6}, Lcom/android/settings/applications/z;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 119
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1156
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1159
    iget-object v2, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    const v3, 0x7f1205f8

    .line 1160
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1159
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v2, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    const v3, 0x7f1205f6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v1, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    const-string v2, "location"

    .line 147
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 148
    invoke-virtual {v1}, Landroid/location/LocationManager;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 150
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/android/settings/applications/q$a;)V
    .locals 3

    .line 72
    new-instance v0, Lcom/android/settings/applications/r$d;

    iget-object v1, p0, Lcom/android/settings/applications/r;->b:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/r;->e:Landroid/os/UserManager;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/applications/r$d;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;Lcom/android/settings/applications/q$a;)V

    const/4 p1, 0x0

    .line 74
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/r$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(ZLcom/android/settings/applications/q$b;)V
    .locals 3

    .line 61
    new-instance v0, Lcom/android/settings/applications/r$b;

    iget-object v1, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/r;->b:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/applications/r$b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/q$b;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 64
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/r$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/applications/r$b;->a()V

    return-void
.end method

.method public final a([Ljava/lang/String;Lcom/android/settings/applications/q$a;)V
    .locals 8

    .line 93
    new-instance v7, Lcom/android/settings/applications/r$c;

    iget-object v2, p0, Lcom/android/settings/applications/r;->b:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/r;->c:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/r;->d:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/r;->e:Landroid/os/UserManager;

    move-object v0, v7

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/r$c;-><init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/settings/applications/q$a;)V

    const/4 p1, 0x0

    .line 96
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v7, p1}, Lcom/android/settings/applications/r$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a([Ljava/lang/String;ZLcom/android/settings/applications/q$b;)V
    .locals 8

    .line 80
    new-instance v7, Lcom/android/settings/applications/r$a;

    iget-object v1, p0, Lcom/android/settings/applications/r;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/r;->b:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/r;->c:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/r;->d:Landroid/app/admin/DevicePolicyManager;

    move-object v0, v7

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/r$a;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/applications/q$b;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 84
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v7, p1}, Lcom/android/settings/applications/r$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 86
    :cond_0
    invoke-virtual {v7}, Lcom/android/settings/applications/r$a;->a()V

    return-void
.end method
