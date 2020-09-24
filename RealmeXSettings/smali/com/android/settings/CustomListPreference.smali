.class public Lcom/android/settings/CustomListPreference;
.super Lcom/coloros/settings/widget/preference/ColorListPreference;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;,
        Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/ColorListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected a(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
