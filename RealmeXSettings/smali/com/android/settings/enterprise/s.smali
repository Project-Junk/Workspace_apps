.class public final Lcom/android/settings/enterprise/s;
.super Lcom/android/settingslib/core/a;
.source "EnterpriseSetDefaultAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settings/applications/q;

.field private final b:Lcom/android/settings/users/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/s;->a:Lcom/android/settings/applications/q;

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/s;->b:Lcom/android/settings/users/h;

    return-void
.end method

.method private a()I
    .locals 10

    .line 63
    iget-object v0, p0, Lcom/android/settings/enterprise/s;->b:Lcom/android/settings/users/h;

    invoke-interface {v0}, Lcom/android/settings/users/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 64
    invoke-static {}, Lcom/android/settings/applications/s;->values()[Lcom/android/settings/applications/s;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v7, v4, v2

    .line 65
    iget-object v8, p0, Lcom/android/settings/enterprise/s;->a:Lcom/android/settings/applications/q;

    .line 66
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 1049
    iget-object v7, v7, Lcom/android/settings/applications/s;->h:[Landroid/content/Intent;

    .line 66
    invoke-interface {v8, v9, v7}, Lcom/android/settings/applications/q;->a(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    .line 67
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "number_enterprise_set_default_apps"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/enterprise/s;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 46
    invoke-direct {p0}, Lcom/android/settings/enterprise/s;->a()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/settings/enterprise/s;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f10001c

    .line 47
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
