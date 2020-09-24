.class public Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.super Landroidx/preference/EditTextPreference;
.source "CustomEditTextPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/CustomEditTextPreferenceCompat;Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->a:Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const v0, 0x1020003

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/16 v0, 0x4001

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 88
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/widget/EditText;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->a:Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1020003

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Landroid/app/Dialog;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->a:Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
