.class public Lcom/android/settings/nfc/NfcPaymentPreference;
.super Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.source "NfcPaymentPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/nfc/NfcPaymentPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->a:Lcom/android/settings/nfc/NfcPaymentPreference$a;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1, p2}, Lcom/android/settings/nfc/NfcPaymentPreference$a;->onPrepareDialogBuilder(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->a:Lcom/android/settings/nfc/NfcPaymentPreference$a;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$a;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    :cond_0
    return-void
.end method
