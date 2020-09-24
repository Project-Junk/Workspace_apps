.class public Lcom/android/settingslib/CustomDialogPreferenceCompat;
.super Landroidx/preference/DialogPreference;
.source "CustomDialogPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

.field private b:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/CustomDialogPreferenceCompat;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/android/settingslib/CustomDialogPreferenceCompat;->b:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/CustomDialogPreferenceCompat;Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/android/settingslib/CustomDialogPreferenceCompat;->a:Lcom/android/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

    return-void
.end method
