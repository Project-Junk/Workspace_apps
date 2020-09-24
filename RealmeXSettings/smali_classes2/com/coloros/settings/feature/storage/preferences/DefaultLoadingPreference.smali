.class public Lcom/coloros/settings/feature/storage/preferences/DefaultLoadingPreference;
.super Landroidx/preference/Preference;
.source "DefaultLoadingPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/storage/preferences/DefaultLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/storage/preferences/DefaultLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d0266

    .line 41
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/DefaultLoadingPreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/DefaultLoadingPreference;->setSelectable(Z)V

    return-void
.end method
