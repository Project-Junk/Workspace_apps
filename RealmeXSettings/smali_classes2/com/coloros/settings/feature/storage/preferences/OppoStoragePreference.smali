.class public Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;
.super Lcom/coloros/settings/widget/preference/SettingsColorJumpIconPreference;
.source "OppoStoragePreference.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/SettingsColorJumpIconPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d00b0

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingsColorJumpIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d00b0

    .line 38
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    .line 40
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->b(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingsColorJumpIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d00b0

    .line 31
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x2

    .line 33
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/preferences/OppoStoragePreference;->b(I)V

    return-void
.end method
