.class public Lcom/coloros/settings/feature/homepage/ColorTopSecuritySettings;
.super Lcom/coloros/settings/feature/security/ColorSecuritySettings;
.source "ColorTopSecuritySettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/ColorTopSecuritySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const v0, 0x7f1213f4

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setTitle(I)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/ColorTopSecuritySettings;->setTitle(I)V

    return-void
.end method
