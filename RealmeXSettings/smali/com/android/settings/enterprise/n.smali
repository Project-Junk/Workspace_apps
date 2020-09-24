.class public final Lcom/android/settings/enterprise/n;
.super Lcom/android/settingslib/core/a;
.source "EnterpriseInstalledPackagesPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/applications/q;

.field private final b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/n;->a:Lcom/android/settings/applications/q;

    .line 38
    iput-boolean p2, p0, Lcom/android/settings/enterprise/n;->b:Z

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/n;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10001d

    new-array v4, v1, [Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 50
    invoke-virtual {v2, v3, p2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 55
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private static synthetic a([Ljava/lang/Boolean;I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 73
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v0

    return-void
.end method

.method public static synthetic lambda$Pdhb16MmZYTQU8JBpeCsAJi16IE([Ljava/lang/Boolean;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/enterprise/n;->a([Ljava/lang/Boolean;I)V

    return-void
.end method

.method public static synthetic lambda$xluy0j48HB6URopipzeKGi8kvO0(Lcom/android/settings/enterprise/n;Landroidx/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/enterprise/n;->a(Landroidx/preference/Preference;I)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "number_enterprise_installed_packages"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 4

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/enterprise/n;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 71
    :cond_0
    new-array v0, v1, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 72
    iget-object v1, p0, Lcom/android/settings/enterprise/n;->a:Lcom/android/settings/applications/q;

    new-instance v3, Lcom/android/settings/enterprise/-$$Lambda$n$Pdhb16MmZYTQU8JBpeCsAJi16IE;

    invoke-direct {v3, v0}, Lcom/android/settings/enterprise/-$$Lambda$n$Pdhb16MmZYTQU8JBpeCsAJi16IE;-><init>([Ljava/lang/Boolean;)V

    invoke-interface {v1, v2, v3}, Lcom/android/settings/applications/q;->a(ZLcom/android/settings/applications/q$b;)V

    .line 74
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/enterprise/n;->a:Lcom/android/settings/applications/q;

    new-instance v1, Lcom/android/settings/enterprise/-$$Lambda$n$xluy0j48HB6URopipzeKGi8kvO0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/enterprise/-$$Lambda$n$xluy0j48HB6URopipzeKGi8kvO0;-><init>(Lcom/android/settings/enterprise/n;Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/settings/applications/q;->a(ZLcom/android/settings/applications/q$b;)V

    return-void
.end method
