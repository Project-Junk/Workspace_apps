.class public Lcom/coloros/settings/feature/security/controller/ColorShowPasswordPreferenceController;
.super Lcom/android/settings/security/ShowPasswordPreferenceController;
.source "ColorShowPasswordPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/security/ShowPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)Z
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/security/ShowPasswordPreferenceController;->setChecked(Z)Z

    move-result p1

    return p1
.end method
