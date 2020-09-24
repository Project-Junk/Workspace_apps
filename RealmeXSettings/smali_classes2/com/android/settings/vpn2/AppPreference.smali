.class public Lcom/android/settings/vpn2/AppPreference;
.super Lcom/android/settings/vpn2/ManageablePreference;
.source "AppPreference.java"


# static fields
.field public static final a:I


# instance fields
.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget v0, Lcom/android/settings/vpn2/AppPreference;->d:I

    sput v0, Lcom/android/settings/vpn2/AppPreference;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-super {p0, p2}, Lcom/android/settings/vpn2/ManageablePreference;->a(I)V

    .line 45
    iput-object p3, p0, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->d()Landroid/content/Context;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    if-nez v0, :cond_1

    .line 66
    :try_start_2
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    :catch_1
    :cond_1
    iput-object p3, p0, Lcom/android/settings/vpn2/AppPreference;->c:Ljava/lang/String;

    .line 73
    iget-object p1, p0, Lcom/android/settings/vpn2/AppPreference;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private d()Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lcom/android/settings/vpn2/AppPreference;->g:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 96
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppPreference;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2

    .line 101
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 104
    iget v0, p1, Lcom/android/settings/vpn2/AppPreference;->f:I

    iget v1, p0, Lcom/android/settings/vpn2/AppPreference;->f:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/AppPreference;->c:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/vpn2/AppPreference;->b:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget v0, p0, Lcom/android/settings/vpn2/AppPreference;->g:I

    iget p1, p1, Lcom/android/settings/vpn2/AppPreference;->g:I

    sub-int/2addr v0, p1

    :cond_0
    return v0

    .line 110
    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_2

    .line 112
    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 113
    invoke-virtual {p1, p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 115
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/AppPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method
