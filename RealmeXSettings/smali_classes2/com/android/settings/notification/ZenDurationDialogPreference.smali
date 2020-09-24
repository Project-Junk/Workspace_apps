.class public Lcom/android/settings/notification/ZenDurationDialogPreference;
.super Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.source "ZenDurationDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 48
    invoke-super {p0, p1, p2}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    new-instance p2, Lcom/android/settingslib/notification/b;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenDurationDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settingslib/notification/b;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p2, p1}, Lcom/android/settingslib/notification/b;->a(Landroidx/appcompat/app/AlertDialog$Builder;)V

    return-void
.end method
