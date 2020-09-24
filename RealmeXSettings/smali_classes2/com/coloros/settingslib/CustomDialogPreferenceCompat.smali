.class public Lcom/coloros/settingslib/CustomDialogPreferenceCompat;
.super Landroidx/preference/DialogPreference;
.source "CustomDialogPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private a:Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

.field private b:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

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

.method static synthetic a(Lcom/coloros/settingslib/CustomDialogPreferenceCompat;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->b:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settingslib/CustomDialogPreferenceCompat;Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a:Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method public final c()Landroid/app/Dialog;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/coloros/settingslib/CustomDialogPreferenceCompat;->a:Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/settingslib/CustomDialogPreferenceCompat$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method
