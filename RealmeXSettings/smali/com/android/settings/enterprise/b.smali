.class public abstract Lcom/android/settings/enterprise/b;
.super Lcom/android/settingslib/core/a;
.source "AdminActionPreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field protected final a:Lcom/android/settings/enterprise/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/b;->a:Lcom/android/settings/enterprise/o;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/Date;
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/enterprise/b;->a()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/enterprise/b;->mContext:Landroid/content/Context;

    const v1, 0x7f12091d

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/b;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const/16 v0, 0x11

    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
