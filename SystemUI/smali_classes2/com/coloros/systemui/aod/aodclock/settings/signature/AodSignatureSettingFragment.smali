.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "AodSignatureSettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment$CheckedItemAdapter;
    }
.end annotation


# instance fields
.field private KEY_EDIT_PREF:Ljava/lang/String;

.field private KEY_TYPEFACE_PREF:Ljava/lang/String;

.field private mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

.field private mEditPrefence:Landroidx/preference/Preference;

.field private mFontTypeFaces:[Ljava/lang/String;

.field private mFontTypefaceDialog:Lcolor/support/v7/app/AlertDialog;

.field private mTypefacePrefence:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 42
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const-string v0, "key_font_typeface"

    .line 43
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->KEY_TYPEFACE_PREF:Ljava/lang/String;

    const-string v0, "key_text"

    .line 44
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->KEY_EDIT_PREF:Ljava/lang/String;

    const-string v0, "Gilroy Bold"

    const-string v1, "Gilroy Light"

    const-string v2, "Gilroy Medium"

    const-string v3, "Gilroy SemiBold"

    .line 55
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypeFaces:[Ljava/lang/String;

    return-void
.end method

.method public static newInstance()Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;
    .locals 1

    .line 51
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onPreferenceClick$0$AodSignatureSettingFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->setPreviewFontTypeface(I)V

    .line 80
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->notifyDataChange()V

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mTypefacePrefence:Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypeFaces:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewFontTypefaceIndex()I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypefaceDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onPreferenceClick$1$AodSignatureSettingFragment(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->getInputText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->setPreviewSignatureText(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->notifyDataChange()V

    .line 95
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditPrefence:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewSignatureText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->dismiss()V

    return-void
.end method

.method protected onBindPreferences()V
    .locals 4

    .line 64
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onBindPreferences()V

    .line 65
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->KEY_TYPEFACE_PREF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mTypefacePrefence:Landroidx/preference/Preference;

    .line 66
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mTypefacePrefence:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypeFaces:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewFontTypefaceIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mTypefacePrefence:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->KEY_EDIT_PREF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditPrefence:Landroidx/preference/Preference;

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditPrefence:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewSignatureText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditPrefence:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const/high16 p1, 0x7f150000

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mTypefacePrefence:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 76
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment$CheckedItemAdapter;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0048

    const v3, 0x1020014

    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypeFaces:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewFontTypefaceIndex()I

    move-result v1

    new-instance v2, Lcom/coloros/systemui/aod/aodclock/settings/signature/-$$Lambda$AodSignatureSettingFragment$g6hd4nP4kky5EFRrF_vt0JglOS8;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/-$$Lambda$AodSignatureSettingFragment$g6hd4nP4kky5EFRrF_vt0JglOS8;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;)V

    .line 77
    invoke-virtual {p1, v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypefaceDialog:Lcolor/support/v7/app/AlertDialog;

    .line 85
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypefaceDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditPrefence:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_1

    .line 87
    new-instance p1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    .line 88
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    const v0, 0x7f110147

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->setTitle(I)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    .line 89
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewSignatureText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->setText(Ljava/lang/String;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    .line 90
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    const v0, 0x7f110146

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->setHint(I)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    .line 91
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/-$$Lambda$AodSignatureSettingFragment$ljrCPzA7sby2dPCe3K3ytA22m94;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/-$$Lambda$AodSignatureSettingFragment$ljrCPzA7sby2dPCe3K3ytA22m94;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->setEditSignatureDialogListener(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog$EditSignatureDialogListener;)V

    .line 99
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->create()V

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->show()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onStop()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypefaceDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypefaceDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mFontTypefaceDialog:Lcolor/support/v7/app/AlertDialog;

    .line 112
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    invoke-virtual {v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;->dismiss()V

    .line 115
    :cond_1
    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/AodSignatureSettingFragment;->mEditDialog:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/EditSignatureDialog;

    return-void
.end method
