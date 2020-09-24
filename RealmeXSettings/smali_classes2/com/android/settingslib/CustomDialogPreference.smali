.class public Lcom/android/settingslib/CustomDialogPreference;
.super Landroidx/preference/DialogPreference;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

.field private b:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/CustomDialogPreference;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 1087
    iget-object p0, p0, Lcom/android/settingslib/CustomDialogPreference;->b:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/CustomDialogPreference;Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/android/settingslib/CustomDialogPreference;->a:Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    return-void
.end method
