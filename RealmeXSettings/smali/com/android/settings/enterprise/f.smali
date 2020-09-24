.class public abstract Lcom/android/settings/enterprise/f;
.super Lcom/android/settingslib/core/a;
.source "AdminGrantedPermissionsPreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Lcom/android/settings/applications/q;

.field private final c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z[Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p3, p0, Lcom/android/settings/enterprise/f;->a:[Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p3

    .line 41
    invoke-virtual {p3, p1}, Lcom/android/settings/overlay/b;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/f;->b:Lcom/android/settings/applications/q;

    .line 42
    iput-boolean p2, p0, Lcom/android/settings/enterprise/f;->c:Z

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/enterprise/f;->d:Z

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;I)V
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/enterprise/f;->d:Z

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/f;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10001d

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 54
    invoke-virtual {v1, v2, p2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    iput-boolean v3, p0, Lcom/android/settings/enterprise/f;->d:Z

    .line 59
    :goto_0
    iget-boolean p2, p0, Lcom/android/settings/enterprise/f;->d:Z

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

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

    .line 79
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v0

    return-void
.end method

.method public static synthetic lambda$MIMB-DZvpxXWbSAiaFvuRyH3Deo([Ljava/lang/Boolean;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/enterprise/f;->a([Ljava/lang/Boolean;I)V

    return-void
.end method

.method public static synthetic lambda$UXLLANc-rMTqxbziqmHQETWX5M4(Lcom/android/settings/enterprise/f;Landroidx/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/enterprise/f;->a(Landroidx/preference/Preference;I)V

    return-void
.end method


# virtual methods
.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/enterprise/f;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/enterprise/f;->d:Z

    if-nez v0, :cond_1

    return v1

    .line 92
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public isAvailable()Z
    .locals 5

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/enterprise/f;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    new-array v0, v1, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 78
    iget-object v1, p0, Lcom/android/settings/enterprise/f;->b:Lcom/android/settings/applications/q;

    iget-object v3, p0, Lcom/android/settings/enterprise/f;->a:[Ljava/lang/String;

    new-instance v4, Lcom/android/settings/enterprise/-$$Lambda$f$MIMB-DZvpxXWbSAiaFvuRyH3Deo;

    invoke-direct {v4, v0}, Lcom/android/settings/enterprise/-$$Lambda$f$MIMB-DZvpxXWbSAiaFvuRyH3Deo;-><init>([Ljava/lang/Boolean;)V

    invoke-interface {v1, v3, v2, v4}, Lcom/android/settings/applications/q;->a([Ljava/lang/String;ZLcom/android/settings/applications/q$b;)V

    .line 80
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/enterprise/f;->d:Z

    .line 81
    iget-boolean v0, p0, Lcom/android/settings/enterprise/f;->d:Z

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/settings/enterprise/f;->b:Lcom/android/settings/applications/q;

    iget-object v1, p0, Lcom/android/settings/enterprise/f;->a:[Ljava/lang/String;

    new-instance v2, Lcom/android/settings/enterprise/-$$Lambda$f$UXLLANc-rMTqxbziqmHQETWX5M4;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/-$$Lambda$f$UXLLANc-rMTqxbziqmHQETWX5M4;-><init>(Lcom/android/settings/enterprise/f;Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/android/settings/applications/q;->a([Ljava/lang/String;ZLcom/android/settings/applications/q$b;)V

    return-void
.end method
