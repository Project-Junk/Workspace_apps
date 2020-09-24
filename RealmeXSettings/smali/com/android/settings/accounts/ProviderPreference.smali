.class public Lcom/android/settings/accounts/ProviderPreference;
.super Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;
.source "ProviderPreference.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorRestrictedPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d00b5

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 48
    invoke-virtual {p0, p4}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderPreference;->b(Z)V

    return-void
.end method
